import { Link, useNavigate, useRouterState } from "@tanstack/react-router";
import {
  BookOpen,
  GraduationCap,
  LayoutDashboard,
  LogOut,
  Scale,
  ShieldCheck,
  Sparkles,
} from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { useEffect, useState } from "react";
import { useQueryClient } from "@tanstack/react-query";

export function AppShell({ children }: { children: React.ReactNode }) {
  const navigate = useNavigate();
  const qc = useQueryClient();
  const pathname = useRouterState({ select: (s) => s.location.pathname });
  const [email, setEmail] = useState<string | null>(null);
  const [isAdmin, setIsAdmin] = useState(false);

  useEffect(() => {
    let active = true;
    (async () => {
      const { data } = await supabase.auth.getUser();
      if (!active) return;
      setEmail(data.user?.email ?? null);
      if (data.user) {
        const { data: roles } = await supabase
          .from("user_roles")
          .select("role")
          .eq("user_id", data.user.id);
        setIsAdmin(!!roles?.some((r) => r.role === "admin" || r.role === "tutor"));
      }
    })();
    return () => {
      active = false;
    };
  }, []);

  const signOut = async () => {
    await supabase.auth.signOut();
    qc.clear();
    navigate({ to: "/auth" });
  };

  const navItems = [
    { to: "/dashboard", label: "Dashboard", icon: LayoutDashboard },
    { to: "/skills", label: "Skills Library", icon: BookOpen },
    ...(isAdmin ? [{ to: "/admin", label: "Tutor/Admin", icon: ShieldCheck }] : []),
  ];

  return (
    <div className="app-shell min-h-screen flex flex-col bg-background">
      <header className="app-topbar sticky top-0 z-30 border-b border-border/70 bg-background/90 backdrop-blur-xl">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 h-16 flex items-center justify-between gap-4">
          <Link to="/dashboard" className="brand-lockup group flex items-center gap-3">
            <span className="brand-mark flex h-10 w-10 items-center justify-center rounded-2xl text-primary-foreground shadow-sm">
              <Scale className="h-5 w-5" />
            </span>
            <span className="min-w-0">
              <span className="block text-base font-semibold leading-tight text-primary group-hover:text-accent transition-colors">
                LawBridge
              </span>
              <span className="hidden sm:flex items-center gap-1 text-[11px] uppercase tracking-[0.18em] text-muted-foreground">
                <GraduationCap className="h-3 w-3" /> Skills Portal
              </span>
            </span>
          </Link>

          <nav className="hidden md:flex items-center gap-1 rounded-full border border-border/70 bg-card/80 p-1 shadow-sm">
            {navItems.map((n) => {
              const active = pathname.startsWith(n.to);
              return (
                <Link
                  key={n.to}
                  to={n.to}
                  className={`app-nav-link inline-flex items-center gap-2 rounded-full px-4 py-2 text-sm transition-all ${
                    active
                      ? "bg-primary text-primary-foreground shadow-sm"
                      : "text-muted-foreground hover:bg-secondary hover:text-foreground"
                  }`}
                >
                  <n.icon className="h-4 w-4" />
                  {n.label}
                </Link>
              );
            })}
          </nav>

          <div className="flex items-center gap-2">
            <div className="hidden lg:block rounded-full border border-border/70 bg-card px-3 py-1.5 text-xs text-muted-foreground shadow-sm max-w-[220px] truncate">
              {email ?? "Signed in"}
            </div>
            <Button size="sm" variant="outline" onClick={signOut} title="Sign out" className="rounded-full">
              <LogOut className="h-4 w-4" />
            </Button>
          </div>
        </div>

        <nav className="md:hidden border-t border-border/70 bg-card/90 px-2 py-2 flex gap-2 overflow-x-auto">
          {navItems.map((n) => {
            const active = pathname.startsWith(n.to);
            return (
              <Link
                key={n.to}
                to={n.to}
                className={`rounded-full px-3 py-2 text-xs flex items-center gap-1.5 whitespace-nowrap ${
                  active ? "bg-primary text-primary-foreground font-medium" : "text-muted-foreground bg-secondary/50"
                }`}
              >
                <n.icon className="h-3.5 w-3.5" />
                {n.label}
              </Link>
            );
          })}
        </nav>
      </header>

      <main className="flex-1 mx-auto w-full max-w-7xl px-4 sm:px-6 py-6 md:py-8">
        {children}
      </main>

      <footer className="app-footer border-t border-border/70 py-6 text-center text-xs text-muted-foreground">
        <div className="mx-auto flex max-w-7xl items-center justify-center gap-2 px-4">
          <Sparkles className="h-3.5 w-3.5 text-accent" />
          LawBridge Skills Portal · Interactive legal training workspace
        </div>
      </footer>
    </div>
  );
}
