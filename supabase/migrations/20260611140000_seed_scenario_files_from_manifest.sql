-- Generated from public/course-content/manifest.json
-- Clean markdown conversion: no raw HTML tables/images

CREATE UNIQUE INDEX IF NOT EXISTS scenario_files_unique_storage_path
ON public.scenario_files (scenario_id, storage_path);

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Interview Record', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 1 - Interview Record.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Endpoint Alert Summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 2 - Endpoint Alert Summary.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Data Category Snapshot', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 3 - Data Category Snapshot.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Draft Holding Statement', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 4 - Draft Holding Statement.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Insurance Policy Notice Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 5 - Insurance Policy Notice Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Management Chat Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 6 - Management Chat Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 1 - Client Call Note.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Purchase Order Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 2 - Purchase Order Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Supplier Email Chain', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 3 - Supplier Email Chain.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Warehouse Receipt', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 4 - Warehouse Receipt.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Factory Downtime Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 5 - Factory Downtime Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 6 - Draft Board Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AO/AO-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AO-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Hearing Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AO/AO-01 Student Pack/Exhibit 1 - Hearing Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AO-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Purchase Confirmation', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AO/AO-01 Student Pack/Exhibit 2 - Purchase Confirmation.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AO-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Payment and Access Log', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AO/AO-01 Student Pack/Exhibit 3 - Payment and Access Log.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AO-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Supplier Response', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AO/AO-01 Student Pack/Exhibit 4 - Supplier Response.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AO-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Terms Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AO/AO-01 Student Pack/Exhibit 5 - Terms Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AO-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Decision-Maker Questions', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AO/AO-01 Student Pack/Exhibit 6 - Decision-Maker Questions.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AO-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AO/AO-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AO-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AO/AO-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AO-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AO/AO-02 Student Pack/Exhibit 1 - Supervisor Instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AO-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Policy Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AO/AO-02 Student Pack/Exhibit 2 - Policy Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AO-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Incident Timeline', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AO/AO-02 Student Pack/Exhibit 3 - Incident Timeline.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AO-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Cybersecurity Report', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AO/AO-02 Student Pack/Exhibit 4 - Cybersecurity Report.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AO-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Insurer Reservation Letter', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AO/AO-02 Student Pack/Exhibit 5 - Insurer Reservation Letter.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AO-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Loss Summary', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AO/AO-02 Student Pack/Exhibit 6 - Loss Summary.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AO-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AO/AO-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AO-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email From VentureSpring Apps', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 1 - Instruction Email From VentureSpring Apps.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Supplier Statement', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 2 - Supplier Statement.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Launch Timeline', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 3 - Launch Timeline.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Draft Services Agreement Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 4 - Draft Services Agreement Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Investor Update Draft', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 5 - Investor Update Draft.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Complaint Snapshot', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 6 - Complaint Snapshot.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Enquiry Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 1 - Client Enquiry Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Dismissal Letter', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 2 - Dismissal Letter.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Safety Concern Email', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 3 - Safety Concern Email.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Message From Colleague', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 4 - Message From Colleague.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Employment Contract Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 5 - Employment Contract Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Client Objectives Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 6 - Client Objectives Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Board Instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 1 - Board Instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Partnership Summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 2 - Partnership Summary.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Data Flow Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 3 - Data Flow Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Marketing Slide', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 4 - Marketing Slide.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Partner Terms Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 5 - Partner Terms Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Customer Trust Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 6 - Customer Trust Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Senior Manager Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 1 - Senior Manager Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Pilot Results', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 2 - Pilot Results.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Complaint Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 3 - Complaint Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Supplier Statement', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 4 - Supplier Statement.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Pilot Agreement Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 5 - Pilot Agreement Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Reputation Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 6 - Reputation Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Buyer Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 1 - Buyer Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Term Sheet Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 2 - Term Sheet Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - IP Ownership Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 3 - IP Ownership Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Open-Source Scan', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 4 - Open-Source Scan.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Regulatory Investigation Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 5 - Regulatory Investigation Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Employment Contract Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 6 - Employment Contract Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 7 - Management Presentation Slide', 'exhibit'::public.file_type, 7, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 7 - Management Presentation Slide.md', 'student'::public.access_role, 7
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Smart Contract Summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 2 - Smart Contract Summary.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Transaction Log', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 3 - Transaction Log.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Delivery Evidence Bundle', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 4 - Delivery Evidence Bundle.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Platform Terms Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 5 - Platform Terms Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supplier Response', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 6 - Supplier Response.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 7 - Commercial Context Note', 'exhibit'::public.file_type, 7, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 7 - Commercial Context Note.md', 'student'::public.access_role, 7
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/DR/DR-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'DR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Procurement Instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/DR/DR-01 Student Pack/Exhibit 1 - Procurement Instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'DR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Supplier Proposal', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/DR/DR-01 Student Pack/Exhibit 2 - Supplier Proposal.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'DR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Terms Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/DR/DR-01 Student Pack/Exhibit 3 - Terms Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'DR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Security Schedule', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/DR/DR-01 Student Pack/Exhibit 4 - Security Schedule.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'DR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Product FAQ', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/DR/DR-01 Student Pack/Exhibit 5 - Product FAQ.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'DR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Client Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/DR/DR-01 Student Pack/Exhibit 6 - Client Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'DR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/DR/DR-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'DR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/DR/DR-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'DR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/DR/DR-02 Student Pack/Exhibit 1 - Supervisor Instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'DR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Settlement Agreement Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/DR/DR-02 Student Pack/Exhibit 2 - Settlement Agreement Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'DR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Payment Schedule', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/DR/DR-02 Student Pack/Exhibit 3 - Payment Schedule.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'DR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Confidentiality Clause', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/DR/DR-02 Student Pack/Exhibit 4 - Confidentiality Clause.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'DR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Company Information', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/DR/DR-02 Student Pack/Exhibit 5 - Company Information.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'DR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Client Email', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/DR/DR-02 Student Pack/Exhibit 6 - Client Email.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'DR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/DR/DR-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'DR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 1 - Supervisor Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Supplier Draft Clause 12', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 2 - Supplier Draft Clause 12.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Service Credit Schedule', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 3 - Service Credit Schedule.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Client Commercial Priorities', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 4 - Client Commercial Priorities.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Data Processing Annex Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 5 - Data Processing Annex Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Negotiation Position Table', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 6 - Negotiation Position Table.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Current Contract Clause', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 2 - Current Contract Clause.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - AI Tool Terms Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 3 - AI Tool Terms Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Client Concern Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 4 - Client Concern Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Internal AI Workflow', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 5 - Internal AI Workflow.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Negotiation Instructions', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 6 - Negotiation Instructions.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Research Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 1 - Research Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Incident Summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 2 - Incident Summary.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Jurisdiction and Market Snapshot', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 3 - Jurisdiction and Market Snapshot.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Draft Legal Summary From Business Team', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 4 - Draft Legal Summary From Business Team.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Data Categories', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 5 - Data Categories.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Source Quality Guide', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 6 - Source Quality Guide.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Founder Expansion Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 1 - Founder Expansion Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Business Model Summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 2 - Business Model Summary.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Proposed Operating Model', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 3 - Proposed Operating Model.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Compliance Readiness Checklist', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 4 - Compliance Readiness Checklist.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Launch Timeline', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 5 - Launch Timeline.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Research Guidance', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 6 - Supervisor Research Guidance.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 1 - Client Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Complaint Letter Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 2 - Complaint Letter Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - AI Tool Terms Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 3 - AI Tool Terms Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Prompt and Generation Log', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 4 - Prompt and Generation Log.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Campaign Timeline', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 5 - Campaign Timeline.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Public Response', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 6 - Draft Public Response.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Merchant Complaint Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 1 - Merchant Complaint Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Internal Service Log', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 2 - Internal Service Log.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Account Manager Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 3 - Account Manager Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Contract Remedy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 4 - Contract Remedy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Response From Commercial Team', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 5 - Draft Response From Commercial Team.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Customer Support Summary', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 6 - Customer Support Summary.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 1 - Supervisor Instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Renewal Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 2 - Renewal Email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Current Agreement Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 3 - Current Agreement Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Supplier Mark-Up', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 4 - Supplier Mark-Up.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Client Usage Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 5 - Client Usage Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Client Commercial Priorities', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 6 - Client Commercial Priorities.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Purchase Order Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 2 - Purchase Order Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Delivery Log', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 3 - Delivery Log.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Sales Impact Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 4 - Sales Impact Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Supplier Response', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 5 - Supplier Response.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Future Supply Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 6 - Future Supply Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-BFA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-BFA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-BFA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-BFA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-BFA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-BFA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Business and Financial Awareness/PS-BFA-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-BFA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-BFA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-BFA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-BFA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-BFA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-BFA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Business and Financial Awareness/PS-BFA-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-BFA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Business and Financial Awareness/PS-BFA-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-BFA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Client Care/PS-CC-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-CC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Client Care/PS-CC-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-CC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Client Care/PS-CC-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-CC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Client Care/PS-CC-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-CC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Client Care/PS-CC-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-CC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Client Care/PS-CC-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-CC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Client Care/PS-CC-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-CC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Client Care/PS-CC-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-CC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Client Care/PS-CC-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-CC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Client Care/PS-CC-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-CC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Client Care/PS-CC-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-CC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Client Care/PS-CC-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-CC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Client Care/PS-CC-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-CC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Client Care/PS-CC-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-CC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Communication Skills/PS-COM-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-COM-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Communication Skills/PS-COM-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-COM-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Communication Skills/PS-COM-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-COM-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Communication Skills/PS-COM-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-COM-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Communication Skills/PS-COM-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-COM-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Communication Skills/PS-COM-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-COM-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Communication Skills/PS-COM-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-COM-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Communication Skills/PS-COM-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-COM-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Communication Skills/PS-COM-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-COM-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Communication Skills/PS-COM-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-COM-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Communication Skills/PS-COM-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-COM-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Communication Skills/PS-COM-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-COM-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Communication Skills/PS-COM-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-COM-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Communication Skills/PS-COM-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-COM-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-NRB-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-NRB-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-NRB-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-NRB-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-NRB-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-NRB-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Networking and Relationship Building/PS-NRB-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-NRB-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-NRB-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-NRB-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-NRB-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-NRB-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-NRB-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Networking and Relationship Building/PS-NRB-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-NRB-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Networking and Relationship Building/PS-NRB-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-NRB-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-PC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-PC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-PC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-PC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-PC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-PC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Professional Confidence/PS-PC-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-PC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-PC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-PC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-PC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-PC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-PC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Professional Confidence/PS-PC-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-PC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Professional Confidence/PS-PC-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-PC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-PCE-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-PCE-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-PCE-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-PCE-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-PCE-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-PCE-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Professional Conduct and Ethics/PS-PCE-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-PCE-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-PCE-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-PCE-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-PCE-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-PCE-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-PCE-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Professional Conduct and Ethics/PS-PCE-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-PCE-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Professional Conduct and Ethics/PS-PCE-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-PCE-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-RP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-RP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-RP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-RP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-RP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-RP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Reflective Practice/PS-RP-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-RP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-RP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-RP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-RP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-RP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-RP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Reflective Practice/PS-RP-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-RP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Reflective Practice/PS-RP-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-RP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-TAC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-TAC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-TAC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-TAC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-TAC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-TAC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Teamwork and Collaboration/PS-TAC-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-TAC-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-TAC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-TAC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-TAC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-TAC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-TAC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Teamwork and Collaboration/PS-TAC-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-TAC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Teamwork and Collaboration/PS-TAC-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-TAC-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-TMP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-TMP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-TMP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-TMP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-TMP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-TMP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Time Management and Prioritisation/PS-TMP-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-TMP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-TMP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-TMP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-TMP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-TMP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-TMP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Time Management and Prioritisation/PS-TMP-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-TMP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Time Management and Prioritisation/PS-TMP-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-TMP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-01 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-WR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-01 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-WR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-01 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-WR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-01 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-WR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-01 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-WR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-01 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-WR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Workplace Readiness/PS-WR-01 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-WR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Instructions Tasks and AI', 'student_pack'::public.file_type, NULL, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-02 Student Pack/Instructions Tasks and AI.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'PS-WR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Instruction Email', 'exhibit'::public.file_type, 1, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-02 Student Pack/Exhibit 1 - Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'PS-WR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Background Note', 'exhibit'::public.file_type, 2, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-02 Student Pack/Exhibit 2 - Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'PS-WR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Relevant Document or Record', 'exhibit'::public.file_type, 3, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-02 Student Pack/Exhibit 3 - Relevant Document or Record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'PS-WR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Context and Timeline Note', 'exhibit'::public.file_type, 4, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-02 Student Pack/Exhibit 4 - Context and Timeline Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'PS-WR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Draft Message or Risk Note', 'exhibit'::public.file_type, 5, 'Practical Skills/Student Packs/Workplace Readiness/PS-WR-02 Student Pack/Exhibit 5 - Draft Message or Risk Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'PS-WR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Answers and AI Guide', 'tutor_pack'::public.file_type, NULL, 'Practical Skills/Tutor Packs/Workplace Readiness/PS-WR-02 Tutor Pack/Tutor Answers and AI Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'PS-WR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;
