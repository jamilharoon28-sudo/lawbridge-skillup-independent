import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Progress } from "@/components/ui/progress";
import { Button } from "@/components/ui/button";
import {
  ArrowRight,
  BookOpen,
  CheckCircle2,
  Clock,
  FileText,
  GraduationCap,
  Layers3,
  Send,
  Sparkles,
  Target,
} from "lucide-react";

export const Route = createFileRoute("/_authenticated/dashboard")({
  head: () => ({ meta: [{ title: "Dashboard — LawBridge" }] }),
  component: Dashboard,
});

function Dashboard() {
  const { data } = useQuery({
    queryKey: ["dashboard"],
    queryFn: async () => {
      const { data: user } = await supabase.auth.getUser();
      const uid = user.user!.id;

      const [profileRes, scenariosRes, progressRes, submissionsRes] = await Promise.all([
        supabase.from("profiles").select("full_name, email").eq("id", uid).maybeSingle(),
        supabase
          .from("scenarios")
          .select(
            "id, code, title, matter_type, difficulty_level, recommended_time, skill:skills(name, code, category:course_categories(name))",
          )
          .order("display_order"),
        supabase
          .from("progress")
          .select("scenario_id, status, completion_percentage, last_opened_at")
          .eq("user_id", uid),
        supabase
          .from("submissions")
          .select("id, scenario_id, status, submitted_at, updated_at")
          .eq("user_id", uid)
          .order("updated_at", { ascending: false }),
      ]);

      return {
        profile: profileRes.data,
        scenarios: scenariosRes.data ?? [],
        progress: progressRes.data ?? [],
        submissions: submissionsRes.data ?? [],
      };
    },
  });

  if (!data) return <div className="text-muted-foreground">Loading dashboard…</div>;

  const total = data.scenarios.length;
  const progressMap = new Map(data.progress.map((p: any) => [p.scenario_id, p]));
  const completed = data.progress.filter((p: any) => p.status === "completed").length;
  const inProgress = data.progress.filter((p: any) => p.status === "in_progress").length;
  const submitted = data.progress.filter((p: any) => p.status === "submitted").length;
  const touched = data.progress.length;
  const overall = total ? Math.round(((completed + submitted * 0.8 + inProgress * 0.45) / total) * 100) : 0;

  const recent = [...data.progress]
    .filter((p: any) => p.last_opened_at)
    .sort((a: any, b: any) => (b.last_opened_at! > a.last_opened_at! ? 1 : -1))
    .slice(0, 4)
    .map((p: any) => data.scenarios.find((s: any) => s.id === p.scenario_id))
    .filter(Boolean);

  const nextScenario = data.scenarios.find((s: any) => {
    const status = progressMap.get(s.id)?.status ?? "not_started";
    return status === "not_started";
  }) ?? data.scenarios.find((s: any) => progressMap.get(s.id)?.status === "in_progress");

  const categoryStats = buildCategoryStats(data.scenarios, progressMap);
  const firstName = data.profile?.full_name?.split(" ")[0] ?? "there";

  return (
    <div className="dashboard-page space-y-8">
      <section className="dashboard-hero rounded-3xl border border-border/70 p-6 sm:p-8 shadow-sm">
        <div className="grid gap-6 lg:grid-cols-[1fr_340px] lg:items-end">
          <div>
            <div className="inline-flex items-center gap-2 rounded-full border border-white/30 bg-white/50 px-3 py-1 text-xs font-medium text-primary shadow-sm">
              <Sparkles className="h-3.5 w-3.5 text-accent" /> Independent LawBridge workspace
            </div>
            <h1 className="mt-4 text-3xl font-semibold tracking-tight sm:text-4xl">
              Welcome back, {firstName}.
            </h1>
            <p className="mt-3 max-w-2xl text-sm sm:text-base text-muted-foreground">
              Continue realistic matter-file simulations, build evidence-backed answers, and track
              your progress from first read-through to final submission.
            </p>
            <div className="mt-5 flex flex-wrap gap-3">
              <Button asChild>
                <Link to="/skills">
                  Open skills library <ArrowRight className="ml-2 h-4 w-4" />
                </Link>
              </Button>
              {nextScenario && <ButtonLink scenario={nextScenario} variant="outline" label="Continue next" />}
            </div>
          </div>

          <Card className="bg-card/85 shadow-sm backdrop-blur">
            <CardHeader className="pb-3">
              <CardTitle className="flex items-center gap-2 text-base">
                <Target className="h-4 w-4 text-accent" /> Overall progress
              </CardTitle>
            </CardHeader>
            <CardContent>
              <div className="flex items-end justify-between gap-3">
                <div className="text-4xl font-semibold tracking-tight">{overall}%</div>
                <div className="text-right text-xs text-muted-foreground">
                  {touched} opened · {completed} completed
                </div>
              </div>
              <Progress value={overall} className="mt-4" />
              <p className="mt-3 text-xs text-muted-foreground">
                Submitted work counts toward progress while it waits for review.
              </p>
            </CardContent>
          </Card>
        </div>
      </section>

      <div className="grid sm:grid-cols-2 xl:grid-cols-4 gap-4">
        <StatCard icon={BookOpen} label="Total simulations" value={total.toString()} detail="Across legal and practical skills" />
        <StatCard icon={Clock} label="In progress" value={inProgress.toString()} detail="Started but not submitted" />
        <StatCard icon={Send} label="Submitted" value={submitted.toString()} detail="Waiting for tutor/admin review" />
        <StatCard icon={CheckCircle2} label="Completed" value={`${completed}/${total}`} detail="Marked complete" />
      </div>

      {nextScenario && (
        <Card className="feature-card overflow-hidden border-accent/30">
          <CardContent className="p-0">
            <div className="grid gap-0 lg:grid-cols-[1fr_280px]">
              <div className="p-6">
                <p className="text-xs font-semibold uppercase tracking-[0.18em] text-accent">
                  Recommended next simulation
                </p>
                <h2 className="mt-2 text-xl font-semibold">{nextScenario.title}</h2>
                <p className="mt-2 text-sm text-muted-foreground">
                  Open the next matter file, review the exhibits, complete each task workspace and
                  submit one final piece of work for review.
                </p>
                <div className="mt-4 flex flex-wrap gap-2 text-xs">
                  <Badge variant="outline" className="font-mono">{nextScenario.code}</Badge>
                  {nextScenario.skill?.name && <Badge variant="secondary">{nextScenario.skill.name}</Badge>}
                  {nextScenario.recommended_time && <Badge variant="secondary">{nextScenario.recommended_time}</Badge>}
                </div>
              </div>
              <div className="flex items-center justify-center border-t border-border bg-muted/40 p-6 lg:border-l lg:border-t-0">
                <ButtonLink scenario={nextScenario} label="Start workspace" />
              </div>
            </div>
          </CardContent>
        </Card>
      )}

      <div className="grid gap-6 xl:grid-cols-[1fr_360px]">
        <section className="space-y-4">
          <div className="flex items-baseline justify-between gap-3">
            <div>
              <h2 className="text-xl font-semibold">Continue working</h2>
              <p className="text-sm text-muted-foreground">Your recently opened matter files.</p>
            </div>
            <Link to="/skills" className="text-sm font-medium text-accent hover:underline">
              View all →
            </Link>
          </div>

          {recent.length > 0 ? (
            <div className="grid md:grid-cols-2 gap-3">
              {recent.map((s: any) => (
                <ScenarioRow key={s.id} scenario={s} progress={progressMap.get(s.id)} />
              ))}
            </div>
          ) : (
            <Card className="p-6 text-sm text-muted-foreground">
              No simulations opened yet. Start with the recommended simulation above.
            </Card>
          )}
        </section>

        <aside className="space-y-4">
          <Card className="p-5">
            <h3 className="flex items-center gap-2 font-semibold">
              <Layers3 className="h-4 w-4 text-accent" /> Skill coverage
            </h3>
            <div className="mt-4 space-y-4">
              {categoryStats.map((category) => (
                <div key={category.name}>
                  <div className="mb-1 flex items-center justify-between gap-2 text-sm">
                    <span className="font-medium">{category.name}</span>
                    <span className="text-xs text-muted-foreground">{category.completed}/{category.total}</span>
                  </div>
                  <Progress value={category.percent} />
                </div>
              ))}
            </div>
          </Card>

          <Card className="p-5">
            <h3 className="flex items-center gap-2 font-semibold">
              <FileText className="h-4 w-4 text-accent" /> Submission status
            </h3>
            <p className="mt-2 text-sm text-muted-foreground">
              Keep drafts in the task workspace. Submit only once your final answer cites exhibits,
              dates, clauses, emails or policy wording.
            </p>
            <div className="mt-4 grid grid-cols-2 gap-2 text-center text-sm">
              <MiniStat label="Drafts/open" value={inProgress} />
              <MiniStat label="Submitted" value={submitted} />
            </div>
          </Card>
        </aside>
      </div>
    </div>
  );
}

function buildCategoryStats(scenarios: any[], progressMap: Map<any, any>) {
  const map = new Map<string, { name: string; total: number; completed: number }>();
  for (const scenario of scenarios) {
    const name = scenario.skill?.category?.name ?? "Uncategorised";
    const current = map.get(name) ?? { name, total: 0, completed: 0 };
    current.total += 1;
    const status = progressMap.get(scenario.id)?.status;
    if (status === "completed" || status === "submitted") current.completed += 1;
    map.set(name, current);
  }
  return [...map.values()].map((entry) => ({
    ...entry,
    percent: entry.total ? Math.round((entry.completed / entry.total) * 100) : 0,
  }));
}

function StatCard({ icon: Icon, label, value, detail }: { icon: any; label: string; value: string; detail: string }) {
  return (
    <Card className="stat-card overflow-hidden">
      <CardContent className="p-5">
        <div className="flex items-start justify-between gap-4">
          <div>
            <div className="text-3xl font-semibold tracking-tight">{value}</div>
            <div className="mt-1 text-sm font-medium">{label}</div>
            <div className="mt-1 text-xs text-muted-foreground">{detail}</div>
          </div>
          <div className="stat-icon flex h-11 w-11 shrink-0 items-center justify-center rounded-2xl text-accent">
            <Icon className="h-5 w-5" />
          </div>
        </div>
      </CardContent>
    </Card>
  );
}

function MiniStat({ label, value }: { label: string; value: number }) {
  return (
    <div className="rounded-2xl border border-border bg-secondary/50 p-3">
      <div className="text-xl font-semibold">{value}</div>
      <div className="text-[11px] text-muted-foreground">{label}</div>
    </div>
  );
}

function ScenarioRow({ scenario, progress }: { scenario: any; progress?: any }) {
  const status = progress?.status ?? "not_started";
  return (
    <Link
      to="/scenarios/$code"
      params={{ code: scenario.code }}
      className="group scenario-link-card rounded-2xl border border-border bg-card p-4 shadow-sm transition-all hover:-translate-y-0.5 hover:border-accent/50 hover:shadow-md flex items-start justify-between gap-3"
    >
      <div className="min-w-0">
        <div className="flex items-center gap-2 text-xs text-muted-foreground">
          <Badge variant="outline" className="font-mono text-[10px]">
            {scenario.code}
          </Badge>
          <span className="truncate">{scenario.skill?.name}</span>
        </div>
        <h3 className="mt-2 font-semibold text-foreground line-clamp-2">{scenario.title}</h3>
        <div className="mt-3 flex flex-wrap items-center gap-2 text-xs">
          <StatusBadge status={status} />
          {progress?.completion_percentage ? (
            <span className="text-muted-foreground">{progress.completion_percentage}%</span>
          ) : null}
        </div>
      </div>
      <ArrowRight className="w-4 h-4 text-muted-foreground group-hover:text-accent shrink-0 mt-1" />
    </Link>
  );
}

function StatusBadge({ status }: { status: string }) {
  const map: Record<string, { label: string; cls: string }> = {
    not_started: { label: "Not started", cls: "bg-secondary text-muted-foreground" },
    in_progress: { label: "In progress", cls: "bg-accent/10 text-accent" },
    submitted: {
      label: "Submitted",
      cls: "bg-blue-100 text-blue-700 dark:bg-blue-950 dark:text-blue-300",
    },
    completed: {
      label: "Completed",
      cls: "bg-emerald-100 text-emerald-700 dark:bg-emerald-950 dark:text-emerald-300",
    },
  };
  const m = map[status] ?? map.not_started;
  return <span className={`rounded-full px-2 py-0.5 text-[10px] font-medium ${m.cls}`}>{m.label}</span>;
}

function ButtonLink({ scenario, label = "Open scenario", variant = "default" }: { scenario: any; label?: string; variant?: "default" | "outline" }) {
  return (
    <Button asChild variant={variant}>
      <Link to="/scenarios/$code" params={{ code: scenario.code }}>
        {label} <ArrowRight className="w-4 h-4 ml-2" />
      </Link>
    </Button>
  );
}
