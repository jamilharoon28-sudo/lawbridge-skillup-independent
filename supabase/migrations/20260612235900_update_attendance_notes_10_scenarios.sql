-- LawBridge AN-01 to AN-10 content/layout update
-- Run this after copying the updated public/course-content files.

CREATE UNIQUE INDEX IF NOT EXISTS scenario_files_unique_storage_path ON public.scenario_files (scenario_id, storage_path);

-- Ensure Attendance Notes scenarios exist and use the titles from the uploaded AN pack.

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-01', 'Analysing a Cyberattack After a Client Interview', 'Technology / SaaS / HR Software / Data Protection / Commercial Contracts', 'Foundation', 'You are acting as a trainee solicitor within an external legal response team supporting a supervising lawyer.', '45-60 minutes', 'Northstar People Systems Ltd has suffered a suspected phishing-led cyber incident. You have been given a trainee call note, a security alert summary, a data category snapshot, a draft holding statement, an insurance policy notice extract and an internal management chat extract.', 1
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-02', 'Preparing an Attendance Note After a Product Safety Call', 'Retail / Consumer Goods / Product Safety / Supply Chain / Commercial Contracts', 'Foundation', 'You are acting as a trainee solicitor within a commercial and regulatory team supporting a supervising lawyer.', '45-60 minutes', 'BrightSprout Retail Ltd has received complaints about a children’s rechargeable night-light overheating. You have been given an operations call note, customer complaint extracts, supplier correspondence, a product batch and sales snapshot, supply agreement wording and a draft customer recall email.', 2
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-03', 'Analysing a Car Finance Complaint Interview', 'Automotive / Consumer Finance / Regulatory Risk / Complaint Handling', 'Foundation', 'You are acting as a trainee solicitor within a consumer finance and regulatory team supporting a supervising lawyer.', '45-60 minutes', 'Oakmere Motors Group has received complaints from customers about the way vehicle finance commission arrangements were explained during dealership sales. You have been given an interview record, customer complaints, finance wording, training records, sales script extracts and a draft internal investigation note.', 3
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-04', 'Preparing an Attendance Note After a Factory Injury Meeting', 'Manufacturing / Health and Safety / Employment / Insurance', 'Foundation', 'You are acting as a trainee solicitor within an employment, health and safety and insurance team supporting a supervising lawyer.', '45-60 minutes', 'Hadley Components Ltd has reported a serious workplace injury involving a machine operator and a press machine. You have been given a meeting note, accident report, maintenance records, witness comments, safety procedure wording and an internal email chain.', 4
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-05', 'Analysing a Hotel Guest Privacy Complaint', 'Hospitality / Hotels / Privacy / Confidentiality / Reputation Management', 'Foundation', 'You are acting as a trainee solicitor within a commercial, privacy and dispute resolution team supporting a supervising lawyer.', '45-60 minutes', 'Harbour & Stone Hotels Ltd has received a complaint from a guest alleging that hotel staff disclosed private booking information to a third party. You have been given a manager call note, guest complaint email, booking system extract, CCTV policy extract, staff WhatsApp extract and a draft guest response.', 5
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-06', 'Preparing an Attendance Note After a Construction Payment Dispute', 'Construction / Real Estate / Commercial Contracts / Payment Disputes', 'Foundation', 'You are acting as a trainee solicitor within a construction and commercial disputes team supporting a supervising lawyer.', '45-60 minutes', 'Bramwell Developments Ltd is facing a payment dispute with a subcontractor over urgent variation works. You have been given a project call note, site meeting note, subcontract wording, WhatsApp messages, a payment application extract and a draft response to the subcontractor.', 6
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-07', 'Analysing a Clinic Consent Complaint', 'Private Healthcare / Medical Services / Consent / Professional Regulation / Insurance', 'Foundation', 'You are acting as a trainee solicitor within a healthcare, professional regulation and dispute resolution team supporting a supervising lawyer.', '45-60 minutes', 'Aster Vale Clinic has received a patient complaint alleging that a cosmetic procedure was carried out without proper consent. You have been given a clinic manager call note, patient complaint email, consent form extract, appointment note extract, clinic consent policy and draft patient response.', 7
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-08', 'Analysing a Logistics Contract Termination Call', 'Logistics / Transport / Commercial Contracts / Termination / Customer Relationships', 'Foundation', 'You are acting as a trainee solicitor within a commercial contracts and disputes team supporting a supervising lawyer.', '45-60 minutes', 'RouteLine Logistics Ltd is considering terminating a major customer contract after repeated late payment. You have been given a finance director call note, termination clause extract, payment ledger, service level report, customer complaint email and draft termination notice.', 8
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-09', 'Preparing an Attendance Note for a University AI Misconduct Investigation', 'Education / Higher Education / Internal Investigation / AI Use / Procedural Fairness', 'Foundation', 'You are acting as a trainee solicitor within an education, public law and disputes team supporting a supervising lawyer.', '45-60 minutes', 'Westbridge University is investigating an allegation that a student used AI to complete assessed coursework. You have been given an academic integrity call note, academic misconduct policy extract, AI detection report extract, student response email, tutor comment summary and draft panel briefing note.', 9
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenarios (skill_id, code, title, matter_type, difficulty_level, student_role, recommended_time, task_brief, display_order)
SELECT sk.id, 'AN-10', 'Analysing an Influencer Campaign Contract Dispute', 'Fashion / Retail / Marketing / Commercial Contracts / Advertising Compliance', 'Foundation', 'You are acting as a trainee solicitor within a commercial, retail and advertising team supporting a supervising lawyer.', '45-60 minutes', 'Liora Lane Ltd is considering action against an influencer after a disputed campaign post. You have been given a marketing team call note, influencer agreement extract, campaign brief, social media screenshot summary, direct message approval extract and draft termination email.', 10
FROM public.skills sk WHERE sk.code = 'AN'
ON CONFLICT (code) DO UPDATE SET
  skill_id = EXCLUDED.skill_id,
  title = EXCLUDED.title,
  matter_type = EXCLUDED.matter_type,
  difficulty_level = EXCLUDED.difficulty_level,
  student_role = EXCLUDED.student_role,
  recommended_time = EXCLUDED.recommended_time,
  task_brief = EXCLUDED.task_brief,
  display_order = EXCLUDED.display_order;

-- Remove old AN file rows so the new Overview / Practice Tasks / AI Development structure is used.

DELETE FROM public.scenario_files WHERE scenario_id IN (SELECT id FROM public.scenarios WHERE code LIKE 'AN-%');

-- Insert the new AN files.

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Interview Record', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 1 - Interview Record.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Security Alert Summary', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 2 - Security Alert Summary.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Data Category Snapshot', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 3 - Data Category Snapshot.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Draft Holding Statement', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 4 - Draft Holding Statement.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Insurance Policy Notice Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 5 - Insurance Policy Notice Extract.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-01'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Management Chat Extract', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-01 Student Pack/Exhibit 6 - Management Chat Extract.md', 'student'::public.access_role, 16
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
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Operations Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 1 - Operations Call Note.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Customer Complaint Extracts', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 2 - Customer Complaint Extracts.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Supplier Email Chain', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 3 - Supplier Email Chain.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Product Batch and Sales Snapshot', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 4 - Product Batch and Sales Snapshot.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Supply Agreement Notice and Indemnity Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 5 - Supply Agreement Notice and Indemnity Extract.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-02'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Customer Recall Email', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-02 Student Pack/Exhibit 6 - Draft Customer Recall Email.md', 'student'::public.access_role, 16
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
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Sales Director Interview Record', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 1 - Sales Director Interview Record.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Customer Complaint Extracts', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 2 - Customer Complaint Extracts.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Finance Agreement Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 3 - Finance Agreement Extract.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Staff Training Record Snapshot', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 4 - Staff Training Record Snapshot.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Sales Script and Commission Disclosure Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 5 - Sales Script and Commission Disclosure Extract.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-03'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Internal Investigation Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-03 Student Pack/Exhibit 6 - Draft Internal Investigation Note.md', 'student'::public.access_role, 16
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
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Operations Manager Meeting Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 1 - Operations Manager Meeting Note.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Accident Report Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 2 - Accident Report Extract.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Maintenance Log Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 3 - Maintenance Log Extract.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Witness Comment Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 4 - Witness Comment Summary.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Risk Assessment and Safe System of Work Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 5 - Risk Assessment and Safe System of Work Extract.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-04'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Internal Email Chain', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-04 Student Pack/Exhibit 6 - Internal Email Chain.md', 'student'::public.access_role, 16
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
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Hotel Manager Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 1 - Hotel Manager Call Note.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Guest Complaint Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 2 - Guest Complaint Email.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Booking System Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 3 - Booking System Extract.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - CCTV Retention Policy Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 4 - CCTV Retention Policy Extract.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Staff WhatsApp Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 5 - Staff WhatsApp Extract.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-05'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Guest Response', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-05 Student Pack/Exhibit 6 - Draft Guest Response.md', 'student'::public.access_role, 16
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
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Project Director Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 1 - Project Director Call Note.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Site Meeting Note', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 2 - Site Meeting Note.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Subcontract Variation Clause Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 3 - Subcontract Variation Clause Extract.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - WhatsApp Message Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 4 - WhatsApp Message Extract.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Payment Application Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 5 - Payment Application Extract.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-06'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Response to Subcontractor', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-06 Student Pack/Exhibit 6 - Draft Response to Subcontractor.md', 'student'::public.access_role, 16
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
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Clinic Manager Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 1 - Clinic Manager Call Note.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Patient Complaint Email', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 2 - Patient Complaint Email.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Consent Form Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 3 - Consent Form Extract.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Appointment Note Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 4 - Appointment Note Extract.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Clinic Consent Policy Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 5 - Clinic Consent Policy Extract.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-07'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Patient Response', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-07 Student Pack/Exhibit 6 - Draft Patient Response.md', 'student'::public.access_role, 16
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
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Finance Director Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 1 - Finance Director Call Note.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Contract Termination Clause Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 2 - Contract Termination Clause Extract.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Payment Ledger Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 3 - Payment Ledger Extract.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Service Level Report Extract', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 4 - Service Level Report Extract.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Customer Complaint Email', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 5 - Customer Complaint Email.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-08'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Termination Notice', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-08 Student Pack/Exhibit 6 - Draft Termination Notice.md', 'student'::public.access_role, 16
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
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Academic Integrity Officer Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 1 - Academic Integrity Officer Call Note.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Academic Misconduct Policy Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 2 - Academic Misconduct Policy Extract.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - AI Detection Report Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 3 - AI Detection Report Extract.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Student Response Email', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 4 - Student Response Email.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Tutor Comment Summary', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 5 - Tutor Comment Summary.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-09'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Panel Briefing Note', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-09 Student Pack/Exhibit 6 - Draft Panel Briefing Note.md', 'student'::public.access_role, 16
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
SELECT s.id, 'Overview', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Overview.md', 'student'::public.access_role, 0
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Practice Tasks', 'student_pack'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Practice Tasks.md', 'student'::public.access_role, 1
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'AI Development', 'other'::public.file_type, NULL, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/AI Development.md', 'student'::public.access_role, 2
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 1 - Marketing Team Call Note', 'exhibit'::public.file_type, 1, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 1 - Marketing Team Call Note.md', 'student'::public.access_role, 11
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 2 - Influencer Agreement Extract', 'exhibit'::public.file_type, 2, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 2 - Influencer Agreement Extract.md', 'student'::public.access_role, 12
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 3 - Campaign Brief Extract', 'exhibit'::public.file_type, 3, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 3 - Campaign Brief Extract.md', 'student'::public.access_role, 13
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 4 - Social Media Screenshot Summary', 'exhibit'::public.file_type, 4, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 4 - Social Media Screenshot Summary.md', 'student'::public.access_role, 14
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 5 - Direct Message Approval Extract', 'exhibit'::public.file_type, 5, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 5 - Direct Message Approval Extract.md', 'student'::public.access_role, 15
FROM public.scenarios s WHERE s.code = 'AN-10'
ON CONFLICT (scenario_id, storage_path) DO UPDATE SET
  file_name = EXCLUDED.file_name,
  file_type = EXCLUDED.file_type,
  exhibit_number = EXCLUDED.exhibit_number,
  access_role = EXCLUDED.access_role,
  display_order = EXCLUDED.display_order;

INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)
SELECT s.id, 'Exhibit 6 - Draft Termination Email', 'exhibit'::public.file_type, 6, 'Legal Skills/Student Packs/AN/AN-10 Student Pack/Exhibit 6 - Draft Termination Email.md', 'student'::public.access_role, 16
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
