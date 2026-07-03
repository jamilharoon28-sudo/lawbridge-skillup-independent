# LawBridge SkillUp — outside Lovable

This version has been cleaned so it can run outside Lovable.

## What changed

- Removed direct Lovable auth usage.
- Replaced the Lovable Vite config with normal Vite + TanStack Start + React + Tailwind plugins.
- Added Nitro Netlify output so the app can deploy to Netlify as a server-rendered TanStack Start app.
- Added `public/course-content/manifest.json` so scenario instructions, exhibits and tutor packs can load even before `scenario_files` is seeded in Supabase.
- Added a scenario Workspace tab: private notes, draft submission, submit-for-review, and a blank-submission guard.
- Improved dashboard: submitted count and recommended next scenario.
- Improved admin: recent submissions appear for tutor/admin users.
- Removed `.env` from the project and added safe `.env.example` files.

## Local setup

```bash
npm install
cp .env.local.example .env.local
npm run dev
```

Then open:

```txt
http://localhost:5173
```

## Environment variables

Put these in `.env.local` locally and in Netlify environment variables when deploying:

```env
VITE_SUPABASE_URL=https://YOUR_PROJECT_ID.supabase.co
VITE_SUPABASE_PUBLISHABLE_KEY=YOUR_SUPABASE_ANON_KEY
SUPABASE_URL=https://YOUR_PROJECT_ID.supabase.co
SUPABASE_PUBLISHABLE_KEY=YOUR_SUPABASE_ANON_KEY
SUPABASE_PROJECT_ID=YOUR_PROJECT_ID
VITE_SUPABASE_PROJECT_ID=YOUR_PROJECT_ID
```

## Netlify deploy

Use these settings:

```txt
Build command: npm run build
Publish directory: dist
Node version: 22
```

The repo includes `netlify.toml`, so Netlify should read those settings automatically.

## Course content

The app includes 302 markdown course files and a generated manifest:

```txt
public/course-content/manifest.json
```

Regenerate it after adding/removing files:

```bash
npm run course:manifest
```

## Optional Supabase scenario_files seed

The app can load course files from the manifest even before database seeding. For a cleaner Supabase-backed setup, run/apply this migration:

```txt
supabase/migrations/20260611140000_seed_scenario_files_from_manifest.sql
```

Regenerate that SQL after changing course files:

```bash
npm run course:files-sql
```

## 10-hour priority order

1. Run locally.
2. Add `.env.local` values.
3. Confirm login/signup works.
4. Open `/skills` and one scenario.
5. Confirm instructions/exhibits load.
6. Push to GitHub.
7. Deploy to Netlify.
8. Add Supabase redirect URL for your Netlify domain.
9. Test signup/login on the Netlify domain.
10. Only then improve design/features.
