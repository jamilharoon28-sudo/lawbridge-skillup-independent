import fs from "node:fs";
import path from "node:path";

const ROOT = path.join(process.cwd(), "public", "course-content");
const OUT = path.join(ROOT, "manifest.json");

function walk(dir) {
  const entries = fs.readdirSync(dir, { withFileTypes: true });
  return entries.flatMap((entry) => {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) return walk(full);
    if (!entry.isFile()) return [];
    if (!entry.name.endsWith(".md")) return [];
    if (entry.name === "Course Index.md") return [];
    return [full];
  });
}

function escapeRegex(value) {
  return value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function normaliseSlash(value) {
  return value.split(path.sep).join("/");
}

function parseFile(fullPath) {
  const storagePath = normaliseSlash(path.relative(ROOT, fullPath));
  const parts = storagePath.split("/");

  const category = parts[0];
  const packGroup = parts[1];
  const skillFolder = parts[2];
  const packFolder = parts[3];
  const fileName = parts.slice(4).join("/");

  if (!category || !packGroup || !skillFolder || !packFolder || !fileName) return null;

  const codeMatch = packFolder.match(/^([A-Z]{2,3}-[A-Z]{2,3}-\d{2}|[A-Z]{2,3}-\d{2})\b/);
  if (!codeMatch) return null;

  const scenario_code = codeMatch[1];
  const isTutorPack = packGroup === "Tutor Packs";
  const exhibitMatch = fileName.match(/^Exhibit\s+(\d+)/i);
  const exhibitNumber = exhibitMatch ? Number(exhibitMatch[1]) : null;

  const file_type = isTutorPack ? "tutor_pack" : exhibitNumber ? "exhibit" : "student_pack";
  const access_role = isTutorPack ? "tutor" : "student";
  const display_order = isTutorPack ? 100 : (exhibitNumber ?? 0);

  return {
    scenario_code,
    file_name: fileName.replace(/\.md$/i, ""),
    file_type,
    exhibit_number: exhibitNumber,
    storage_path: storagePath,
    access_role,
    display_order,
    category,
    pack_group: packGroup,
    skill_folder: skillFolder,
  };
}

const files = walk(ROOT)
  .map(parseFile)
  .filter(Boolean)
  .sort((a, b) => {
    if (a.scenario_code !== b.scenario_code) return a.scenario_code.localeCompare(b.scenario_code);
    if (a.access_role !== b.access_role) return a.access_role.localeCompare(b.access_role);
    return a.display_order - b.display_order || a.file_name.localeCompare(b.file_name);
  });

fs.writeFileSync(OUT, JSON.stringify({ generated_at: new Date().toISOString(), files }, null, 2));
console.log(`Wrote ${files.length} course files to ${path.relative(process.cwd(), OUT)}`);
