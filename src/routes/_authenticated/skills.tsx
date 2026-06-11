import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { useMemo, useState } from "react";
import { supabase } from "@/integrations/supabase/client";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import {
  ArrowRight,
  BookOpen,
  CheckCircle2,
  Clock,
  Filter,
  Layers3,
  Search,
  Sparkles,
} from "lucide-react";

export const Route = createFileRoute("/_authenticated/skills")({
  head: () => ({ meta: [{ title: "Skills Library — LawBridge" }] }),
  component: SkillsLibrary,
});

function SkillsLibrary() {
  const [q, setQ] = useState("");
  const [categoryId, setCategoryId] = useState<string | "all">("all");
  const [statusFilter, setStatusFilter] = useState<string | "all">("all");

  const { data } = useQuery({
    queryKey: ["library"],
    queryFn: async () => {
      const { data: user } = await supabase.auth.getUser();
      const uid = user.user!.id;
      const [cats, skills, scenarios, progress] = await Promise.all([
        supabase.from("course_categories").select("*").order("display_order"),
        supabase.from("skills").select("*").order("display_order"),
        supabase
          .from("scenarios")
          .select("id, code, title, skill_id, matter_type, difficulty_level, recommended_time")
          .order("display_order"),
        supabase
          .from("progress")
          .select("scenario_id, status, completion_percentage, last_opened_at")
          .eq("user_id", uid),
      ]);
      return {
        cats: cats.data ?? [],
        skills: skills.data ?? [],
        scenarios: scenarios.data ?? [],
        progress: progress.data ?? [],
      };
    },
  });

  const progressMap = useMemo(
    () => new Map((data?.progress ?? []).map((p: any) => [p.scenario_id, p])),
    [data?.progress],
  );

  const filtered = useMemo(() => {
    if (!data) return [];
    const term = q.trim().toLowerCase();
    return data.skills
      .filter((s: any) => categoryId === "all" || s.category_id === categoryId)
      .map((skill: any) => {
        const scenarios = data.scenarios.filter((sc: any) => {
          const status = progressMap.get(sc.id)?.status ?? "not_started";
          const matchesStatus = statusFilter === "all" || status === statusFilter;
          const matchesTerm =
            !term ||
            sc.title.toLowerCase().includes(term) ||
            sc.code.toLowerCase().includes(term) ||
            skill.name.toLowerCase().includes(term) ||
            (sc.matter_type ?? "").toLowerCase().includes(term);
          return sc.skill_id === skill.id && matchesStatus && matchesTerm;
        });
        return { skill, scenarios };
      })
      .filter((g) => g.scenarios.length > 0 || (!term && statusFilter === "all"));
  }, [data, q, categoryId, statusFilter, progressMap]);

  if (!data) return <div className="text-muted-foreground">Loading library…</div>;

  const total = data.scenarios.length;
  const completed = data.progress.filter((p: any) => p.status === "completed").length;
  const submitted = data.progress.filter((p: any) => p.status === "submitted").length;
  const inProgress = data.progress.filter((p: any) => p.status === "in_progress").length;
  const visibleCount = filtered.reduce((sum, group) => sum + group.scenarios.length, 0);

  return (
    <div className="skills-page space-y-7">
      <section className="skills-hero rounded-3xl border border-border/70 p-6 sm:p-8 shadow-sm">
        <div className="grid gap-5 lg:grid-cols-[1fr_360px] lg:items-end">
          <div>
            <div className="inline-flex items-center gap-2 rounded-full border border-white/30 bg-white/50 px-3 py-1 text-xs font-medium text-primary shadow-sm">
              <BookOpen className="h-3.5 w-3.5 text-accent" /> Skills Library
            </div>
            <h1 className="mt-4 text-3xl font-semibold tracking-tight sm:text-4xl">
              Choose a skill. Open a matter file. Produce the work.
            </h1>
            <p className="mt-3 max-w-2xl text-sm sm:text-base text-muted-foreground">
              Browse the legal and practical simulations by category, progress status or matter type.
              Each scenario contains exhibits, task workspaces, final submission and tutor guidance.
            </p>
          </div>
          <div className="grid grid-cols-2 gap-3">
            <LibraryMiniStat icon={Layers3} label="Scenarios" value={total} />
            <LibraryMiniStat icon={Clock} label="In progress" value={inProgress} />
            <LibraryMiniStat icon={CheckCircle2} label="Submitted" value={submitted} />
            <LibraryMiniStat icon={Sparkles} label="Completed" value={completed} />
          </div>
        </div>
      </section>

      <Card className="library-filter-card p-4 shadow-sm">
        <div className="flex flex-col gap-3 lg:flex-row lg:items-center">
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input
              className="h-11 pl-9"
              placeholder="Search by skill, scenario code, matter type or title…"
              value={q}
              onChange={(e) => setQ(e.target.value)}
            />
          </div>
          <div className="flex flex-wrap gap-2">
            <FilterChip active={categoryId === "all"} onClick={() => setCategoryId("all")}>
              All categories
            </FilterChip>
            {data.cats.map((c: any) => (
              <FilterChip key={c.id} active={categoryId === c.id} onClick={() => setCategoryId(c.id)}>
                {c.name}
              </FilterChip>
            ))}
          </div>
        </div>
        <div className="mt-3 flex flex-wrap items-center gap-2 border-t border-border/70 pt-3">
          <span className="inline-flex items-center gap-1 text-xs font-medium uppercase tracking-wide text-muted-foreground">
            <Filter className="h-3.5 w-3.5" /> Status
          </span>
          {[
            ["all", "All"],
            ["not_started", "Not started"],
            ["in_progress", "In progress"],
            ["submitted", "Submitted"],
            ["completed", "Completed"],
          ].map(([value, label]) => (
            <FilterChip key={value} active={statusFilter === value} onClick={() => setStatusFilter(value)} small>
              {label}
            </FilterChip>
          ))}
          <span className="ml-auto text-xs text-muted-foreground">
            Showing {visibleCount} of {total} simulations
          </span>
        </div>
      </Card>

      <div className="space-y-8">
        {filtered.map(({ skill, scenarios }: any) => {
          const skillTotal = data.scenarios.filter((s: any) => s.skill_id === skill.id).length;
          const skillStarted = data.scenarios.filter((s: any) => {
            const status = progressMap.get(s.id)?.status;
            return s.skill_id === skill.id && status && status !== "not_started";
          }).length;
          const skillPercent = skillTotal ? Math.round((skillStarted / skillTotal) * 100) : 0;

          return (
            <section key={skill.id} className="skill-section rounded-3xl border border-border/70 bg-card/80 p-4 sm:p-5 shadow-sm">
              <div className="mb-4 flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
                <div>
                  <div className="flex items-center gap-3">
                    <Badge variant="outline" className="font-mono text-[10px]">
                      {skill.code}
                    </Badge>
                    <h2 className="text-xl font-semibold">{skill.name}</h2>
                  </div>
                  {skill.description && (
                    <p className="mt-2 max-w-3xl text-sm text-muted-foreground">{skill.description}</p>
                  )}
                </div>
                <div className="min-w-[170px] rounded-2xl bg-secondary/60 p-3">
                  <div className="mb-1 flex items-center justify-between text-xs text-muted-foreground">
                    <span>Started</span>
                    <span>{skillStarted}/{skillTotal}</span>
                  </div>
                  <Progress value={skillPercent} />
                </div>
              </div>

              <div className="grid md:grid-cols-2 xl:grid-cols-3 gap-3">
                {scenarios.map((sc: any) => (
                  <ScenarioCard key={sc.id} scenario={sc} progress={progressMap.get(sc.id)} />
                ))}
                {scenarios.length === 0 && (
                  <p className="col-span-full rounded-2xl border border-dashed border-border p-5 text-sm text-muted-foreground">
                    No simulations match your current filters.
                  </p>
                )}
              </div>
            </section>
          );
        })}
      </div>
    </div>
  );
}

function ScenarioCard({ scenario, progress }: { scenario: any; progress?: any }) {
  const status = progress?.status ?? "not_started";
  const percent = progress?.completion_percentage ?? (status === "submitted" ? 80 : status === "completed" ? 100 : 0);

  return (
    <Link to="/scenarios/$code" params={{ code: scenario.code }} className="group block h-full">
      <Card className="scenario-card h-full overflow-hidden p-4 transition-all hover:-translate-y-0.5 hover:border-accent/50 hover:shadow-md">
        <div className="flex items-start justify-between gap-3">
          <div className="min-w-0">
            <div className="flex flex-wrap items-center gap-2 text-xs text-muted-foreground">
              <Badge variant="secondary" className="font-mono text-[10px]">
                {scenario.code}
              </Badge>
              {scenario.difficulty_level && <span>{scenario.difficulty_level}</span>}
              {scenario.recommended_time && <span>· {scenario.recommended_time}</span>}
            </div>
            <h3 className="mt-2 font-semibold leading-snug text-foreground line-clamp-2">{scenario.title}</h3>
            {scenario.matter_type && <p className="mt-2 text-xs text-muted-foreground line-clamp-2">{scenario.matter_type}</p>}
          </div>
          <ArrowRight className="mt-1 h-4 w-4 shrink-0 text-muted-foreground transition-colors group-hover:text-accent" />
        </div>
        <div className="mt-4 space-y-2">
          <div className="flex items-center justify-between gap-2 text-xs">
            <StatusBadge status={status} />
            <span className="text-muted-foreground">{percent}%</span>
          </div>
          <Progress value={percent} />
        </div>
      </Card>
    </Link>
  );
}

function LibraryMiniStat({ icon: Icon, label, value }: { icon: any; label: string; value: number }) {
  return (
    <div className="rounded-2xl border border-white/40 bg-white/55 p-4 shadow-sm backdrop-blur">
      <Icon className="h-4 w-4 text-accent" />
      <div className="mt-2 text-2xl font-semibold">{value}</div>
      <div className="text-xs text-muted-foreground">{label}</div>
    </div>
  );
}

function FilterChip({
  active,
  onClick,
  children,
  small = false,
}: {
  active: boolean;
  onClick: () => void;
  children: React.ReactNode;
  small?: boolean;
}) {
  return (
    <button
      onClick={onClick}
      className={`rounded-full border transition-colors ${small ? "px-2.5 py-1 text-xs" : "px-3 py-1.5 text-sm"} ${
        active
          ? "border-primary bg-primary text-primary-foreground shadow-sm"
          : "border-border bg-card text-foreground hover:border-accent/50 hover:bg-secondary/60"
      }`}
    >
      {children}
    </button>
  );
}

function StatusBadge({ status }: { status: string }) {
  const map: Record<string, { label: string; cls: string }> = {
    not_started: { label: "Not started", cls: "bg-secondary text-muted-foreground" },
    in_progress: { label: "In progress", cls: "bg-accent/10 text-accent" },
    submitted: { label: "Submitted", cls: "bg-blue-100 text-blue-700 dark:bg-blue-950 dark:text-blue-300" },
    completed: { label: "Completed", cls: "bg-emerald-100 text-emerald-700 dark:bg-emerald-950 dark:text-emerald-300" },
  };
  const m = map[status] ?? map.not_started;
  return <span className={`rounded-full px-2 py-0.5 text-[10px] font-medium ${m.cls}`}>{m.label}</span>;
}
