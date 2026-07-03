import fs from "node:fs";
import path from "node:path";

const manifestPath = path.join(process.cwd(), "public", "course-content", "manifest.json");
const migrationDir = path.join(process.cwd(), "supabase", "migrations");
const outPath = path.join(migrationDir, "20260611140000_seed_scenario_files_from_manifest.sql");

function sql(value) {
  if (value === null || value === undefined) return "NULL";
  if (typeof value === "number") return String(value);
  return `'${String(value).replaceAll("'", "''")}'`;
}

const manifest = JSON.parse(fs.readFileSync(manifestPath, "utf8"));
const files = manifest.files;

const lines = [];
lines.push("-- Generated from public/course-content/manifest.json");
lines.push("-- Re-run with: npm run course:files-sql");
lines.push("");
lines.push("CREATE UNIQUE INDEX IF NOT EXISTS scenario_files_unique_storage_path");
lines.push("ON public.scenario_files (scenario_id, storage_path);");
lines.push("");

for (const file of files) {
  lines.push(
    `INSERT INTO public.scenario_files (scenario_id, file_name, file_type, exhibit_number, storage_path, access_role, display_order)`,
  );
  lines.push(
    `SELECT s.id, ${sql(file.file_name)}, ${sql(file.file_type)}::public.file_type, ${sql(file.exhibit_number)}, ${sql(file.storage_path)}, ${sql(file.access_role)}::public.access_role, ${sql(file.display_order)}`,
  );
  lines.push(`FROM public.scenarios s WHERE s.code = ${sql(file.scenario_code)}`);
  lines.push("ON CONFLICT (scenario_id, storage_path) DO UPDATE SET");
  lines.push("  file_name = EXCLUDED.file_name,");
  lines.push("  file_type = EXCLUDED.file_type,");
  lines.push("  exhibit_number = EXCLUDED.exhibit_number,");
  lines.push("  access_role = EXCLUDED.access_role,");
  lines.push("  display_order = EXCLUDED.display_order;");
  lines.push("");
}

fs.writeFileSync(outPath, lines.join("\n"));
console.log(`Wrote ${files.length} scenario file rows to ${path.relative(process.cwd(), outPath)}`);
