import { createFileRoute, Link, useParams } from "@tanstack/react-router";
import { useQuery, useQueryClient } from "@tanstack/react-query";
import { useEffect, useMemo, useState } from "react";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import { supabase } from "@/integrations/supabase/client";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Textarea } from "@/components/ui/textarea";
import {
  ArrowLeft,
  BookOpen,
  CheckCircle2,
  FileSearch,
  FileText,
  Lock,
  Save,
  Send,
  StickyNote,
} from "lucide-react";
import { toast } from "sonner";

export const Route = createFileRoute("/_authenticated/scenarios/$code")({
  head: () => ({ meta: [{ title: "Scenario — LawBridge" }] }),
  component: ScenarioPage,
});

type ScenarioFile = {
  id?: string;
  file_name: string;
  file_type: "student_pack" | "exhibit" | "tutor_pack" | "answer_guide" | "other";
  exhibit_number: number | null;
  storage_path: string | null;
  body_md?: string | null;
  access_role: "student" | "tutor" | "admin";
  display_order: number;
};

type CourseManifest = {
  files: Array<ScenarioFile & { scenario_code: string }>;
};

async function loadManifestFiles(code: string, isTutor: boolean): Promise<ScenarioFile[]> {
  try {
    const res = await fetch("/course-content/manifest.json", { cache: "no-store" });
    if (!res.ok) return [];
    const manifest = (await res.json()) as CourseManifest;
    return manifest.files
      .filter((file) => file.scenario_code === code)
      .filter((file) => file.access_role === "student" || isTutor)
      .map((file, index) => ({
        ...file,
        id: `manifest-${code}-${index}-${file.storage_path}`,
      }))
      .sort((a, b) => a.display_order - b.display_order || a.file_name.localeCompare(b.file_name));
  } catch (error) {
    console.warn("Could not load course manifest", error);
    return [];
  }
}

function ScenarioPage() {
  const { code } = useParams({ from: "/_authenticated/scenarios/$code" });
  const qc = useQueryClient();

  const { data, isLoading } = useQuery({
    queryKey: ["scenario", code],
    queryFn: async () => {
      const { data: user } = await supabase.auth.getUser();
      const uid = user.user!.id;
      const { data: roleRows } = await supabase
        .from("user_roles")
        .select("role")
        .eq("user_id", uid);
      const roles = (roleRows ?? []).map((r) => r.role as string);
      const isTutor = roles.includes("tutor") || roles.includes("admin");

      const { data: scenario, error } = await supabase
        .from("scenarios")
        .select("*, skill:skills(name, code, category:course_categories(name))")
        .eq("code", code)
        .maybeSingle();
      if (error) throw error;
      if (!scenario) return null;

      const [filesRes, progressRes, noteRes, submissionRes] = await Promise.all([
        supabase
          .from("scenario_files")
          .select("*")
          .eq("scenario_id", scenario.id)
          .order("display_order"),
        supabase
          .from("progress")
          .select("*")
          .eq("scenario_id", scenario.id)
          .eq("user_id", uid)
          .maybeSingle(),
        supabase
          .from("notes")
          .select("*")
          .eq("scenario_id", scenario.id)
          .eq("user_id", uid)
          .maybeSingle(),
        supabase
          .from("submissions")
          .select("*")
          .eq("scenario_id", scenario.id)
          .eq("user_id", uid)
          .order("updated_at", { ascending: false })
          .limit(1)
          .maybeSingle(),
      ]);

      let files = (filesRes.data ?? []) as ScenarioFile[];
      if (files.length === 0) {
        files = await loadManifestFiles(code, isTutor);
      }

      return {
        scenario,
        files,
        progress: progressRes.data,
        note: noteRes.data,
        submission: submissionRes.data,
        uid,
        isTutor,
      };
    },
  });

  useEffect(() => {
    if (!data?.scenario || !data.uid) return;
    (async () => {
      await supabase.from("progress").upsert(
        {
          user_id: data.uid,
          scenario_id: data.scenario.id,
          status: data.progress?.status === "completed" ? "completed" : "in_progress",
          completion_percentage: data.progress?.completion_percentage ?? 25,
          last_opened_at: new Date().toISOString(),
        },
        { onConflict: "user_id,scenario_id" },
      );
    })();
  }, [data?.scenario?.id]);

  if (isLoading) return <div className="text-muted-foreground">Loading scenario…</div>;
  if (!data || !data.scenario) {
    return (
      <div className="text-center py-16">
        <p className="text-muted-foreground">Scenario not found.</p>
        <Button asChild variant="link">
          <Link to="/skills">Back to Skills Library</Link>
        </Button>
      </div>
    );
  }

  const { scenario, files, isTutor, progress } = data;
  const instructions = files.find((f) => f.file_type === "student_pack");
  const exhibits = files.filter((f) => f.file_type === "exhibit");
  const tutorGuide = files.find(
    (f) => f.file_type === "tutor_pack" || f.file_type === "answer_guide",
  );

  const toggleComplete = async () => {
    const next = progress?.status === "completed" ? "in_progress" : "completed";
    await supabase.from("progress").upsert(
      {
        user_id: data.uid,
        scenario_id: scenario.id,
        status: next,
        completion_percentage: next === "completed" ? 100 : 50,
        last_opened_at: new Date().toISOString(),
      },
      { onConflict: "user_id,scenario_id" },
    );
    toast.success(next === "completed" ? "Marked complete" : "Re-opened scenario");
    qc.invalidateQueries({ queryKey: ["scenario", code] });
    qc.invalidateQueries({ queryKey: ["dashboard"] });
  };

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between gap-3 flex-wrap">
        <Link
          to="/skills"
          className="text-sm text-muted-foreground hover:text-foreground inline-flex items-center gap-1"
        >
          <ArrowLeft className="w-4 h-4" /> Skills Library
        </Link>
        <Button
          onClick={toggleComplete}
          variant={progress?.status === "completed" ? "outline" : "default"}
          size="sm"
        >
          <CheckCircle2 className="w-4 h-4 mr-2" />
          {progress?.status === "completed" ? "Completed" : "Mark complete"}
        </Button>
      </div>

      <header className="space-y-3">
        <div className="flex items-center gap-2 flex-wrap text-xs text-muted-foreground">
          <Badge variant="outline" className="font-mono">
            {scenario.code}
          </Badge>
          <span>{scenario.skill?.category?.name}</span>
          <span>·</span>
          <span>{scenario.skill?.name}</span>
        </div>
        <h1 className="text-3xl font-semibold tracking-tight">{scenario.title}</h1>
        <div className="flex gap-2 flex-wrap text-xs">
          {scenario.matter_type && <MetaPill label="Matter" value={scenario.matter_type} />}
          {scenario.difficulty_level && (
            <MetaPill label="Level" value={scenario.difficulty_level} />
          )}
          {scenario.recommended_time && <MetaPill label="Time" value={scenario.recommended_time} />}
          {scenario.student_role && <MetaPill label="Role" value={scenario.student_role} />}
          <MetaPill label="Status" value={formatStatus(progress?.status ?? "not_started")} />
        </div>
      </header>

      {files.length === 0 && (
        <Card className="p-4 border-amber-200 bg-amber-50 text-amber-900 dark:bg-amber-950 dark:text-amber-100 dark:border-amber-900">
          <p className="text-sm font-medium">Course files are not connected yet.</p>
          <p className="text-xs mt-1">
            Run the course manifest script and/or the Supabase scenario file seed so the
            instructions, exhibits and tutor packs appear here.
          </p>
        </Card>
      )}

      <Tabs defaultValue="overview" className="w-full">
        <TabsList className="flex-wrap h-auto">
          <TabsTrigger value="overview">
            <BookOpen className="w-4 h-4 mr-1.5" />
            Overview
          </TabsTrigger>
          <TabsTrigger value="instructions">
            <FileText className="w-4 h-4 mr-1.5" />
            Instructions
          </TabsTrigger>
          <TabsTrigger value="exhibits">
            <FileSearch className="w-4 h-4 mr-1.5" />
            Exhibits ({exhibits.length})
          </TabsTrigger>
          <TabsTrigger value="workspace">
            <StickyNote className="w-4 h-4 mr-1.5" />
            Workspace
          </TabsTrigger>
          {isTutor && (
            <TabsTrigger value="tutor">
              <Lock className="w-4 h-4 mr-1.5" />
              Tutor Guide
            </TabsTrigger>
          )}
        </TabsList>

        <TabsContent value="overview" className="mt-6 space-y-4">
          <OverviewCard title="Task brief" content={scenario.task_brief} />
          <OverviewCard title="Learning outcomes" content={scenario.learning_outcomes} />
          <OverviewCard title="Required outputs" content={scenario.required_outputs} />
          {!scenario.task_brief &&
            !scenario.learning_outcomes &&
            !scenario.required_outputs &&
            instructions && (
              <Card className="p-5">
                <h3 className="font-semibold text-foreground mb-2">Start here</h3>
                <p className="text-sm text-muted-foreground">
                  Open the Instructions tab for the full task brief, learning outcomes, required
                  output bundle and working method.
                </p>
              </Card>
            )}
        </TabsContent>

        <TabsContent value="instructions" className="mt-6">
          {instructions ? (
            <FileViewer file={instructions} />
          ) : (
            <p className="text-sm text-muted-foreground">No instructions document available.</p>
          )}
        </TabsContent>

        <TabsContent value="exhibits" className="mt-6">
          <ExhibitList exhibits={exhibits} />
        </TabsContent>

        <TabsContent value="workspace" className="mt-6">
          <Workspace
            userId={data.uid}
            scenarioId={scenario.id}
            code={code}
            initialNote={data.note?.note_content ?? ""}
            initialSubmission={data.submission}
          />
        </TabsContent>

        {isTutor && (
          <TabsContent value="tutor" className="mt-6">
            <div className="mb-3 inline-flex items-center gap-2 text-xs bg-accent/10 text-accent rounded-full px-3 py-1">
              <Lock className="w-3 h-3" /> Tutor / admin only
            </div>
            {tutorGuide ? (
              <FileViewer file={tutorGuide} />
            ) : (
              <p className="text-sm text-muted-foreground">No tutor guide available.</p>
            )}
          </TabsContent>
        )}
      </Tabs>
    </div>
  );
}

function MetaPill({ label, value }: { label: string; value: string }) {
  return (
    <span className="inline-flex items-center gap-1.5 rounded-md border border-border bg-card px-2.5 py-1">
      <span className="text-muted-foreground">{label}:</span>
      <span className="font-medium text-foreground">{value}</span>
    </span>
  );
}

function OverviewCard({ title, content }: { title: string; content: string | null }) {
  if (!content) return null;
  return (
    <Card className="p-5">
      <h3 className="font-semibold text-foreground mb-2">{title}</h3>
      <div className="prose-lawbridge text-sm">
        <ReactMarkdown remarkPlugins={[remarkGfm]}>{content}</ReactMarkdown>
      </div>
    </Card>
  );
}

function ExhibitList({ exhibits }: { exhibits: ScenarioFile[] }) {
  const [active, setActive] = useState<string | null>(exhibits[0]?.id ?? null);
  const current = exhibits.find((e) => e.id === active) ?? exhibits[0];
  if (!exhibits.length) return <p className="text-sm text-muted-foreground">No exhibits.</p>;
  return (
    <div className="grid md:grid-cols-[260px_1fr] gap-4">
      <aside className="space-y-1">
        {exhibits.map((e) => (
          <button
            key={e.id ?? e.storage_path ?? e.file_name}
            onClick={() => setActive(e.id ?? null)}
            className={`w-full text-left rounded-md px-3 py-2 text-sm border transition-colors ${
              current?.id === e.id
                ? "bg-secondary border-border font-medium"
                : "bg-card border-transparent hover:border-border"
            }`}
          >
            <div className="text-xs text-muted-foreground">Exhibit {e.exhibit_number ?? "·"}</div>
            <div className="truncate">{e.file_name}</div>
          </button>
        ))}
      </aside>
      <div>{current && <FileViewer file={current} />}</div>
    </div>
  );
}

function FileViewer({ file }: { file: ScenarioFile }) {
  const path = file.storage_path;
  const [md, setMd] = useState<string | null>(file.body_md ?? null);
  const [loading, setLoading] = useState(!file.body_md && !!path);
  const [error, setError] = useState<string | null>(null);

  const url = useMemo(
    () => (path ? `/course-content/${path.split("/").map(encodeURIComponent).join("/")}` : null),
    [path],
  );

  useEffect(() => {
    if (file.body_md || !url) return;
    setLoading(true);
    setError(null);
    fetch(url)
      .then((r) => (r.ok ? r.text() : Promise.reject(new Error(`HTTP ${r.status}`))))
      .then(setMd)
      .catch((e) => setError(e.message))
      .finally(() => setLoading(false));
  }, [url, file.body_md]);

  return (
    <Card className="p-5">
      <div className="flex items-center justify-between gap-3 mb-3">
        <h3 className="font-semibold">{file.file_name}</h3>
        {url && (
          <a
            href={url}
            target="_blank"
            rel="noreferrer"
            className="text-xs text-accent hover:underline shrink-0"
          >
            Open source
          </a>
        )}
      </div>
      {loading && <p className="text-sm text-muted-foreground">Loading document…</p>}
      {error && <p className="text-sm text-destructive">Could not load: {error}</p>}
      {md && (
        <div className="prose-lawbridge text-sm max-w-none">
          <ReactMarkdown remarkPlugins={[remarkGfm]}>{md}</ReactMarkdown>
        </div>
      )}
      {!loading && !md && !error && (
        <p className="text-sm text-muted-foreground italic">No content.</p>
      )}
    </Card>
  );
}

function Workspace({
  userId,
  scenarioId,
  code,
  initialNote,
  initialSubmission,
}: {
  userId: string;
  scenarioId: string;
  code: string;
  initialNote: string;
  initialSubmission: any;
}) {
  const qc = useQueryClient();
  const [note, setNote] = useState(initialNote);
  const [submissionText, setSubmissionText] = useState(initialSubmission?.submission_text ?? "");
  const [saving, setSaving] = useState(false);

  const saveNote = async () => {
    setSaving(true);
    try {
      const { error } = await supabase.from("notes").upsert(
        {
          user_id: userId,
          scenario_id: scenarioId,
          note_content: note,
        },
        { onConflict: "user_id,scenario_id" },
      );
      if (error) throw error;
      toast.success("Notes saved");
      qc.invalidateQueries({ queryKey: ["scenario", code] });
    } catch (error: any) {
      toast.error(error.message ?? "Could not save notes");
    } finally {
      setSaving(false);
    }
  };

  const saveSubmission = async (status: "draft" | "submitted") => {
    const clean = submissionText.trim();
    if (status === "submitted" && clean.length < 50) {
      toast.error(
        "Write a meaningful submission before submitting. No score or review should be awarded for blank work.",
      );
      return;
    }

    setSaving(true);
    try {
      const payload = {
        user_id: userId,
        scenario_id: scenarioId,
        submission_text: clean,
        status,
        submitted_at:
          status === "submitted"
            ? new Date().toISOString()
            : (initialSubmission?.submitted_at ?? null),
      };

      const result = initialSubmission?.id
        ? await supabase.from("submissions").update(payload).eq("id", initialSubmission.id)
        : await supabase.from("submissions").insert(payload);

      if (result.error) throw result.error;

      await supabase.from("progress").upsert(
        {
          user_id: userId,
          scenario_id: scenarioId,
          status: status === "submitted" ? "submitted" : "in_progress",
          completion_percentage: status === "submitted" ? 80 : 50,
          last_opened_at: new Date().toISOString(),
        },
        { onConflict: "user_id,scenario_id" },
      );

      toast.success(status === "submitted" ? "Submission sent for review" : "Draft saved");
      qc.invalidateQueries({ queryKey: ["scenario", code] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    } catch (error: any) {
      toast.error(error.message ?? "Could not save submission");
    } finally {
      setSaving(false);
    }
  };

  return (
    <div className="grid lg:grid-cols-2 gap-4">
      <Card className="p-5 space-y-3">
        <div>
          <h3 className="font-semibold flex items-center gap-2">
            <StickyNote className="w-4 h-4" /> Private notes
          </h3>
          <p className="text-xs text-muted-foreground mt-1">
            Use this for issue spotting, exhibit references and rough working notes.
          </p>
        </div>
        <Textarea
          value={note}
          onChange={(e) => setNote(e.target.value)}
          placeholder="Example: Exhibit 2 confirms the suspicious link was opened on 20 July at 16:11..."
          className="min-h-72"
        />
        <Button onClick={saveNote} disabled={saving} variant="outline">
          <Save className="w-4 h-4 mr-2" /> Save notes
        </Button>
      </Card>

      <Card className="p-5 space-y-3">
        <div>
          <h3 className="font-semibold flex items-center gap-2">
            <FileText className="w-4 h-4" /> Submission draft
          </h3>
          <p className="text-xs text-muted-foreground mt-1">
            Paste your final answer here. Blank or very short submissions are blocked so the system
            does not award fake feedback.
          </p>
        </div>
        <Textarea
          value={submissionText}
          onChange={(e) => setSubmissionText(e.target.value)}
          placeholder="Write your attendance note, legal analysis, evidence request list or required output bundle here..."
          className="min-h-72"
        />
        <div className="flex flex-wrap gap-2">
          <Button onClick={() => saveSubmission("draft")} disabled={saving} variant="outline">
            <Save className="w-4 h-4 mr-2" /> Save draft
          </Button>
          <Button onClick={() => saveSubmission("submitted")} disabled={saving}>
            <Send className="w-4 h-4 mr-2" /> Submit for review
          </Button>
        </div>
      </Card>
    </div>
  );
}

function formatStatus(status: string) {
  const map: Record<string, string> = {
    not_started: "Not started",
    in_progress: "In progress",
    submitted: "Submitted",
    completed: "Completed",
  };
  return map[status] ?? status;
}
