import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";

export const Route = createFileRoute("/_authenticated/admin")({
  head: () => ({ meta: [{ title: "Admin — LawBridge" }] }),
  component: AdminPage,
});

function AdminPage() {
  const { data } = useQuery({
    queryKey: ["admin"],
    queryFn: async () => {
      const { data: user } = await supabase.auth.getUser();
      const uid = user.user!.id;
      const { data: roles } = await supabase.from("user_roles").select("role").eq("user_id", uid);
      const allowed = (roles ?? []).some((r) => r.role === "admin" || r.role === "tutor");
      if (!allowed) return { allowed: false as const };

      const [profiles, allRoles, progress, scenarios, submissions] = await Promise.all([
        supabase
          .from("profiles")
          .select("id, full_name, email, created_at")
          .order("created_at", { ascending: false }),
        supabase.from("user_roles").select("user_id, role"),
        supabase.from("progress").select("status"),
        supabase.from("scenarios").select("id"),
        supabase
          .from("submissions")
          .select(
            "id, user_id, scenario_id, status, submitted_at, updated_at, submission_text, profile:profiles(full_name, email), scenario:scenarios(code, title)",
          )
          .order("updated_at", { ascending: false })
          .limit(20),
      ]);

      const roleMap = new Map<string, string[]>();
      (allRoles.data ?? []).forEach((r) => {
        const arr = roleMap.get(r.user_id) ?? [];
        arr.push(r.role);
        roleMap.set(r.user_id, arr);
      });

      return {
        allowed: true as const,
        users: (profiles.data ?? []).map((p) => ({ ...p, roles: roleMap.get(p.id) ?? [] })),
        submissions: submissions.data ?? [],
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

  if (!data) return <div className="text-muted-foreground">Loading…</div>;
  if (!data.allowed) {
    return (
      <Card className="p-8 text-center">
        <h2 className="font-semibold">Access restricted</h2>
        <p className="text-sm text-muted-foreground mt-1">
          This area is for tutors and administrators.
        </p>
      </Card>
    );
  }

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-semibold">Admin</h1>
        <p className="text-muted-foreground mt-1">
          Manage users, monitor activity and review submitted scenario work.
        </p>
      </div>

      <div className="grid sm:grid-cols-5 gap-3">
        <Stat label="Users" value={data.users.length} />
        <Stat label="Scenarios" value={data.scenarioCount} />
        <Stat label="In progress" value={data.progressStats.inProgress} />
        <Stat label="Submitted" value={data.progressStats.submitted} />
        <Stat label="Completed" value={data.progressStats.completed} />
      </div>

      <Card>
        <CardHeader>
          <CardTitle className="text-base">Recent submissions</CardTitle>
        </CardHeader>
        <CardContent>
          {data.submissions.length === 0 ? (
            <p className="text-sm text-muted-foreground">No student submissions yet.</p>
          ) : (
            <div className="space-y-3">
              {data.submissions.map((submission: any) => (
                <div key={submission.id} className="rounded-lg border border-border p-4 bg-card">
                  <div className="flex items-start justify-between gap-3 flex-wrap">
                    <div>
                      <div className="flex items-center gap-2 text-xs text-muted-foreground">
                        <Badge variant="outline" className="font-mono text-[10px]">
                          {submission.scenario?.code ?? "—"}
                        </Badge>
                        <StatusBadge status={submission.status} />
                      </div>
                      <h3 className="font-medium mt-1">
                        {submission.scenario?.title ?? "Untitled scenario"}
                      </h3>
                      <p className="text-xs text-muted-foreground mt-1">
                        {submission.profile?.full_name ?? "Unknown student"} ·{" "}
                        {submission.profile?.email ?? "No email"}
                      </p>
                    </div>
                    {submission.scenario?.code && (
                      <Button asChild size="sm" variant="outline">
                        <Link to="/scenarios/$code" params={{ code: submission.scenario.code }}>
                          Open scenario
                        </Link>
                      </Button>
                    )}
                  </div>
                  <p className="text-sm text-muted-foreground mt-3 line-clamp-3">
                    {submission.submission_text || "No text provided."}
                  </p>
                </div>
              ))}
            </div>
          )}
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle className="text-base">Users</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead className="text-left text-xs text-muted-foreground border-b border-border">
                <tr>
                  <th className="py-2 pr-4">Name</th>
                  <th className="py-2 pr-4">Email</th>
                  <th className="py-2 pr-4">Roles</th>
                  <th className="py-2">Joined</th>
                </tr>
              </thead>
              <tbody>
                {data.users.map((u) => (
                  <tr key={u.id} className="border-b border-border last:border-0">
                    <td className="py-2 pr-4">{u.full_name ?? "—"}</td>
                    <td className="py-2 pr-4 text-muted-foreground">{u.email}</td>
                    <td className="py-2 pr-4">
                      <div className="flex gap-1 flex-wrap">
                        {u.roles.length === 0 ? (
                          <Badge variant="outline">student</Badge>
                        ) : (
                          u.roles.map((r) => (
                            <Badge key={r} variant={r === "admin" ? "default" : "secondary"}>
                              {r}
                            </Badge>
                          ))
                        )}
                      </div>
                    </td>
                    <td className="py-2 text-xs text-muted-foreground">
                      {new Date(u.created_at).toLocaleDateString()}
                    </td>
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

function Stat({ label, value }: { label: string; value: number }) {
  return (
    <Card>
      <CardContent className="pt-6">
        <div className="text-2xl font-semibold">{value}</div>
        <div className="text-xs text-muted-foreground">{label}</div>
      </CardContent>
    </Card>
  );
}

function StatusBadge({ status }: { status: string }) {
  const map: Record<string, { label: string; cls: string }> = {
    draft: { label: "Draft", cls: "bg-secondary text-muted-foreground" },
    submitted: {
      label: "Submitted",
      cls: "bg-blue-100 text-blue-700 dark:bg-blue-950 dark:text-blue-300",
    },
    reviewed: {
      label: "Reviewed",
      cls: "bg-emerald-100 text-emerald-700 dark:bg-emerald-950 dark:text-emerald-300",
    },
  };
  const m = map[status] ?? map.draft;
  return (
    <span className={`text-[10px] px-2 py-0.5 rounded-full font-medium ${m.cls}`}>{m.label}</span>
  );
}
