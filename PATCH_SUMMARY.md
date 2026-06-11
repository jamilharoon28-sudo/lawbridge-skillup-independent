# LawBridge SkillUp Patch Summary

This patch turns the Lovable export into a practical independent development build.

## Main changes

- Removed Lovable-only runtime packages from `package.json`.
- Replaced Lovable Google sign-in wrapper with direct Supabase OAuth.
- Removed Lovable error-reporting helper and Lovable metadata references.
- Added independent TanStack Start/Vite/Nitro config for Netlify builds.
- Added `netlify.toml` with Node 22 and build settings.
- Removed real `.env` from the project and added `.env.example` / `.env.local.example`.
- Added a course-content manifest generator for the 302 scenario files.
- Added a SQL migration generator for `scenario_files` rows.
- Generated `public/course-content/manifest.json`.
- Added `supabase/migrations/20260611140000_seed_scenario_files_from_manifest.sql`.
- Updated scenario pages so they fall back to the local manifest if Supabase `scenario_files` is empty.
- Added scenario workspace features: private notes, submission draft, submit-for-review guard, and submitted progress state.
- Improved dashboard with submitted count and recommended next scenario.
- Improved admin with submitted count and recent submissions list.
- Added `README_DEPLOY.md` with local/deployment instructions.

## Verified

- `npm run build` completes successfully.
- `npm run lint` completes with warnings only, no errors.

## Not verified here

- Live Supabase auth with your real project settings.
- Real Netlify deployment domain redirects.
- Google OAuth configuration inside the Supabase dashboard.
