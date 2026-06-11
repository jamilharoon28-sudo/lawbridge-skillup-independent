import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Progress } from "@/components/ui/progress";
import { BookOpen, CheckCircle2, Clock, ArrowRight } from "lucide-react";
import { Button } from "@/components/ui/button";

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

      const [profileRes, scenariosRes, progressRes] = await Promise.all([
        supabase.from("profiles").select("full_name").eq("id", uid).maybeSingle(),
        supabase
          .from("scenarios")
          .select("id, code, title, skill:skills(name, category:course_categories(name))")
          .order("display_order"),
        supabase
          .from("progress")
          .select("scenario_id, status, completion_percentage, last_opened_at")
          .eq("user_id", uid),
      ]);

      return {
        profile: profileRes.data,
        scenarios: scenariosRes.data ?? [],
        progress: progressRes.data ?? [],
      };
    },
  });

  if (!data) return <div className="text-muted-foreground">Loading…</div>;

  const total = data.scenarios.length;
  const completed = data.progress.filter((p) => p.status === "completed").length;
  const inProgress = data.progress.filter((p) => p.status === "in_progress").length;
  const submitted = data.progress.filter((p) => p.status === "submitted").length;
  const overall = total ? Math.round((completed / total) * 100) : 0;
  const progressMap = new Map(data.progress.map((p) => [p.scenario_id, p]));

  const recent = [...data.progress]
    .filter((p) => p.last_opened_at)
    .sort((a, b) => (b.last_opened_at! > a.last_opened_at! ? 1 : -1))
    .slice(0, 4)
    .map((p) => data.scenarios.find((s) => s.id === p.scenario_id))
    .filter(Boolean);

  const nextScenario = data.scenarios.find(
    (s) => !progressMap.has(s.id) || progressMap.get(s.id)?.status === "not_started",
  );

  return (
    <div className="space-y-8">
      <div>
        <h1 className="text-2xl font-semibold">
          Welcome{data.profile?.full_name ? `, ${data.profile.full_name.split(" ")[0]}` : ""}.
        </h1>
        <p className="text-muted-foreground mt-1">
          Pick up where you left off or open a new scenario.
        </p>
      </div>

      <div className="grid sm:grid-cols-4 gap-4">
        <StatCard icon={BookOpen} label="Total scenarios" value={total.toString()} />
        <StatCard icon={Clock} label="In progress" value={inProgress.toString()} />
        <StatCard icon={CheckCircle2} label="Submitted" value={submitted.toString()} />
        <StatCard icon={CheckCircle2} label="Completed" value={`${completed} / ${total}`} />
      </div>

      <Card>
        <CardHeader>
          <CardTitle className="text-base">Overall progress</CardTitle>
        </CardHeader>
        <CardContent>
          <Progress value={overall} />
          <p className="text-xs text-muted-foreground mt-2">{overall}% of scenarios completed</p>
        </CardContent>
      </Card>

      {nextScenario && (
        <Card className="border-accent/40 bg-accent/5">
          <CardContent className="pt-6 flex flex-col sm:flex-row sm:items-center justify-between gap-4">
            <div>
              <p className="text-xs font-medium text-accent uppercase tracking-wide">
                Recommended next
              </p>
              <h2 className="text-lg font-semibold mt-1">{nextScenario.title}</h2>
              <p className="text-sm text-muted-foreground mt-1">
                Open the next untouched scenario and start building your evidence-based answer.
              </p>
            </div>
            <ButtonLink scenario={nextScenario} />
          </CardContent>
        </Card>
      )}

      {recent.length > 0 && (
        <div>
          <h2 className="text-lg font-semibold mb-3">Continue</h2>
          <div className="grid md:grid-cols-2 gap-3">
            {recent.map(
              (s) => s && <ScenarioRow key={s.id} scenario={s} progress={progressMap.get(s.id)} />,
            )}
          </div>
        </div>
      )}

      <div>
        <div className="flex items-baseline justify-between mb-3">
          <h2 className="text-lg font-semibold">All scenarios</h2>
          <Link to="/skills" className="text-sm text-accent hover:underline">
            Skills library →
          </Link>
        </div>
        <div className="grid md:grid-cols-2 gap-3">
          {data.scenarios.slice(0, 8).map((s) => (
            <ScenarioRow key={s.id} scenario={s} progress={progressMap.get(s.id)} />
          ))}
        </div>
      </div>
    </div>
  );
}

function StatCard({ icon: Icon, label, value }: { icon: any; label: string; value: string }) {
  return (
    <Card>
      <CardContent className="pt-6 flex items-center gap-4">
        <div className="w-10 h-10 rounded-md bg-secondary flex items-center justify-center text-accent">
          <Icon className="w-5 h-5" />
        </div>
        <div>
          <div className="text-2xl font-semibold">{value}</div>
          <div className="text-xs text-muted-foreground">{label}</div>
        </div>
      </CardContent>
    </Card>
  );
}

function ScenarioRow({ scenario, progress }: { scenario: any; progress?: any }) {
  const status = progress?.status ?? "not_started";
  return (
    <Link
      to="/scenarios/$code"
      params={{ code: scenario.code }}
      className="group rounded-lg border border-border bg-card p-4 hover:border-accent transition-colors flex items-start justify-between gap-3"
    >
      <div className="min-w-0">
        <div className="flex items-center gap-2 text-xs text-muted-foreground">
          <Badge variant="outline" className="font-mono text-[10px]">
            {scenario.code}
          </Badge>
          <span className="truncate">{scenario.skill?.name}</span>
        </div>
        <h3 className="mt-1.5 font-medium text-foreground line-clamp-2">{scenario.title}</h3>
        <div className="mt-2 flex items-center gap-2 text-xs">
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
  return (
    <span className={`text-[10px] px-2 py-0.5 rounded-full font-medium ${m.cls}`}>{m.label}</span>
  );
}

function ButtonLink({ scenario }: { scenario: any }) {
  return (
    <Button asChild>
      <Link to="/scenarios/$code" params={{ code: scenario.code }}>
        Open scenario <ArrowRight className="w-4 h-4 ml-2" />
      </Link>
    </Button>
  );
}
