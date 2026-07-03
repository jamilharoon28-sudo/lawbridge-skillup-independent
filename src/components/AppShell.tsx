import { Link, useNavigate, useRouterState } from "@tanstack/react-router";
import {
  Award,
  BookOpen,
  LayoutDashboard,
  LogOut,
  Search,
  ShieldCheck,
  Sparkles,
  UserRound,
} from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { useEffect, useState } from "react";
import { useQueryClient } from "@tanstack/react-query";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Breadcrumbs } from "@/components/Breadcrumbs";
import { CommandPalette } from "@/components/CommandPalette";
import { ThemeToggle } from "@/components/ThemeToggle";

export function AppShell({ children }: { children: React.ReactNode }) {
  const navigate = useNavigate();
  const qc = useQueryClient();
  const pathname = useRouterState({ select: (s) => s.location.pathname });
  const [email, setEmail] = useState<string | null>(null);
  const [isAdmin, setIsAdmin] = useState(false);
  const [paletteOpen, setPaletteOpen] = useState(false);

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

  // ⌘K / Ctrl+K opens the command palette.
  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      if ((e.metaKey || e.ctrlKey) && e.key.toLowerCase() === "k") {
        e.preventDefault();
        setPaletteOpen((o) => !o);
      }
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, []);

  const signOut = async () => {
    await supabase.auth.signOut();
    qc.clear();
    navigate({ to: "/auth" });
  };

  const navItems = [
    { to: "/dashboard", label: "Trainee Desk", icon: LayoutDashboard },
    { to: "/skills", label: "Skills Library", icon: BookOpen },
    { to: "/passport", label: "Skills Passport", icon: Award },
    ...(isAdmin ? [{ to: "/admin", label: "Tutor/Admin", icon: ShieldCheck }] : []),
  ];

  const initial = (email?.[0] ?? "?").toUpperCase();

  return (
    <div className="app-shell min-h-screen flex flex-col bg-background">
      <header className="app-topbar sticky top-0 z-30 border-b border-border/60 bg-background/80 backdrop-blur-xl">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 h-16 flex items-center justify-between gap-4">
          <Link to="/dashboard" className="brand-lockup group flex items-center gap-3 shrink-0">
            <img
              src="/lawbridge-logo-header.png"
              alt="LawBridge"
              className="h-10 w-auto object-contain transition-transform duration-200 group-hover:scale-[1.02]"
            />
            <span className="sr-only">LawBridge Skills Portal</span>
          </Link>

          <nav className="hidden md:flex items-center gap-1 rounded-full border border-border/60 bg-card/70 p-1 shadow-sm">
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
            <button
              type="button"
              onClick={() => setPaletteOpen(true)}
              className="hidden sm:inline-flex items-center gap-2 rounded-full border border-border/60 bg-card/70 px-3 py-1.5 text-xs text-muted-foreground shadow-sm hover:text-foreground transition-colors"
              aria-label="Open command palette"
            >
              <Search className="h-3.5 w-3.5" />
              <span className="hidden lg:inline">Search…</span>
              <kbd className="hidden lg:inline rounded border border-border bg-background px-1.5 font-mono text-[10px]">
                ⌘K
              </kbd>
            </button>

            <ThemeToggle />

            <DropdownMenu>
              <DropdownMenuTrigger asChild>
                <button
                  type="button"
                  className="flex h-9 w-9 items-center justify-center rounded-full bg-primary text-primary-foreground text-sm font-semibold shadow-sm ring-1 ring-border/50 transition-transform hover:scale-[1.04]"
                  aria-label="Account menu"
                >
                  {initial}
                </button>
              </DropdownMenuTrigger>
              <DropdownMenuContent align="end" className="w-60">
                <DropdownMenuLabel className="flex flex-col gap-1">
                  <span className="text-xs font-normal text-muted-foreground">Signed in as</span>
                  <span className="truncate">{email ?? "Account"}</span>
                  <span className="mt-1 inline-flex w-fit items-center gap-1 rounded-full bg-secondary px-2 py-0.5 text-[10px] font-medium text-secondary-foreground">
                    <UserRound className="h-3 w-3" />
                    {isAdmin ? "Tutor / Admin" : "Student"}
                  </span>
                </DropdownMenuLabel>
                <DropdownMenuSeparator />
                <DropdownMenuItem onSelect={() => navigate({ to: "/passport" })}>
                  <Award className="mr-2 h-4 w-4" /> Skills Passport
                </DropdownMenuItem>
                <DropdownMenuItem onSelect={() => setPaletteOpen(true)}>
                  <Search className="mr-2 h-4 w-4" /> Search…
                </DropdownMenuItem>
                <DropdownMenuSeparator />
                <DropdownMenuItem onSelect={signOut} className="text-destructive focus:text-destructive">
                  <LogOut className="mr-2 h-4 w-4" /> Sign out
                </DropdownMenuItem>
              </DropdownMenuContent>
            </DropdownMenu>
          </div>
        </div>

        <nav className="md:hidden border-t border-border/60 bg-card/80 px-2 py-2 flex gap-2 overflow-x-auto">
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

      <div className="mx-auto w-full max-w-7xl px-4 sm:px-6 pt-4">
        <Breadcrumbs pathname={pathname} />
      </div>

      <main className="flex-1 mx-auto w-full max-w-7xl px-4 sm:px-6 py-6 md:py-8 animate-in fade-in duration-300">
        {children}
      </main>

      <footer className="app-footer border-t border-border/60 py-6 text-center text-xs text-muted-foreground">
        <div className="mx-auto flex max-w-7xl items-center justify-center gap-2 px-4">
          <Sparkles className="h-3.5 w-3.5 text-accent" />
          LawBridge Skills Portal · Trainee-style legal simulation workspace
        </div>
      </footer>

      <CommandPalette open={paletteOpen} onOpenChange={setPaletteOpen} isAdmin={isAdmin} />
    </div>
  );
}
