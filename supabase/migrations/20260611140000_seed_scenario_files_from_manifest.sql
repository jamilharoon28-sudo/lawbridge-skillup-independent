-- Generated from public/course-content/manifest.json
-- Re-run with: npm run course:files-sql

CREATE UNIQUE INDEX IF NOT EXISTS scenario_files_unique_storage_path
ON public.scenario_files (scenario_id, storage_path);

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Call Note Extract', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 1 - Client Call Note Extract.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Client Email to Firm', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 2 - Client Email to Firm.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Employer Meeting Note Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 3 - Employer Meeting Note Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 4 - Internal Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Workplace Policy Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 5 - Workplace Policy Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Letter Maya Wants Sent', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 6 - Draft Letter Maya Wants Sent.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-01 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Summary', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 1 - Client Intake Summary.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Venue Complaint Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 2 - Venue Complaint Email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Catering Agreement Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 3 - Catering Agreement Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Event Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 4 - Event Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Internal Staff WhatsApp Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 5 - Internal Staff WhatsApp Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Demand Email', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 6 - Draft Demand Email.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-02 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Initial Client Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 1 - Initial Client Call Note.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Email Delivery Record', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 2 - Email Delivery Record.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Spreadsheet Content Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 3 - Spreadsheet Content Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Administrator Message', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 4 - Administrator Message.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Clinic Confidentiality Procedure Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 5 - Clinic Confidentiality Procedure Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Patient Notice', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 6 - Draft Patient Notice.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-03 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Call Note Extract', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 1 - Client Call Note Extract.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Managing Agent Email Chain', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 2 - Managing Agent Email Chain.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Photograph Log Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 3 - Photograph Log Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Tenancy Repair Clause Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 4 - Tenancy Repair Clause Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Environmental Health Enquiry Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 5 - Environmental Health Enquiry Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Letter to Landlord', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 6 - Draft Letter to Landlord.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-04 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 1 - Client Intake Note.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Payment Application Summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 2 - Payment Application Summary.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Subcontract Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 3 - Subcontract Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Site Text Message Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 4 - Site Text Message Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Supervisor Instruction Email', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 5 - Supervisor Instruction Email.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Payment Demand', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 6 - Draft Payment Demand.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-05 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 1 - Client Call Note.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Retailer Response Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 2 - Retailer Response Email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Purchase and Delivery Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 3 - Purchase and Delivery Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Accident Timeline', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 4 - Accident Timeline.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Warranty and Safety Notice Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 5 - Warranty and Safety Notice Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Complaint Post', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 6 - Draft Complaint Post.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-06 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Initial Trustee Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 1 - Initial Trustee Call Note.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Grant Award Email Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 2 - Grant Award Email Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Bank Transaction Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 3 - Bank Transaction Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Trustee WhatsApp Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 4 - Trustee WhatsApp Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Charity Finance Procedure Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 5 - Charity Finance Procedure Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Email to Funder', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 6 - Draft Email to Funder.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-07 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Call Summary', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 1 - Client Call Summary.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Repository Access Log', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 2 - Repository Access Log.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Draft Founder Term Sheet', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 3 - Draft Founder Term Sheet.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Customer Email Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 4 - Customer Email Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Supervisor Instruction Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 5 - Supervisor Instruction Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Cease and Desist', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 6 - Draft Cease and Desist.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-08 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 1 - Client Call Note.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Placement Supervisor Report', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 2 - Placement Supervisor Report.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Student Message to Friend', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 3 - Student Message to Friend.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - University Procedure Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 4 - University Procedure Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Placement Shift Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 5 - Placement Shift Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Response Statement', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 6 - Draft Response Statement.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-09 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 1 - Client Call Note.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Policy Schedule Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 2 - Policy Schedule Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Broker Email Chain', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 3 - Broker Email Chain.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Revenue Loss Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 4 - Revenue Loss Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Firm Supervisor Instruction', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 5 - Firm Supervisor Instruction.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Complaint Letter', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 6 - Draft Complaint Letter.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/AN/AN-10 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'AN-10'
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
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Form - Amina Patel', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 1 - Client Intake Form - Amina Patel.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Enquiry Email from Client', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 2 - Initial Enquiry Email from Client.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - BrightBuild Quote and Terms Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 3 - BrightBuild Quote and Terms Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Payment and Project Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 4 - Payment and Project Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Message Thread with BrightBuild Site Manager', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 5 - Message Thread with BrightBuild Site Manager.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-01 Student Pack/Exhibit 6 - Supervisor Instruction Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-01 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 1 - Client Intake Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Email from Client', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 2 - Initial Email from Client.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Repair Visit Note Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 3 - Repair Visit Note Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Timeline Fragment Prepared by Client', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 4 - Timeline Fragment Prepared by Client.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Message Thread with Letting Agent', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 5 - Message Thread with Letting Agent.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-02 Student Pack/Exhibit 6 - Supervisor Instruction.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-02 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-03 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-03 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-03 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Startup Client Intake Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-03 Student Pack/Exhibit 1 - Startup Client Intake Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Email from Founder', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-03 Student Pack/Exhibit 2 - Initial Email from Founder.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Draft Contractor Agreement Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-03 Student Pack/Exhibit 3 - Draft Contractor Agreement Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Development Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-03 Student Pack/Exhibit 4 - Development Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Slack Message Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-03 Student Pack/Exhibit 5 - Slack Message Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-03 Student Pack/Exhibit 6 - Supervisor Instruction.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-03 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-04 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-04 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-04 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-04 Student Pack/Exhibit 1 - Client Intake Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Client Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-04 Student Pack/Exhibit 2 - Initial Client Email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Clinic Booking and Consent Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-04 Student Pack/Exhibit 3 - Clinic Booking and Consent Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Treatment and Photo Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-04 Student Pack/Exhibit 4 - Treatment and Photo Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Message Thread with Clinic', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-04 Student Pack/Exhibit 5 - Message Thread with Clinic.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-04 Student Pack/Exhibit 6 - Supervisor Instruction.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-04 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-05 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-05 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-05 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-05 Student Pack/Exhibit 1 - Client Intake Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Client Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-05 Student Pack/Exhibit 2 - Initial Client Email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Subcontract Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-05 Student Pack/Exhibit 3 - Subcontract Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Site Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-05 Student Pack/Exhibit 4 - Site Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - WhatsApp-style Site Messages', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-05 Student Pack/Exhibit 5 - WhatsApp-style Site Messages.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-05 Student Pack/Exhibit 6 - Supervisor Instruction.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-05 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-06 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-06 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-06 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-06 Student Pack/Exhibit 1 - Client Intake Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Email from Noah', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-06 Student Pack/Exhibit 2 - Initial Email from Noah.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Suspension Letter Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-06 Student Pack/Exhibit 3 - Suspension Letter Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Noah’s Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-06 Student Pack/Exhibit 4 - Noah’s Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Team Message Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-06 Student Pack/Exhibit 5 - Team Message Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-06 Student Pack/Exhibit 6 - Supervisor Instruction.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-06 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-07 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-07 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-07 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-07 Student Pack/Exhibit 1 - Client Intake Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Client Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-07 Student Pack/Exhibit 2 - Initial Client Email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Campaign Brief Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-07 Student Pack/Exhibit 3 - Campaign Brief Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Campaign Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-07 Student Pack/Exhibit 4 - Campaign Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Message Thread with Brand Manager', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-07 Student Pack/Exhibit 5 - Message Thread with Brand Manager.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-07 Student Pack/Exhibit 6 - Supervisor Instruction.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-07 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-08 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-08 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-08 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-08 Student Pack/Exhibit 1 - Client Intake Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Email from Oliver', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-08 Student Pack/Exhibit 2 - Initial Email from Oliver.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Admission Property Inventory Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-08 Student Pack/Exhibit 3 - Admission Property Inventory Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Family Visit Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-08 Student Pack/Exhibit 4 - Family Visit Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Message Thread with Care Home Manager', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-08 Student Pack/Exhibit 5 - Message Thread with Care Home Manager.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-08 Student Pack/Exhibit 6 - Supervisor Instruction.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-08 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-09 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-09 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-09 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-09 Student Pack/Exhibit 1 - Client Intake Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Client Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-09 Student Pack/Exhibit 2 - Initial Client Email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Supplier Certificate Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-09 Student Pack/Exhibit 3 - Supplier Certificate Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Complaint Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-09 Student Pack/Exhibit 4 - Complaint Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Customer Message Thread', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-09 Student Pack/Exhibit 5 - Customer Message Thread.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-09 Student Pack/Exhibit 6 - Supervisor Instruction.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-09 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-10 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-10 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CI/CI-10 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Intake Form', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CI/CI-10 Student Pack/Exhibit 1 - Client Intake Form.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Initial Client Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CI/CI-10 Student Pack/Exhibit 2 - Initial Client Email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Donor Email Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CI/CI-10 Student Pack/Exhibit 3 - Donor Email Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Cash-flow Timeline Fragment', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CI/CI-10 Student Pack/Exhibit 4 - Cash-flow Timeline Fragment.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Board Message Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CI/CI-10 Student Pack/Exhibit 5 - Board Message Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CI/CI-10 Student Pack/Exhibit 6 - Supervisor Instruction.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CI/CI-10 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CI-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-01 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-01 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-02 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-02 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-03 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-03 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-03 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-03 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-03 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-03 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-03 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-03 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-03 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-03 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-04 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-04 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-04 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-04 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-04 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-04 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-04 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-04 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-04 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-04 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-05 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-05 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-05 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-05 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-05 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-05 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-05 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-05 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-05 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-05 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-06 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-06 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-06 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-06 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-06 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-06 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-06 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-06 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-06 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-06 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-07 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-07 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-07 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-07 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-07 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-07 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-07 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-07 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-07 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-07 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-08 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-08 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-08 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-08 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-08 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-08 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-08 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-08 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-08 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-08 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-09 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-09 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-09 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-09 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-09 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-09 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-09 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-09 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-09 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-09 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-10 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-10 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CLA/CLA-10 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Business Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CLA/CLA-10 Student Pack/Exhibit 1 - Business Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Proposed Commercial Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CLA/CLA-10 Student Pack/Exhibit 2 - Proposed Commercial Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Operational Data and Timeline Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CLA/CLA-10 Student Pack/Exhibit 3 - Operational Data and Timeline Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Internal Stakeholder Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CLA/CLA-10 Student Pack/Exhibit 4 - Internal Stakeholder Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk, Finance, and Options Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CLA/CLA-10 Student Pack/Exhibit 5 - Risk, Finance, and Options Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board or Customer Communication', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CLA/CLA-10 Student Pack/Exhibit 6 - Draft Board or Customer Communication.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CLA/CLA-10 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CLA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-01 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-01 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-02 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-02 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-03 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-03 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-03 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-03 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-03 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-03 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-03 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-03 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-03 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-03 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-04 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-04 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-04 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-04 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-04 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-04 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-04 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-04 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-04 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-04 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-05 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-05 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-05 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-05 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-05 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-05 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-05 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-05 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-05 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-05 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-06 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-06 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-06 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-06 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-06 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-06 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-06 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-06 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-06 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-06 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-07 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-07 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-07 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-07 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-07 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-07 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-07 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-07 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-07 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-07 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-08 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-08 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-08 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-08 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-08 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-08 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-08 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-08 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-08 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-08 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-09 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-09 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-09 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-09 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-09 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-09 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-09 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-09 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-09 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-09 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-10 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-10 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/CMA/CMA-10 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'CMA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - File Opening Note and Client Objective', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/CMA/CMA-10 Student Pack/Exhibit 1 - File Opening Note and Client Objective.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'CMA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Chronology of Key Events', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/CMA/CMA-10 Student Pack/Exhibit 2 - Chronology of Key Events.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'CMA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Key Correspondence Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/CMA/CMA-10 Student Pack/Exhibit 3 - Key Correspondence Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'CMA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Relevant Agreement or Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/CMA/CMA-10 Student Pack/Exhibit 4 - Relevant Agreement or Policy Extract.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'CMA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Conflicting Evidence Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/CMA/CMA-10 Student Pack/Exhibit 5 - Conflicting Evidence Summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'CMA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Supervisor Instruction and Risk Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/CMA/CMA-10 Student Pack/Exhibit 6 - Supervisor Instruction and Risk Note.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'CMA-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/CMA/CMA-10 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'CMA-10'
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
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client instruction email from Nadia Ellis', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 1 - Client instruction email from Nadia Ellis.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Current supplier agreement extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 2 - Current supplier agreement extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Event issue chronology', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 3 - Event issue chronology.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Email chain about guest number changes', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 4 - Email chain about guest number changes.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Internal revenue note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 5 - Internal revenue note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Flawed draft amendment prepared by the client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-01 Student Pack/Exhibit 6 - Flawed draft amendment prepared by the client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-01 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Facilities manager instruction note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 1 - Facilities manager instruction note.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Cleaning services agreement extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 2 - Cleaning services agreement extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Tenant complaint log', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 3 - Tenant complaint log.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Access control incident report', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 4 - Access control incident report.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - BrightPath response email', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 5 - BrightPath response email.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Client draft termination email', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-02 Student Pack/Exhibit 6 - Client draft termination email.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-02 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-03 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-03 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-03 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Founder instruction email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-03 Student Pack/Exhibit 1 - Founder instruction email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Freelance design terms extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-03 Student Pack/Exhibit 2 - Freelance design terms extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Invoice and payment note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-03 Student Pack/Exhibit 3 - Invoice and payment note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Screenshots summary of portfolio post', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-03 Student Pack/Exhibit 4 - Screenshots summary of portfolio post.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Designer response email', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-03 Student Pack/Exhibit 5 - Designer response email.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Client draft settlement wording', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-03 Student Pack/Exhibit 6 - Client draft settlement wording.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-03 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-04 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-04 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-04 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Ecommerce team instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-04 Student Pack/Exhibit 1 - Ecommerce team instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - PulseSend standard terms extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-04 Student Pack/Exhibit 2 - PulseSend standard terms extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Customer segment upload plan', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-04 Student Pack/Exhibit 3 - Customer segment upload plan.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Security questionnaire summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-04 Student Pack/Exhibit 4 - Security questionnaire summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - PulseSend negotiation email', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-04 Student Pack/Exhibit 5 - PulseSend negotiation email.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Client draft addendum', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-04 Student Pack/Exhibit 6 - Client draft addendum.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-04 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-05 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-05 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-05 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Commercial manager instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-05 Student Pack/Exhibit 1 - Commercial manager instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Subcontract payment clause extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-05 Student Pack/Exhibit 2 - Subcontract payment clause extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Invoice schedule', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-05 Student Pack/Exhibit 3 - Invoice schedule.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Site delay email chain', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-05 Student Pack/Exhibit 4 - Site delay email chain.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Project programme extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-05 Student Pack/Exhibit 5 - Project programme extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Rough side letter draft', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-05 Student Pack/Exhibit 6 - Rough side letter draft.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-05 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-06 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-06 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-06 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Customer operations instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-06 Student Pack/Exhibit 1 - Customer operations instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Customer complaint email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-06 Student Pack/Exhibit 2 - Customer complaint email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Order and delivery record', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-06 Student Pack/Exhibit 3 - Order and delivery record.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Warehouse photo summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-06 Student Pack/Exhibit 4 - Warehouse photo summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Customer service chat extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-06 Student Pack/Exhibit 5 - Customer service chat extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Aggressive draft response', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-06 Student Pack/Exhibit 6 - Aggressive draft response.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-06 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-07 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-07 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-07 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Asset manager instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-07 Student Pack/Exhibit 1 - Asset manager instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Existing pop-up licence extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-07 Student Pack/Exhibit 2 - Existing pop-up licence extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Festival event schedule', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-07 Student Pack/Exhibit 3 - Festival event schedule.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Neighbouring tenant complaint email', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-07 Student Pack/Exhibit 4 - Neighbouring tenant complaint email.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Insurance summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-07 Student Pack/Exhibit 5 - Insurance summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Coffee operator proposed wording', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-07 Student Pack/Exhibit 6 - Coffee operator proposed wording.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-07 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-08 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-08 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-08 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Finance director instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-08 Student Pack/Exhibit 1 - Finance director instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Draft distribution agreement summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-08 Student Pack/Exhibit 2 - Draft distribution agreement summary.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Board meeting agenda extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-08 Student Pack/Exhibit 3 - Board meeting agenda extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Outstanding issues email', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-08 Student Pack/Exhibit 4 - Outstanding issues email.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Signing authority policy extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-08 Student Pack/Exhibit 5 - Signing authority policy extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Previous flawed resolution', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-08 Student Pack/Exhibit 6 - Previous flawed resolution.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-08 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-09 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-09 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-09 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - People Partner instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-09 Student Pack/Exhibit 1 - People Partner instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Consultancy agreement extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-09 Student Pack/Exhibit 2 - Consultancy agreement extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - IT forwarding report', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-09 Student Pack/Exhibit 3 - IT forwarding report.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Consultant explanation email', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-09 Student Pack/Exhibit 4 - Consultant explanation email.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Project confidentiality summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-09 Student Pack/Exhibit 5 - Project confidentiality summary.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Overbroad draft undertaking', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-09 Student Pack/Exhibit 6 - Overbroad draft undertaking.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-09 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-10 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-10 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LD/LD-10 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Clinic director instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LD/LD-10 Student Pack/Exhibit 1 - Clinic director instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Patient complaint email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LD/LD-10 Student Pack/Exhibit 2 - Patient complaint email.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Appointment system extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LD/LD-10 Student Pack/Exhibit 3 - Appointment system extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Reception staff note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LD/LD-10 Student Pack/Exhibit 4 - Reception staff note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Clinic complaints policy extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LD/LD-10 Student Pack/Exhibit 5 - Clinic complaints policy extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft response prepared by receptionist', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LD/LD-10 Student Pack/Exhibit 6 - Draft response prepared by receptionist.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LD/LD-10 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LD-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-01 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-01 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-02 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-02 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-03 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-03 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-03 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-03 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-03 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-03 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-03 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-03 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-03 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-03 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-04 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-04 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-04 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-04 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-04 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-04 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-04 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-04 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-04 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-04 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-05 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-05 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-05 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-05 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-05 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-05 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-05 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-05 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-05 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-05 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-06 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-06 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-06 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-06 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-06 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-06 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-06 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-06 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-06 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-06 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-07 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-07 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-07 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-07 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-07 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-07 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-07 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-07 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-07 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-07 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-08 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-08 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-08 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-08 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-08 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-08 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-08 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-08 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-08 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-08 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-09 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-09 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-09 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-09 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-09 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-09 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-09 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-09 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-09 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-09 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-10 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-10 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LR/LR-10 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Research Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LR/LR-10 Student Pack/Exhibit 1 - Supervisor Research Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Factual Background Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LR/LR-10 Student Pack/Exhibit 2 - Factual Background Note.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Neutral Legal Principles Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LR/LR-10 Student Pack/Exhibit 3 - Neutral Legal Principles Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Example Decision - Dispute Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LR/LR-10 Student Pack/Exhibit 4 - Example Decision - Dispute Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Practical Guidance Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LR/LR-10 Student Pack/Exhibit 5 - Practical Guidance Extract.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Conflicting Commentary or Policy Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LR/LR-10 Student Pack/Exhibit 6 - Conflicting Commentary or Policy Extract.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LR/LR-10 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LR-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Request Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 1 - Client Request Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Order and Payment Summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 2 - Order and Payment Summary.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Delivery Timeline', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 3 - Delivery Timeline.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Retailer Response', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 4 - Retailer Response.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Supervisor Instruction', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 5 - Supervisor Instruction.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Amira Draft Email', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-01 Student Pack/Exhibit 6 - Amira Draft Email.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-01 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Supervisor Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 1 - Supervisor Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Reference Request', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 2 - Reference Request.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - HR Exit Note', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 3 - HR Exit Note.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Payroll Error Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 4 - Payroll Error Summary.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Internal Partner Email', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 5 - Internal Partner Email.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Reference', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-02 Student Pack/Exhibit 6 - Draft Reference.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-02 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-03 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-03 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-03 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Patient Complaint', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-03 Student Pack/Exhibit 1 - Patient Complaint.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Appointment Log', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-03 Student Pack/Exhibit 2 - Appointment Log.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Email Audit Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-03 Student Pack/Exhibit 3 - Email Audit Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Reception Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-03 Student Pack/Exhibit 4 - Reception Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Clinic Complaints Procedure', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-03 Student Pack/Exhibit 5 - Clinic Complaints Procedure.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Response', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-03 Student Pack/Exhibit 6 - Draft Response.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-03 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-04 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-04 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-04 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-04 Student Pack/Exhibit 1 - Client Instruction.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Works Timeline', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-04 Student Pack/Exhibit 2 - Works Timeline.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Contract Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-04 Student Pack/Exhibit 3 - Contract Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Snagging List', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-04 Student Pack/Exhibit 4 - Snagging List.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Contractor Email', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-04 Student Pack/Exhibit 5 - Contractor Email.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Client Draft Letter', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-04 Student Pack/Exhibit 6 - Client Draft Letter.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-04 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-05 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-05 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-05 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Board Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-05 Student Pack/Exhibit 1 - Board Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Rollout Chronology', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-05 Student Pack/Exhibit 2 - Rollout Chronology.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Implementation Agreement Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-05 Student Pack/Exhibit 3 - Implementation Agreement Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Vendor Email', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-05 Student Pack/Exhibit 4 - Vendor Email.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Internal Operations Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-05 Student Pack/Exhibit 5 - Internal Operations Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Board Slide', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-05 Student Pack/Exhibit 6 - Draft Board Slide.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-05 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-06 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-06 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-06 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Update Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-06 Student Pack/Exhibit 1 - Client Update Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Photo and Message Timeline', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-06 Student Pack/Exhibit 2 - Photo and Message Timeline.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Tenancy Repair Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-06 Student Pack/Exhibit 3 - Tenancy Repair Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Managing Agent Email', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-06 Student Pack/Exhibit 4 - Managing Agent Email.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Supervisor Instruction', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-06 Student Pack/Exhibit 5 - Supervisor Instruction.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Rosa Draft Message', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-06 Student Pack/Exhibit 6 - Rosa Draft Message.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-06 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-07 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-07 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-07 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-07 Student Pack/Exhibit 1 - Client Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Campaign Brief', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-07 Student Pack/Exhibit 2 - Campaign Brief.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Posting Timeline', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-07 Student Pack/Exhibit 3 - Posting Timeline.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-07 Student Pack/Exhibit 4 - Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Supervisor Instruction', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-07 Student Pack/Exhibit 5 - Supervisor Instruction.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Brand Draft Complaint', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-07 Student Pack/Exhibit 6 - Brand Draft Complaint.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-07 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-08 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-08 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-08 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-08 Student Pack/Exhibit 1 - Client Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Delivery and Order Summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-08 Student Pack/Exhibit 2 - Delivery and Order Summary.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Supply Terms Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-08 Student Pack/Exhibit 3 - Supply Terms Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - GlassPro Email', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-08 Student Pack/Exhibit 4 - GlassPro Email.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Finance Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-08 Student Pack/Exhibit 5 - Finance Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Settlement Email', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-08 Student Pack/Exhibit 6 - Draft Settlement Email.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-08 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-09 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-09 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-09 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-09 Student Pack/Exhibit 1 - Client Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Accounts Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-09 Student Pack/Exhibit 2 - Accounts Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Dividend History', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-09 Student Pack/Exhibit 3 - Dividend History.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Family Message Thread', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-09 Student Pack/Exhibit 4 - Family Message Thread.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Supervisor Instruction', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-09 Student Pack/Exhibit 5 - Supervisor Instruction.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Priya Draft Reply', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-09 Student Pack/Exhibit 6 - Priya Draft Reply.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-09 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-10 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-10 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/LW/LW-10 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Request', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/LW/LW-10 Student Pack/Exhibit 1 - Client Request.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Vehicle Timeline', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/LW/LW-10 Student Pack/Exhibit 2 - Vehicle Timeline.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Finance Agreement Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/LW/LW-10 Student Pack/Exhibit 3 - Finance Agreement Extract.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Dealer Email', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/LW/LW-10 Student Pack/Exhibit 4 - Dealer Email.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Mechanic Text', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/LW/LW-10 Student Pack/Exhibit 5 - Mechanic Text.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Daniel Draft Message', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/LW/LW-10 Student Pack/Exhibit 6 - Daniel Draft Message.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/LW/LW-10 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'LW-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-01 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-01 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
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
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-02 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-02 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-03 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-03 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-03 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-03 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-03 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-03 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-03 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-03 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-03 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-03 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-04 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-04 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-04 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-04 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-04 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-04 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-04 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-04 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-04 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-04 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-05 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-05 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-05 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-05 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-05 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-05 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-05 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-05 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-05 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-05 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-06 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-06 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-06 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-06 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-06 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-06 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-06 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-06 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-06 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-06 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-07 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-07 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-07 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-07 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-07 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-07 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-07 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-07 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-07 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-07 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-08 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-08 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-08 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-08 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-08 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-08 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-08 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-08 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-08 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-08 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-09 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-09 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-09 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-09 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-09 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-09 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-09 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-09 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-09 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-09 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-10 Student Pack/AI Development.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-10 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/NP/NP-10 Student Pack/Practice Tasks.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'NP-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Client Instruction Email', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/NP/NP-10 Student Pack/Exhibit 1 - Client Instruction Email.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'NP-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract or Terms Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/NP/NP-10 Student Pack/Exhibit 2 - Contract or Terms Extract.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'NP-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Chronology and Evidence Summary', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/NP/NP-10 Student Pack/Exhibit 3 - Chronology and Evidence Summary.md', 'student'::public.access_role, 3
FROM public.scenarios s WHERE s.code = 'NP-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Counterparty Position Note', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/NP/NP-10 Student Pack/Exhibit 4 - Counterparty Position Note.md', 'student'::public.access_role, 4
FROM public.scenarios s WHERE s.code = 'NP-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Commercial Risk and Cost Note', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/NP/NP-10 Student Pack/Exhibit 5 - Commercial Risk and Cost Note.md', 'student'::public.access_role, 5
FROM public.scenarios s WHERE s.code = 'NP-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Negotiation Email Prepared by Client', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/NP/NP-10 Student Pack/Exhibit 6 - Draft Negotiation Email Prepared by Client.md', 'student'::public.access_role, 6
FROM public.scenarios s WHERE s.code = 'NP-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Tutor Guide', 'tutor_pack'::public.file_type, NULL, 'Legal Skills/Tutor Packs/NP/NP-10 Tutor Pack/Tutor Guide.md', 'tutor'::public.access_role, 100
FROM public.scenarios s WHERE s.code = 'NP-10'
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
