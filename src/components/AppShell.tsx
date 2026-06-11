import { Link, useNavigate, useRouterState } from "@tanstack/react-router";
import { Scale, LayoutDashboard, BookOpen, ShieldCheck, LogOut } from "lucide-react";
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
    ...(isAdmin ? [{ to: "/admin", label: "Admin", icon: ShieldCheck }] : []),
  ];

  return (
    <div className="min-h-screen flex flex-col bg-background">
      <header className="border-b border-border bg-card sticky top-0 z-30">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 h-14 flex items-center justify-between gap-4">
          <Link to="/dashboard" className="flex items-center gap-2 font-semibold text-primary">
            <span className="w-7 h-7 rounded-md bg-primary text-primary-foreground flex items-center justify-center">
              <Scale className="w-4 h-4" />
            </span>
            <span>LawBridge</span>
            <span className="hidden sm:inline text-xs font-normal text-muted-foreground ml-1">
              Skills Portal
            </span>
          </Link>
          <nav className="hidden md:flex items-center gap-1">
            {navItems.map((n) => {
              const active = pathname.startsWith(n.to);
              return (
                <Link
                  key={n.to}
                  to={n.to}
                  className={`px-3 py-1.5 rounded-md text-sm flex items-center gap-2 transition-colors ${
                    active
                      ? "bg-secondary text-foreground font-medium"
                      : "text-muted-foreground hover:text-foreground hover:bg-secondary/60"
                  }`}
                >
                  <n.icon className="w-4 h-4" />
                  {n.label}
                </Link>
              );
            })}
          </nav>
          <div className="flex items-center gap-2">
            <span className="hidden sm:inline text-xs text-muted-foreground max-w-[160px] truncate">
              {email}
            </span>
            <Button size="sm" variant="ghost" onClick={signOut} title="Sign out">
              <LogOut className="w-4 h-4" />
            </Button>
          </div>
        </div>
        <nav className="md:hidden border-t border-border bg-card px-2 py-1 flex gap-1 overflow-x-auto">
          {navItems.map((n) => {
            const active = pathname.startsWith(n.to);
            return (
              <Link
                key={n.to}
                to={n.to}
                className={`px-3 py-1.5 rounded-md text-xs flex items-center gap-1.5 whitespace-nowrap ${
                  active ? "bg-secondary text-foreground font-medium" : "text-muted-foreground"
                }`}
              >
                <n.icon className="w-3.5 h-3.5" />
                {n.label}
              </Link>
            );
          })}
        </nav>
      </header>
      <main className="flex-1 mx-auto w-full max-w-7xl px-4 sm:px-6 py-6 md:py-8">{children}</main>
      <footer className="border-t border-border py-4 text-center text-xs text-muted-foreground">
        LawBridge Skills Portal · Practical legal skills training
      </footer>
    </div>
  );
}
