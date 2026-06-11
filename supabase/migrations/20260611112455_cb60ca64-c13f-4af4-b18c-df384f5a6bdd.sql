
-- ============ ENUMS ============
CREATE TYPE public.app_role AS ENUM ('student', 'tutor', 'admin');
CREATE TYPE public.file_type AS ENUM ('student_pack', 'exhibit', 'tutor_pack', 'answer_guide', 'other');
CREATE TYPE public.access_role AS ENUM ('student', 'tutor', 'admin');
CREATE TYPE public.progress_status AS ENUM ('not_started', 'in_progress', 'submitted', 'completed');
CREATE TYPE public.submission_status AS ENUM ('draft', 'submitted', 'reviewed');

-- ============ PROFILES ============
CREATE TABLE public.profiles (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  full_name TEXT,
  email TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE ON public.profiles TO authenticated;
GRANT ALL ON public.profiles TO service_role;
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- ============ USER ROLES ============
CREATE TABLE public.user_roles (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  role public.app_role NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (user_id, role)
);
GRANT SELECT ON public.user_roles TO authenticated;
GRANT ALL ON public.user_roles TO service_role;
ALTER TABLE public.user_roles ENABLE ROW LEVEL SECURITY;

CREATE OR REPLACE FUNCTION public.has_role(_user_id UUID, _role public.app_role)
RETURNS BOOLEAN LANGUAGE SQL STABLE SECURITY DEFINER SET search_path = public AS $$
  SELECT EXISTS (SELECT 1 FROM public.user_roles WHERE user_id = _user_id AND role = _role)
$$;

CREATE POLICY "Users see own roles" ON public.user_roles FOR SELECT TO authenticated
  USING (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'));

CREATE POLICY "Profiles: read all signed in" ON public.profiles FOR SELECT TO authenticated USING (true);
CREATE POLICY "Profiles: update own" ON public.profiles FOR UPDATE TO authenticated
  USING (auth.uid() = id) WITH CHECK (auth.uid() = id);
CREATE POLICY "Profiles: insert own" ON public.profiles FOR INSERT TO authenticated WITH CHECK (auth.uid() = id);

-- ============ SIGNUP TRIGGER ============
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$
DECLARE
  user_count INT;
BEGIN
  INSERT INTO public.profiles (id, full_name, email)
  VALUES (NEW.id, COALESCE(NEW.raw_user_meta_data->>'full_name', NEW.raw_user_meta_data->>'name', split_part(NEW.email, '@', 1)), NEW.email);

  SELECT COUNT(*) INTO user_count FROM public.profiles;
  IF user_count = 1 THEN
    INSERT INTO public.user_roles (user_id, role) VALUES (NEW.id, 'admin');
  ELSE
    INSERT INTO public.user_roles (user_id, role) VALUES (NEW.id, 'student');
  END IF;
  RETURN NEW;
END;
$$;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- ============ updated_at helper ============
CREATE OR REPLACE FUNCTION public.set_updated_at()
RETURNS TRIGGER LANGUAGE plpgsql SET search_path = public AS $$
BEGIN NEW.updated_at = now(); RETURN NEW; END;
$$;

-- ============ COURSE CATEGORIES ============
CREATE TABLE public.course_categories (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL UNIQUE,
  description TEXT,
  display_order INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.course_categories TO authenticated;
GRANT ALL ON public.course_categories TO service_role;
ALTER TABLE public.course_categories ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Categories: read all signed in" ON public.course_categories FOR SELECT TO authenticated USING (true);
CREATE POLICY "Categories: admin write" ON public.course_categories FOR ALL TO authenticated
  USING (public.has_role(auth.uid(), 'admin')) WITH CHECK (public.has_role(auth.uid(), 'admin'));

-- ============ SKILLS ============
CREATE TABLE public.skills (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  category_id UUID NOT NULL REFERENCES public.course_categories(id) ON DELETE CASCADE,
  code TEXT NOT NULL UNIQUE,
  name TEXT NOT NULL,
  description TEXT,
  display_order INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.skills TO authenticated;
GRANT ALL ON public.skills TO service_role;
ALTER TABLE public.skills ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Skills: read all signed in" ON public.skills FOR SELECT TO authenticated USING (true);
CREATE POLICY "Skills: admin write" ON public.skills FOR ALL TO authenticated
  USING (public.has_role(auth.uid(), 'admin')) WITH CHECK (public.has_role(auth.uid(), 'admin'));

-- ============ SCENARIOS ============
CREATE TABLE public.scenarios (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  skill_id UUID NOT NULL REFERENCES public.skills(id) ON DELETE CASCADE,
  code TEXT NOT NULL UNIQUE,
  title TEXT NOT NULL,
  matter_type TEXT,
  difficulty_level TEXT,
  student_role TEXT,
  recommended_time TEXT,
  task_brief TEXT,
  learning_outcomes TEXT,
  required_outputs TEXT,
  display_order INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.scenarios TO authenticated;
GRANT ALL ON public.scenarios TO service_role;
ALTER TABLE public.scenarios ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Scenarios: read all signed in" ON public.scenarios FOR SELECT TO authenticated USING (true);
CREATE POLICY "Scenarios: admin write" ON public.scenarios FOR ALL TO authenticated
  USING (public.has_role(auth.uid(), 'admin')) WITH CHECK (public.has_role(auth.uid(), 'admin'));

-- ============ SCENARIO FILES ============
CREATE TABLE public.scenario_files (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  scenario_id UUID NOT NULL REFERENCES public.scenarios(id) ON DELETE CASCADE,
  file_name TEXT NOT NULL,
  file_type public.file_type NOT NULL,
  exhibit_number INT,
  file_url TEXT,
  storage_path TEXT,
  body_md TEXT,
  access_role public.access_role NOT NULL DEFAULT 'student',
  display_order INT NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX scenario_files_scenario_idx ON public.scenario_files(scenario_id);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.scenario_files TO authenticated;
GRANT ALL ON public.scenario_files TO service_role;
ALTER TABLE public.scenario_files ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Files: role-gated read" ON public.scenario_files FOR SELECT TO authenticated USING (
  access_role = 'student'
  OR (access_role = 'tutor' AND (public.has_role(auth.uid(),'tutor') OR public.has_role(auth.uid(),'admin')))
  OR (access_role = 'admin' AND public.has_role(auth.uid(),'admin'))
);
CREATE POLICY "Files: admin write" ON public.scenario_files FOR ALL TO authenticated
  USING (public.has_role(auth.uid(), 'admin')) WITH CHECK (public.has_role(auth.uid(), 'admin'));

-- ============ PROGRESS ============
CREATE TABLE public.progress (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  scenario_id UUID NOT NULL REFERENCES public.scenarios(id) ON DELETE CASCADE,
  status public.progress_status NOT NULL DEFAULT 'not_started',
  completion_percentage INT NOT NULL DEFAULT 0,
  last_opened_at TIMESTAMPTZ,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (user_id, scenario_id)
);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.progress TO authenticated;
GRANT ALL ON public.progress TO service_role;
ALTER TABLE public.progress ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Progress: own or staff read" ON public.progress FOR SELECT TO authenticated USING (
  auth.uid() = user_id OR public.has_role(auth.uid(),'tutor') OR public.has_role(auth.uid(),'admin')
);
CREATE POLICY "Progress: own write" ON public.progress FOR INSERT TO authenticated WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Progress: own update" ON public.progress FOR UPDATE TO authenticated USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Progress: own delete" ON public.progress FOR DELETE TO authenticated USING (auth.uid() = user_id);
CREATE TRIGGER progress_updated_at BEFORE UPDATE ON public.progress FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- ============ NOTES ============
CREATE TABLE public.notes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  scenario_id UUID NOT NULL REFERENCES public.scenarios(id) ON DELETE CASCADE,
  note_content TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (user_id, scenario_id)
);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.notes TO authenticated;
GRANT ALL ON public.notes TO service_role;
ALTER TABLE public.notes ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Notes: own all" ON public.notes FOR ALL TO authenticated USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);
CREATE TRIGGER notes_updated_at BEFORE UPDATE ON public.notes FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- ============ SUBMISSIONS ============
CREATE TABLE public.submissions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  scenario_id UUID NOT NULL REFERENCES public.scenarios(id) ON DELETE CASCADE,
  submission_text TEXT,
  uploaded_file_url TEXT,
  status public.submission_status NOT NULL DEFAULT 'draft',
  submitted_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.submissions TO authenticated;
GRANT ALL ON public.submissions TO service_role;
ALTER TABLE public.submissions ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Submissions: own or staff read" ON public.submissions FOR SELECT TO authenticated USING (
  auth.uid() = user_id OR public.has_role(auth.uid(),'tutor') OR public.has_role(auth.uid(),'admin')
);
CREATE POLICY "Submissions: own insert" ON public.submissions FOR INSERT TO authenticated WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Submissions: own update" ON public.submissions FOR UPDATE TO authenticated USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Submissions: own delete" ON public.submissions FOR DELETE TO authenticated USING (auth.uid() = user_id);
CREATE TRIGGER submissions_updated_at BEFORE UPDATE ON public.submissions FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- ============ FEEDBACK ============
CREATE TABLE public.feedback (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  submission_id UUID NOT NULL REFERENCES public.submissions(id) ON DELETE CASCADE,
  tutor_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  feedback_text TEXT,
  score INT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.feedback TO authenticated;
GRANT ALL ON public.feedback TO service_role;
ALTER TABLE public.feedback ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Feedback: staff or owner read" ON public.feedback FOR SELECT TO authenticated USING (
  public.has_role(auth.uid(),'tutor') OR public.has_role(auth.uid(),'admin')
  OR EXISTS (SELECT 1 FROM public.submissions s WHERE s.id = submission_id AND s.user_id = auth.uid())
);
CREATE POLICY "Feedback: tutor write" ON public.feedback FOR INSERT TO authenticated WITH CHECK (
  tutor_id = auth.uid() AND (public.has_role(auth.uid(),'tutor') OR public.has_role(auth.uid(),'admin'))
);
CREATE POLICY "Feedback: tutor update" ON public.feedback FOR UPDATE TO authenticated USING (
  tutor_id = auth.uid() AND (public.has_role(auth.uid(),'tutor') OR public.has_role(auth.uid(),'admin'))
);

-- ============ AI FEEDBACK ============
CREATE TABLE public.ai_feedback (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  submission_id UUID NOT NULL REFERENCES public.submissions(id) ON DELETE CASCADE,
  ai_summary TEXT,
  strengths TEXT,
  improvements TEXT,
  missing_evidence TEXT,
  professionalism_notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
GRANT SELECT, INSERT, UPDATE, DELETE ON public.ai_feedback TO authenticated;
GRANT ALL ON public.ai_feedback TO service_role;
ALTER TABLE public.ai_feedback ENABLE ROW LEVEL SECURITY;
CREATE POLICY "AI feedback: staff or owner read" ON public.ai_feedback FOR SELECT TO authenticated USING (
  public.has_role(auth.uid(),'tutor') OR public.has_role(auth.uid(),'admin')
  OR EXISTS (SELECT 1 FROM public.submissions s WHERE s.id = submission_id AND s.user_id = auth.uid())
);
