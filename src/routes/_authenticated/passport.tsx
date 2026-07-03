import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Progress } from "@/components/ui/progress";
import { Button } from "@/components/ui/button";
import {
  ArrowRight,
  Award,
  BookOpenCheck,
  BriefcaseBusiness,
  CheckCircle2,
  FileCheck2,
  GraduationCap,
  Radar as RadarIcon,
  ShieldAlert,
  Sparkles,
  Target,
} from "lucide-react";
import { MasteryRadar } from "@/components/charts/MasteryRadar";
import { PageSkeleton } from "@/components/PageSkeleton";

export const Route = createFileRoute("/_authenticated/passport")({
  head: () => ({ meta: [{ title: "Skills Passport — LawBridge" }] }),
  component: PassportPage,
});

const PASSPORT_SKILLS = [
  { label: "Evidence use", icon: FileCheck2, match: ["evidence", "analysis", "attendance"] },
  { label: "Client communication", icon: BriefcaseBusiness, match: ["client", "communication", "email"] },
  { label: "Drafting", icon: BookOpenCheck, match: ["draft", "drafting", "document"] },
  { label: "Risk spotting", icon: ShieldAlert, match: ["risk", "commercial", "strategy"] },
  { label: "Professional judgement", icon: GraduationCap, match: ["judgement", "practical", "professional"] },
];

function PassportPage() {
  const { data } = useQuery({
    queryKey: ["skills-passport"],
    queryFn: async () => {
      const { data: user } = await supabase.auth.getUser();
      const uid = user.user!.id;
      const [profileRes, categoriesRes, skillsRes, scenariosRes, progressRes, submissionsRes] = await Promise.all([
        supabase.from("profiles").select("full_name, email, created_at").eq("id", uid).maybeSingle(),
        supabase.from("course_categories").select("id, name").order("display_order"),
        supabase.from("skills").select("id, name, code, category_id, description").order("display_order"),
        supabase.from("scenarios").select("id, code, title, skill_id, difficulty_level, recommended_time").order("display_order"),
        supabase.from("progress").select("scenario_id, status, completion_percentage, updated_at").eq("user_id", uid),
        supabase.from("submissions").select("id, scenario_id, status, submitted_at, updated_at").eq("user_id", uid),
      ]);
      return {
        profile: profileRes.data,
        categories: categoriesRes.data ?? [],
        skills: skillsRes.data ?? [],
        scenarios: scenariosRes.data ?? [],
        progress: progressRes.data ?? [],
        submissions: submissionsRes.data ?? [],
      };
    },
  });

  if (!data) return <PageSkeleton />;

  const progressMap = new Map((data.progress ?? []).map((p: any) => [p.scenario_id, p]));
  const completed = data.progress.filter((p: any) => p.status === "completed").length;
  const submitted = data.progress.filter((p: any) => p.status === "submitted").length;
  const inProgress = data.progress.filter((p: any) => p.status === "in_progress").length;
  const total = data.scenarios.length;
  const score = total ? Math.round(((completed + submitted * 0.85 + inProgress * 0.45) / total) * 100) : 0;
  const firstName = data.profile?.full_name?.split(" ")[0] ?? "there";
  const nextScenario = data.scenarios.find((s: any) => !progressMap.get(s.id));

  const radarData = data.skills.map((skill: any) => {
    const skillScenarios = data.scenarios.filter((s: any) => s.skill_id === skill.id);
    const done = skillScenarios.filter((s: any) => {
      const status = progressMap.get(s.id)?.status;
      return status === "completed" || status === "submitted";
    }).length;
    return {
      skill: skill.code,
      value: skillScenarios.length ? Math.round((done / skillScenarios.length) * 100) : 0,
    };
  });

  return (
    <div className="passport-page space-y-8">
      <section className="passport-hero rounded-3xl border border-border/70 p-6 sm:p-8 shadow-sm">
        <div className="grid gap-6 lg:grid-cols-[1fr_320px] lg:items-end">
          <div>
            <div className="inline-flex items-center gap-2 rounded-full border border-white/30 bg-white/55 px-3 py-1 text-xs font-medium text-primary shadow-sm">
              <Award className="h-3.5 w-3.5 text-accent" /> LawBridge Skills Passport
            </div>
            <h1 className="mt-4 text-3xl font-semibold tracking-tight sm:text-4xl">
              Your practical legal skills record, {firstName}.
            </h1>
            <p className="mt-3 max-w-2xl text-sm sm:text-base text-muted-foreground">
              Track your progress across matter-file simulations, submission milestones, evidence use and professional judgement. This page is designed to become an exportable learning record later.
            </p>
          </div>
          <Card className="passport-score-card bg-card/90 backdrop-blur">
            <CardContent className="p-5">
              <div className="flex items-end justify-between">
                <div>
                  <p className="text-xs uppercase tracking-[0.18em] text-muted-foreground">Readiness score</p>
                  <div className="mt-2 text-5xl font-semibold tracking-tight">{score}%</div>
                </div>
                <Sparkles className="h-7 w-7 text-accent" />
              </div>
              <Progress value={score} className="mt-4" />
              <p className="mt-3 text-xs text-muted-foreground">Based on opened, submitted and completed simulations.</p>
            </CardContent>
          </Card>
        </div>
      </section>

      <div className="grid sm:grid-cols-2 xl:grid-cols-4 gap-4">
        <PassportStat label="Total simulations" value={total} detail="Available in your library" />
        <PassportStat label="In progress" value={inProgress} detail="Drafting or reviewing" />
        <PassportStat label="Submitted" value={submitted} detail="Ready for review" />
        <PassportStat label="Completed" value={completed} detail="Marked complete" />
      </div>

      <div className="grid gap-6 xl:grid-cols-[1fr_360px]">
        <div className="space-y-6">
        <Card className="p-5">
          <CardHeader className="p-0 pb-2">
            <CardTitle className="flex items-center gap-2 text-lg">
              <RadarIcon className="h-5 w-5 text-accent" /> Mastery radar
            </CardTitle>
          </CardHeader>
          <CardContent className="p-0">
            <MasteryRadar data={radarData} />
            <p className="mt-1 text-center text-xs text-muted-foreground">
              Completion across your {radarData.length} skill areas.
            </p>
          </CardContent>
        </Card>

        <Card className="p-5">
          <CardHeader className="p-0 pb-4">
            <CardTitle className="flex items-center gap-2 text-lg">
              <Target className="h-5 w-5 text-accent" /> Skill development map
            </CardTitle>
          </CardHeader>
          <CardContent className="p-0 space-y-4">
            {data.skills.map((skill: any) => {
              const skillScenarios = data.scenarios.filter((s: any) => s.skill_id === skill.id);
              const done = skillScenarios.filter((s: any) => {
                const status = progressMap.get(s.id)?.status;
                return status === "completed" || status === "submitted";
              }).length;
              const pct = skillScenarios.length ? Math.round((done / skillScenarios.length) * 100) : 0;
              return (
                <div key={skill.id} className="rounded-2xl border border-border/70 bg-background/70 p-4">
                  <div className="mb-2 flex items-start justify-between gap-3">
                    <div>
                      <div className="flex items-center gap-2">
                        <Badge variant="outline" className="font-mono text-[10px]">{skill.code}</Badge>
                        <h3 className="font-semibold">{skill.name}</h3>
                      </div>
                      {skill.description && <p className="mt-1 line-clamp-2 text-xs text-muted-foreground">{skill.description}</p>}
                    </div>
                    <span className="text-xs font-medium text-muted-foreground">{done}/{skillScenarios.length}</span>
                  </div>
                  <Progress value={pct} />
                </div>
              );
            })}
          </CardContent>
        </Card>
        </div>

        <aside className="space-y-4">
          <Card className="p-5">
            <h3 className="flex items-center gap-2 font-semibold">
              <CheckCircle2 className="h-4 w-4 text-accent" /> Capability badges
            </h3>
            <div className="mt-4 space-y-3">
              {PASSPORT_SKILLS.map((skill) => {
                const matchedScenarios = data.scenarios.filter((scenario: any) =>
                  skill.match.some((term) => `${scenario.title} ${scenario.code}`.toLowerCase().includes(term)),
                );
                const done = matchedScenarios.filter((s: any) => {
                  const status = progressMap.get(s.id)?.status;
                  return status === "completed" || status === "submitted";
                }).length;
                const pct = matchedScenarios.length ? Math.round((done / matchedScenarios.length) * 100) : Math.min(score, 100);
                return (
                  <div key={skill.label} className="rounded-2xl border border-border bg-card p-3">
                    <div className="mb-2 flex items-center justify-between gap-2">
                      <div className="flex items-center gap-2 text-sm font-medium">
                        <skill.icon className="h-4 w-4 text-accent" /> {skill.label}
                      </div>
                      <span className="text-xs text-muted-foreground">{pct}%</span>
                    </div>
                    <Progress value={pct} />
                  </div>
                );
              })}
            </div>
          </Card>

          <Card className="p-5">
            <h3 className="font-semibold">Recommended next step</h3>
            {nextScenario ? (
              <div className="mt-3">
                <Badge variant="secondary" className="font-mono text-[10px]">{nextScenario.code}</Badge>
                <p className="mt-2 text-sm font-medium">{nextScenario.title}</p>
                <Button asChild className="mt-4 w-full">
                  <Link to="/scenarios/$code" params={{ code: nextScenario.code }}>
                    Open simulation <ArrowRight className="ml-2 h-4 w-4" />
                  </Link>
                </Button>
              </div>
            ) : (
              <p className="mt-2 text-sm text-muted-foreground">You have opened every simulation. Review submitted work and improve your final answers.</p>
            )}
          </Card>
        </aside>
      </div>
    </div>
  );
}

function PassportStat({ label, value, detail }: { label: string; value: number; detail: string }) {
  return (
    <Card className="passport-stat-card">
      <CardContent className="p-5">
        <div className="text-3xl font-semibold">{value}</div>
        <div className="mt-1 text-sm font-medium">{label}</div>
        <div className="mt-1 text-xs text-muted-foreground">{detail}</div>
      </CardContent>
    </Card>
  );
}
