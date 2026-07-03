import { Link } from "@tanstack/react-router";
import { ChevronRight, Home } from "lucide-react";

const LABELS: Record<string, string> = {
  dashboard: "Trainee Desk",
  skills: "Skills Library",
  passport: "Skills Passport",
  admin: "Tutor / Admin",
  scenarios: "Scenario",
};

/** Lightweight breadcrumb trail derived from the current pathname. */
export function Breadcrumbs({ pathname }: { pathname: string }) {
  const segments = pathname.split("/").filter(Boolean);
  if (segments.length === 0 || segments[0] === "auth") return null;

  const NAVIGABLE = new Set(["dashboard", "skills", "passport", "admin"]);
  const crumbs = segments.map((seg, i) => {
    const href = "/" + segments.slice(0, i + 1).join("/");
    const isCode = /^[A-Z]{2,3}-[A-Z0-9-]+$/i.test(seg);
    const label = isCode ? seg.toUpperCase() : (LABELS[seg] ?? seg);
    const linkable = NAVIGABLE.has(seg);
    return { href, label, linkable, last: i === segments.length - 1 };
  });

  return (
    <nav aria-label="Breadcrumb" className="flex items-center gap-1.5 text-xs text-muted-foreground">
      <Link to="/dashboard" className="inline-flex items-center gap-1 hover:text-foreground transition-colors">
        <Home className="h-3.5 w-3.5" />
      </Link>
      {crumbs.map((c) => (
        <span key={c.href} className="inline-flex items-center gap-1.5">
          <ChevronRight className="h-3 w-3 opacity-60" />
          {c.last || !c.linkable ? (
            <span className={c.last ? "font-medium text-foreground" : ""}>{c.label}</span>
          ) : (
            <Link to={c.href} className="hover:text-foreground transition-colors">
              {c.label}
            </Link>
          )}
        </span>
      ))}
    </nav>
  );
}
