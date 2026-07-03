import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Progress } from "@/components/ui/progress";
import {
  ArrowRight,
  CheckCircle2,
  ClipboardCheck,
  FileText,
  GraduationCap,
  ShieldCheck,
  Users,
} from "lucide-react";

export const Route = createFileRoute("/_authenticated/admin")({
  head: () => ({ meta: [{ title: "Admin — LawBridge" }] }),
  component: AdminPage,
});

function AdminPage() {
  const { data } = useQuery({
    queryKey: ["admin-v2"],
    queryFn: async () => {
      const { data: user } = await supabase.auth.getUser();
      const uid = user.user!.id;
      const { data: roles } = await supabase.from("user_roles").select("role").eq("user_id", uid);
      const allowed = (roles ?? []).some((r) => r.role === "admin" || r.role === "tutor");
      if (!allowed) return { allowed: false as const };

      const [profiles, allRoles, progress, scenarios, submissions, feedback] = await Promise.all([
        supabase
          .from("profiles")
          .select("id, full_name, email, created_at")
          .order("created_at", { ascending: false }),
        supabase.from("user_roles").select("user_id, role"),
        supabase.from("progress").select("user_id, scenario_id, status, completion_percentage, updated_at"),
        supabase.from("scenarios").select("id, code, title, skill:skills(name)").order("display_order"),
        supabase
          .from("submissions")
          .select(
            "id, user_id, scenario_id, status, submitted_at, updated_at, submission_text, profile:profiles(full_name, email), scenario:scenarios(code, title)",
          )
          .order("updated_at", { ascending: false })
          .limit(40),
        supabase.from("feedback").select("id, submission_id, score, feedback_text, created_at"),
      ]);

      const roleMap = new Map<string, string[]>();
      (allRoles.data ?? []).forEach((r) => {
        const arr = roleMap.get(r.user_id) ?? [];
        arr.push(r.role);
        roleMap.set(r.user_id, arr);
      });

      const progressByUser = new Map<string, any[]>();
      (progress.data ?? []).forEach((p: any) => {
        const arr = progressByUser.get(p.user_id) ?? [];
        arr.push(p);
        progressByUser.set(p.user_id, arr);
      });

      const users = (profiles.data ?? []).map((p: any) => {
        const userProgress = progressByUser.get(p.id) ?? [];
        const completed = userProgress.filter((x) => x.status === "completed").length;
        const submitted = userProgress.filter((x) => x.status === "submitted").length;
        const inProgress = userProgress.filter((x) => x.status === "in_progress").length;
        const percent = scenarios.data?.length
          ? Math.round(((completed + submitted * 0.85 + inProgress * 0.45) / scenarios.data.length) * 100)
          : 0;
        return { ...p, roles: roleMap.get(p.id) ?? ["student"], completed, submitted, inProgress, percent };
      });

      return {
        allowed: true as const,
        users,
        submissions: submissions.data ?? [],
        feedback: feedback.data ?? [],
        scenarioCount: scenarios.data?.length ?? 0,
        progressStats: {
          completed: progress.data?.filter((p) => p.status === "completed").length ?? 0,
          submitted: progress.data?.filter((p) => p.status === "submitted").length ?? 0,
          inProgress: progress.data?.filter((p) => p.status === "in_progress").length ?? 0,
          total: progress.data?.length ?? 0,
        },
      };
    },
  });

  if (!data) return <div className="text-muted-foreground">Loading tutor/admin workspace…</div>;
  if (!data.allowed) {
    return (
      <Card className="p-8 text-center">
        <ShieldCheck className="mx-auto h-8 w-8 text-muted-foreground" />
        <h2 className="mt-3 font-semibold">Access restricted</h2>
        <p className="mt-1 text-sm text-muted-foreground">This area is for tutors and administrators.</p>
      </Card>
    );
  }

  const pending = data.submissions.filter((s: any) => s.status === "submitted");
  const reviewed = data.submissions.filter((s: any) => s.status === "reviewed");

  return (
    <div className="admin-page space-y-8">
      <section className="admin-hero rounded-3xl border border-border/70 p-6 sm:p-8 shadow-sm">
        <div className="grid gap-6 lg:grid-cols-[1fr_320px] lg:items-end">
          <div>
            <div className="inline-flex items-center gap-2 rounded-full border border-white/30 bg-white/55 px-3 py-1 text-xs font-medium text-primary shadow-sm">
              <ShieldCheck className="h-3.5 w-3.5 text-accent" /> Tutor/Admin Console
            </div>
            <h1 className="mt-4 text-3xl font-semibold tracking-tight sm:text-4xl">
              Review submissions and monitor student progress.
            </h1>
            <p className="mt-3 max-w-2xl text-sm sm:text-base text-muted-foreground">
              Use this console as the LawBridge review queue: identify pending work, open scenario context, and track learner activity across the platform.
            </p>
          </div>
          <Card className="bg-card/90 backdrop-blur">
            <CardContent className="p-5">
              <p className="text-xs uppercase tracking-[0.18em] text-muted-foreground">Review queue</p>
              <div className="mt-2 text-5xl font-semibold">{pending.length}</div>
              <p className="mt-2 text-sm text-muted-foreground">Submitted items waiting for tutor/admin review.</p>
            </CardContent>
          </Card>
        </div>
      </section>

      <div className="grid sm:grid-cols-2 xl:grid-cols-5 gap-4">
        <Stat icon={Users} label="Users" value={data.users.length} />
        <Stat icon={GraduationCap} label="Scenarios" value={data.scenarioCount} />
        <Stat icon={FileText} label="In progress" value={data.progressStats.inProgress} />
        <Stat icon={ClipboardCheck} label="Submitted" value={data.progressStats.submitted} />
        <Stat icon={CheckCircle2} label="Completed" value={data.progressStats.completed} />
      </div>

      <div className="grid gap-6 xl:grid-cols-[1fr_360px]">
        <Card>
          <CardHeader>
            <CardTitle className="text-lg">Submission review queue</CardTitle>
          </CardHeader>
          <CardContent>
            {data.submissions.length === 0 ? (
              <EmptyState title="No submissions yet" body="Student final submissions will appear here once learners submit work from the scenario workspace." />
            ) : (
              <div className="space-y-3">
                {data.submissions.map((submission: any) => (
                  <div key={submission.id} className="rounded-2xl border border-border bg-card p-4 shadow-sm">
                    <div className="flex flex-wrap items-start justify-between gap-3">
                      <div>
                        <div className="flex flex-wrap items-center gap-2 text-xs text-muted-foreground">
                          <Badge variant="outline" className="font-mono text-[10px]">{submission.scenario?.code ?? "—"}</Badge>
                          <StatusBadge status={submission.status} />
                          <span>{submission.updated_at ? new Date(submission.updated_at).toLocaleDateString() : "No date"}</span>
                        </div>
                        <h3 className="mt-1 font-semibold">{submission.scenario?.title ?? "Untitled scenario"}</h3>
                        <p className="mt-1 text-xs text-muted-foreground">
                          {submission.profile?.full_name ?? "Unknown student"} · {submission.profile?.email ?? "No email"}
                        </p>
                      </div>
                      {submission.scenario?.code && (
                        <Button asChild size="sm" variant="outline">
                          <Link to="/scenarios/$code" params={{ code: submission.scenario.code }}>
                            Open matter <ArrowRight className="ml-2 h-3.5 w-3.5" />
                          </Link>
                        </Button>
                      )}
                    </div>
                    <p className="mt-3 line-clamp-4 text-sm text-muted-foreground">
                      {submission.submission_text || "No submission text provided."}
                    </p>
                  </div>
                ))}
              </div>
            )}
          </CardContent>
        </Card>

        <aside className="space-y-4">
          <Card className="p-5">
            <h3 className="font-semibold">Review summary</h3>
            <div className="mt-4 space-y-3">
              <MiniStat label="Waiting review" value={pending.length} />
              <MiniStat label="Reviewed" value={reviewed.length} />
              <MiniStat label="Feedback records" value={data.feedback.length} />
            </div>
          </Card>
          <Card className="p-5">
            <h3 className="font-semibold">Tutor workflow</h3>
            <p className="mt-2 text-sm text-muted-foreground">Open a submitted scenario, compare it against the Tutor Guide, then return structured feedback. A full in-app feedback form can be added next.</p>
          </Card>
        </aside>
      </div>

      <Card>
        <CardHeader>
          <CardTitle className="text-lg">Students and roles</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead className="border-b border-border text-left text-xs text-muted-foreground">
                <tr>
                  <th className="py-2 pr-4">Name</th>
                  <th className="py-2 pr-4">Email</th>
                  <th className="py-2 pr-4">Roles</th>
                  <th className="py-2 pr-4">Progress</th>
                  <th className="py-2">Joined</th>
                </tr>
              </thead>
              <tbody>
                {data.users.map((u: any) => (
                  <tr key={u.id} className="border-b border-border last:border-0">
                    <td className="py-3 pr-4 font-medium">{u.full_name ?? "—"}</td>
                    <td className="py-3 pr-4 text-muted-foreground">{u.email}</td>
                    <td className="py-3 pr-4">
                      <div className="flex flex-wrap gap-1">
                        {u.roles.map((r: string) => (
                          <Badge key={r} variant={r === "admin" ? "default" : r === "tutor" ? "secondary" : "outline"}>{r}</Badge>
                        ))}
                      </div>
                    </td>
                    <td className="py-3 pr-4 min-w-[160px]">
                      <div className="flex items-center gap-2">
                        <Progress value={u.percent} className="h-2" />
                        <span className="text-xs text-muted-foreground">{u.percent}%</span>
                      </div>
                    </td>
                    <td className="py-3 text-xs text-muted-foreground">{new Date(u.created_at).toLocaleDateString()}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}

function Stat({ icon: Icon, label, value }: { icon: any; label: string; value: number }) {
  return (
    <Card>
      <CardContent className="p-5">
        <Icon className="h-4 w-4 text-accent" />
        <div className="mt-2 text-3xl font-semibold">{value}</div>
        <div className="text-xs text-muted-foreground">{label}</div>
      </CardContent>
    </Card>
  );
}

function MiniStat({ label, value }: { label: string; value: number }) {
  return (
    <div className="flex items-center justify-between rounded-2xl border border-border bg-background/70 p-3 text-sm">
      <span className="text-muted-foreground">{label}</span>
      <span className="font-semibold">{value}</span>
    </div>
  );
}

function EmptyState({ title, body }: { title: string; body: string }) {
  return (
    <div className="rounded-2xl border border-dashed border-border bg-muted/20 p-8 text-center">
      <h3 className="font-semibold">{title}</h3>
      <p className="mx-auto mt-2 max-w-md text-sm text-muted-foreground">{body}</p>
    </div>
  );
}

function StatusBadge({ status }: { status: string }) {
  const map: Record<string, { label: string; cls: string }> = {
    draft: { label: "Draft", cls: "bg-secondary text-muted-foreground" },
    submitted: { label: "Submitted", cls: "bg-blue-100 text-blue-700 dark:bg-blue-950 dark:text-blue-300" },
    reviewed: { label: "Reviewed", cls: "bg-emerald-100 text-emerald-700 dark:bg-emerald-950 dark:text-emerald-300" },
  };
  const m = map[status] ?? map.draft;
  return <span className={`rounded-full px-2 py-0.5 text-[10px] font-medium ${m.cls}`}>{m.label}</span>;
}
