-- LawBridge self-service auth repair
-- Run this once in Supabase SQL Editor. It makes sign-up/sign-in create or repair
-- the user's profile and role automatically, so users do not need to be added manually.

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  role_count INT;
  assigned_role public.app_role;
BEGIN
  INSERT INTO public.profiles (id, full_name, email)
  VALUES (
    NEW.id,
    COALESCE(
      NEW.raw_user_meta_data->>'full_name',
      NEW.raw_user_meta_data->>'name',
      split_part(NEW.email, '@', 1)
    ),
    NEW.email
  )
  ON CONFLICT (id) DO UPDATE
  SET
    email = EXCLUDED.email,
    full_name = COALESCE(EXCLUDED.full_name, public.profiles.full_name);

  IF NOT EXISTS (SELECT 1 FROM public.user_roles WHERE user_id = NEW.id) THEN
    SELECT COUNT(*) INTO role_count FROM public.user_roles;
    assigned_role := CASE WHEN role_count = 0 THEN 'admin'::public.app_role ELSE 'student'::public.app_role END;
    INSERT INTO public.user_roles (user_id, role)
    VALUES (NEW.id, assigned_role)
    ON CONFLICT (user_id, role) DO NOTHING;
  END IF;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

CREATE OR REPLACE FUNCTION public.ensure_current_user_profile(_full_name TEXT DEFAULT NULL)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  current_user_id UUID := auth.uid();
  current_email TEXT;
  current_name TEXT;
  role_count INT;
  assigned_role public.app_role;
BEGIN
  IF current_user_id IS NULL THEN
    RAISE EXCEPTION 'Not authenticated';
  END IF;

  SELECT
    email,
    COALESCE(
      NULLIF(_full_name, ''),
      raw_user_meta_data->>'full_name',
      raw_user_meta_data->>'name',
      split_part(email, '@', 1)
    )
  INTO current_email, current_name
  FROM auth.users
  WHERE id = current_user_id;

  INSERT INTO public.profiles (id, full_name, email)
  VALUES (current_user_id, current_name, current_email)
  ON CONFLICT (id) DO UPDATE
  SET
    email = EXCLUDED.email,
    full_name = COALESCE(EXCLUDED.full_name, public.profiles.full_name);

  IF NOT EXISTS (SELECT 1 FROM public.user_roles WHERE user_id = current_user_id) THEN
    SELECT COUNT(*) INTO role_count FROM public.user_roles;
    assigned_role := CASE WHEN role_count = 0 THEN 'admin'::public.app_role ELSE 'student'::public.app_role END;
    INSERT INTO public.user_roles (user_id, role)
    VALUES (current_user_id, assigned_role)
    ON CONFLICT (user_id, role) DO NOTHING;
  END IF;
END;
$$;

REVOKE EXECUTE ON FUNCTION public.ensure_current_user_profile(TEXT) FROM PUBLIC, anon;
GRANT EXECUTE ON FUNCTION public.ensure_current_user_profile(TEXT) TO authenticated;
