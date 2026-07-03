import { createFileRoute, Link, useParams } from "@tanstack/react-router";
import { useQuery, useQueryClient } from "@tanstack/react-query";
import { useEffect, useMemo, useState } from "react";
import type { ReactNode } from "react";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import { supabase } from "@/integrations/supabase/client";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Textarea } from "@/components/ui/textarea";
import { markAnswer } from "@/lib/aiMarking";
import {
  AlertTriangle,
  ArrowLeft,
  BookOpen,
  Brain,
  CheckCircle2,
  ChevronDown,
  ChevronRight,
  ClipboardCheck,
  ClipboardList,
  Copy,
  Download,
  Eye,
  FileSearch,
  FileText,
  Files,
  Highlighter,
  Layers3,
  Lock,
  MessageSquareText,
  PanelRight,
  Pin,
  Save,
  Search,
  Send,
  ShieldCheck,
  Sparkles,
  StickyNote,
  Target,
  Wand2,
  X,
} from "lucide-react";
import { toast } from "sonner";
import { PageSkeleton } from "@/components/PageSkeleton";

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

type InstructionTask = {
  id: string;
  number: string;
  title: string;
};

type SubmissionRecord = {
  id?: string;
  submission_text?: string | null;
  status?: "draft" | "submitted" | "reviewed";
  submitted_at?: string | null;
};

type EvidenceMap = Record<string, string[]>;
type AnswerMap = Record<string, string>;
type ReflectionMap = Record<string, { risk?: string; missing?: string; escalation?: string }>;

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
        submission: submissionRes.data as SubmissionRecord | null,
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
  }, [data?.scenario?.id, data?.uid, data?.progress?.status, data?.progress?.completion_percentage]);

  if (isLoading) return <PageSkeleton variant="scenario" />;
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
  const overviewFile = findScenarioFile(files, "Overview");
  const practiceTasksFile = findScenarioFile(files, "Practice Tasks") ?? files.find((f) => f.file_type === "student_pack");
  const aiDevelopmentFile = findScenarioFile(files, "AI Development");
  const instructions = practiceTasksFile;
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
    <ScenarioExperience
      code={code}
      scenario={scenario}
      uid={data.uid}
      isTutor={isTutor}
      files={files}
      overviewFile={overviewFile}
      instructions={instructions}
      aiDevelopmentFile={aiDevelopmentFile}
      exhibits={exhibits}
      tutorGuide={tutorGuide}
      progress={progress}
      initialNote={data.note?.note_content ?? ""}
      initialSubmission={data.submission}
      onToggleComplete={toggleComplete}
    />
  );
}

function ScenarioExperience({
  code,
  scenario,
  uid,
  isTutor,
  files,
  overviewFile,
  instructions,
  aiDevelopmentFile,
  exhibits,
  tutorGuide,
  progress,
  initialNote,
  initialSubmission,
  onToggleComplete,
}: {
  code: string;
  scenario: any;
  uid: string;
  isTutor: boolean;
  files: ScenarioFile[];
  overviewFile?: ScenarioFile;
  instructions?: ScenarioFile;
  aiDevelopmentFile?: ScenarioFile;
  exhibits: ScenarioFile[];
  tutorGuide?: ScenarioFile;
  progress: any;
  initialNote: string;
  initialSubmission: SubmissionRecord | null;
  onToggleComplete: () => void;
}) {
  const overviewDoc = useMarkdownFileOptional(overviewFile);
  const instructionsDoc = useMarkdownFileOptional(instructions);
  const aiDevelopmentDoc = useMarkdownFileOptional(aiDevelopmentFile);
  const tasks = useMemo(() => extractInstructionTasks(instructionsDoc.md), [instructionsDoc.md]);
  const instructionMarkdown = useMemo(
    () => removePracticeTaskListFromMarkdown(instructionsDoc.md),
    [instructionsDoc.md],
  );

  const status = progress?.status ?? "not_started";
  const completion = Math.max(
    progress?.completion_percentage ?? 0,
    status === "completed" ? 100 : status === "submitted" ? 80 : status === "in_progress" ? 35 : 0,
  );

  return (
    <div className="scenario-page brilliant-simulation space-y-6">
      <div className="flex items-center justify-between gap-3 flex-wrap">
        <Link
          to="/skills"
          className="text-sm text-muted-foreground hover:text-foreground inline-flex items-center gap-1"
        >
          <ArrowLeft className="w-4 h-4" /> Skills Library
        </Link>
        <div className="flex items-center gap-2">
          <Badge variant="outline" className="bg-background/80">
            {formatStatus(status)} · {completion}%
          </Badge>
          <Button
            onClick={onToggleComplete}
            variant={status === "completed" ? "outline" : "default"}
            size="sm"
          >
            <CheckCircle2 className="w-4 h-4 mr-2" />
            {status === "completed" ? "Completed" : "Mark complete"}
          </Button>
        </div>
      </div>

      <header className="scenario-hero brilliant-hero space-y-4">
        <div className="flex items-center gap-2 flex-wrap text-xs text-muted-foreground">
          <Badge variant="outline" className="font-mono bg-background/80">
            {scenario.code}
          </Badge>
          <span>{scenario.skill?.category?.name}</span>
          <span>·</span>
          <span>{scenario.skill?.name}</span>
        </div>
        <div className="grid lg:grid-cols-[1fr_330px] gap-5 items-end">
          <div>
            <h1 className="text-3xl font-semibold tracking-tight">{scenario.title}</h1>
            <p className="mt-3 max-w-3xl text-sm text-muted-foreground">
              Work through this simulation like a live matter file: review exhibits, complete each task,
              cite your evidence, then produce a final submission for review.
            </p>
          </div>
          <Card className="passport-card p-4">
            <p className="text-xs uppercase tracking-[0.18em] text-muted-foreground">Simulation passport</p>
            <div className="mt-3 grid grid-cols-3 gap-2 text-center">
              <MiniMetric label="Exhibits" value={exhibits.length} />
              <MiniMetric label="Tasks" value={tasks.length || "—"} />
              <MiniMetric label="Status" value={status === "completed" ? "Done" : status === "submitted" ? "Sent" : "Open"} />
            </div>
          </Card>
        </div>
        <div className="flex gap-2 flex-wrap text-xs">
          {scenario.matter_type && <MetaPill label="Matter" value={scenario.matter_type} />}
          {scenario.difficulty_level && <MetaPill label="Level" value={scenario.difficulty_level} />}
          {scenario.recommended_time && <MetaPill label="Time" value={scenario.recommended_time} />}
          {scenario.student_role && <MetaPill label="Role" value={scenario.student_role} />}
        </div>
      </header>

      {files.length === 0 && (
        <Card className="p-4 border-amber-200 bg-amber-50 text-amber-900 dark:bg-amber-950 dark:text-amber-100 dark:border-amber-900">
          <p className="text-sm font-medium">Course files are not connected yet.</p>
          <p className="text-xs mt-1">
            Run the course manifest script and/or the Supabase scenario file seed so the instructions,
            exhibits and tutor packs appear here.
          </p>
        </Card>
      )}

      <Tabs defaultValue="overview" className="w-full">
        <TabsList className="flex-wrap h-auto scenario-tabs brilliant-tabs">
          <TabsTrigger value="overview">
            <BookOpen className="w-4 h-4 mr-1.5" />
            Overview
          </TabsTrigger>
          <TabsTrigger value="exhibits">
            <FileSearch className="w-4 h-4 mr-1.5" />
            Exhibits ({exhibits.length})
          </TabsTrigger>
          <TabsTrigger value="tasks">
            <ClipboardList className="w-4 h-4 mr-1.5" />
            Practice Tasks
          </TabsTrigger>
          <TabsTrigger value="ai-development">
            <Brain className="w-4 h-4 mr-1.5" />
            AI Development
          </TabsTrigger>
          <TabsTrigger value="submission">
            <FileText className="w-4 h-4 mr-1.5" />
            Final Submission
          </TabsTrigger>
          <TabsTrigger value="tutor">
            <Lock className="w-4 h-4 mr-1.5" />
            Tutor Guide
          </TabsTrigger>
        </TabsList>

        <TabsContent value="overview" className="mt-6">
          {overviewFile ? (
            <FileViewer file={overviewFile} />
          ) : (
            <Card className="p-6 overview-empty-card">
              <h3 className="font-semibold">No overview connected</h3>
              <p className="mt-2 text-sm text-muted-foreground">The overview is taken from the scenario sheet up to the Student Task Brief.</p>
            </Card>
          )}
        </TabsContent>

        <TabsContent value="exhibits" className="mt-6">
          <MatterFileWorkspace
            exhibits={exhibits}
            userId={uid}
            scenarioId={scenario.id}
            scenarioCode={code}
          />
        </TabsContent>

        <TabsContent value="tasks" className="mt-6">
          <InstructionViewer
            file={instructions}
            document={instructionsDoc}
            instructionMarkdown={instructionMarkdown}
            tasks={tasks}
            exhibits={exhibits}
            userId={uid}
            scenarioId={scenario.id}
            code={code}
            initialSubmission={initialSubmission}
          />
        </TabsContent>

        <TabsContent value="ai-development" className="mt-6">
          {aiDevelopmentFile ? (
            <AIDevelopmentViewer file={aiDevelopmentFile} document={aiDevelopmentDoc} />
          ) : (
            <Card className="p-6 ai-development-empty-card">
              <h3 className="font-semibold flex items-center gap-2"><Brain className="h-4 w-4" /> No AI development section connected</h3>
              <p className="mt-2 text-sm text-muted-foreground">The AI section is extracted from the scenario sheet from Fundamental AI Skills Extension onwards.</p>
            </Card>
          )}
        </TabsContent>

        <TabsContent value="submission" className="mt-6">
          <FinalSubmissionBuilder
            userId={uid}
            scenarioId={scenario.id}
            scenarioCode={code}
            scenarioTitle={scenario.title}
            tasks={tasks}
            exhibits={exhibits}
            initialNote={initialNote}
            initialSubmission={initialSubmission}
          />
        </TabsContent>

        <TabsContent value="tutor" className="mt-6">
          {isTutor && tutorGuide ? <TutorGuideViewer file={tutorGuide} /> : <TutorLockedState />}
        </TabsContent>
      </Tabs>
    </div>
  );
}

function findScenarioFile(files: ScenarioFile[], name: string) {
  const target = name.toLowerCase();
  return files.find((file) => file.file_name.toLowerCase() === target)
    ?? files.find((file) => file.file_name.toLowerCase().includes(target));
}

function MiniMetric({ label, value }: { label: string; value: string | number }) {
  return (
    <div className="rounded-xl border border-border/70 bg-background/80 p-2">
      <div className="text-lg font-semibold text-primary">{value}</div>
      <div className="text-[10px] uppercase tracking-wide text-muted-foreground">{label}</div>
    </div>
  );
}

function MetaPill({ label, value }: { label: string; value: string }) {
  return (
    <span className="inline-flex rounded-full border border-border bg-card px-3 py-1 shadow-sm">
      <span className="text-muted-foreground mr-1">{label}:</span> {value}
    </span>
  );
}

function MatterFileWorkspace({
  exhibits,
  userId,
  scenarioId,
  scenarioCode,
}: {
  exhibits: ScenarioFile[];
  userId: string;
  scenarioId: string;
  scenarioCode: string;
}) {
  const [query, setQuery] = useState("");
  const [activeKey, setActiveKey] = useState(() => evidenceKey(exhibits[0]));
  const [pinned, setPinned] = useLocalRecord<Record<string, string>>(
    `lawbridge-pinned-evidence:${userId}:${scenarioId}`,
    {},
  );
  const [matterNotes, setMatterNotes] = useLocalString(`lawbridge-matter-notes:${userId}:${scenarioId}`, "");

  useEffect(() => {
    if (!activeKey && exhibits[0]) setActiveKey(evidenceKey(exhibits[0]));
  }, [activeKey, exhibits]);

  const filtered = useMemo(() => {
    const clean = query.trim().toLowerCase();
    if (!clean) return exhibits;
    return exhibits.filter((exhibit) =>
      [exhibit.file_name, exhibit.body_md, exhibit.storage_path]
        .filter(Boolean)
        .some((value) => String(value).toLowerCase().includes(clean)),
    );
  }, [exhibits, query]);

  const current = exhibits.find((exhibit) => evidenceKey(exhibit) === activeKey) ?? filtered[0] ?? exhibits[0];
  const currentKey = evidenceKey(current);

  const togglePin = (exhibit: ScenarioFile) => {
    const key = evidenceKey(exhibit);
    setPinned((existing) => {
      const next = { ...existing };
      if (next[key]) delete next[key];
      else next[key] = exhibitLabel(exhibit);
      return next;
    });
  };

  if (!exhibits.length) {
    return (
      <Card className="p-6 empty-matter-card">
        <Files className="h-10 w-10 text-muted-foreground" />
        <h3 className="mt-3 font-semibold">No exhibits connected yet</h3>
        <p className="mt-1 text-sm text-muted-foreground">
          Once exhibits are connected, this tab becomes the live matter file workspace.
        </p>
      </Card>
    );
  }

  return (
    <div className="matter-file-grid grid xl:grid-cols-[300px_minmax(0,1fr)_320px] gap-4">
      <aside className="matter-sidebar space-y-3 xl:sticky xl:top-4 xl:self-start">
        <Card className="p-3 matter-search-card">
          <div className="relative">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              placeholder="Search exhibits..."
              className="pl-9 bg-background"
            />
          </div>
        </Card>
        <div className="space-y-2">
          {filtered.map((exhibit) => {
            const key = evidenceKey(exhibit);
            const isActive = key === currentKey;
            const isPinned = !!pinned[key];
            return (
              <button
                key={key}
                onClick={() => setActiveKey(key)}
                className={`matter-file-button w-full text-left rounded-2xl px-3 py-3 text-sm border transition-all shadow-sm ${
                  isActive ? "is-active" : "bg-card border-transparent hover:border-border"
                }`}
              >
                <div className="flex items-start justify-between gap-2">
                  <div className="min-w-0">
                    <div className="text-xs text-muted-foreground">Exhibit {exhibit.exhibit_number ?? "·"}</div>
                    <div className="truncate font-medium">{exhibit.file_name}</div>
                  </div>
                  {isPinned && <Pin className="h-3.5 w-3.5 text-accent shrink-0" />}
                </div>
              </button>
            );
          })}
        </div>
      </aside>

      <main className="min-w-0">
        {current && (
          <div className="space-y-3">
            <div className="flex items-center justify-between gap-2 flex-wrap">
              <div className="flex items-center gap-2 text-xs text-muted-foreground">
                <Eye className="h-4 w-4" /> Viewing {exhibitLabel(current)}
              </div>
              <Button type="button" variant="outline" size="sm" onClick={() => togglePin(current)}>
                <Pin className="h-4 w-4 mr-2" /> {pinned[currentKey] ? "Unpin evidence" : "Pin evidence"}
              </Button>
            </div>
            <FileViewer file={current} />
          </div>
        )}
      </main>

      <aside className="space-y-4 xl:sticky xl:top-4 xl:self-start">
        <Card className="p-4 evidence-bank-card">
          <h3 className="font-semibold flex items-center gap-2">
            <Highlighter className="h-4 w-4" /> Evidence bank
          </h3>
          <p className="mt-1 text-xs text-muted-foreground">
            Pin useful exhibits here, then cite them inside the task workspace.
          </p>
          <div className="mt-3 space-y-2">
            {Object.entries(pinned).length ? (
              Object.entries(pinned).map(([key, label]) => (
                <div key={key} className="rounded-xl border border-border bg-background/80 px-3 py-2 text-xs flex items-center justify-between gap-2">
                  <span>{label}</span>
                  <button
                    type="button"
                    onClick={() => setPinned((existing) => {
                      const next = { ...existing };
                      delete next[key];
                      return next;
                    })}
                    aria-label="Remove pinned evidence"
                  >
                    <X className="h-3.5 w-3.5 text-muted-foreground" />
                  </button>
                </div>
              ))
            ) : (
              <p className="rounded-xl border border-dashed border-border p-3 text-xs text-muted-foreground">
                No pinned evidence yet.
              </p>
            )}
          </div>
        </Card>

        <Card className="p-4 matter-notes-card">
          <h3 className="font-semibold flex items-center gap-2">
            <PanelRight className="h-4 w-4" /> Matter notes
          </h3>
          <p className="mt-1 text-xs text-muted-foreground">Private rough notes for this simulation.</p>
          <Textarea
            value={matterNotes}
            onChange={(e) => setMatterNotes(e.target.value)}
            placeholder="Key facts, dates, risks, missing documents..."
            className="mt-3 min-h-[210px] bg-background/90 text-sm"
          />
          <p className="mt-2 text-[11px] text-muted-foreground">Auto-saved in this browser.</p>
        </Card>

        <Card className="p-4 supervisor-tip-card">
          <h3 className="font-semibold flex items-center gap-2">
            <ShieldCheck className="h-4 w-4" /> Supervisor expectation
          </h3>
          <ul className="mt-3 space-y-2 text-xs text-muted-foreground">
            <li>• Identify the exact exhibit supporting each point.</li>
            <li>• Separate confirmed facts from assumptions.</li>
            <li>• Flag missing information before giving final advice.</li>
          </ul>
        </Card>
      </aside>
    </div>
  );
}

function useMarkdownFileOptional(file?: ScenarioFile) {
  const path = file?.storage_path ?? null;
  const [md, setMd] = useState<string | null>(file?.body_md ?? null);
  const [loading, setLoading] = useState(!!file && !file.body_md && !!path);
  const [error, setError] = useState<string | null>(null);

  const url = useMemo(
    () => (path ? `/course-content/${path.split("/").map(encodeURIComponent).join("/")}` : null),
    [path],
  );

  useEffect(() => {
    setMd(file?.body_md ?? null);
    if (!file) {
      setLoading(false);
      setError(null);
      return;
    }
    if (file.body_md || !url) return;
    setLoading(true);
    setError(null);
    fetch(url)
      .then((r) => (r.ok ? r.text() : Promise.reject(new Error(`HTTP ${r.status}`))))
      .then(setMd)
      .catch((e) => setError(e.message))
      .finally(() => setLoading(false));
  }, [url, file?.body_md, file?.storage_path]);

  return { md, loading, error, url };
}

function useMarkdownFile(file: ScenarioFile) {
  return useMarkdownFileOptional(file);
}

function FileViewer({ file }: { file: ScenarioFile }) {
  const { md, loading, error, url } = useMarkdownFile(file);

  return (
    <Card className="document-card premium-document overflow-hidden">
      <DocumentHeader fileName={file.file_name} url={url} badge={file.file_type === "exhibit" ? `Exhibit ${file.exhibit_number ?? ""}` : "Document"} />
      <div className="p-5 sm:p-7">
        {loading && <p className="text-sm text-muted-foreground">Loading document…</p>}
        {error && <p className="text-sm text-destructive">Could not load: {error}</p>}
        {md && <MarkdownContent markdown={md} scope={file.storage_path ?? file.file_name} />}
        {!loading && !md && !error && <p className="text-sm text-muted-foreground italic">No content.</p>}
      </div>
    </Card>
  );
}

function InstructionViewer({
  file,
  document,
  instructionMarkdown,
  tasks,
  exhibits,
  userId,
  scenarioId,
  code,
  initialSubmission,
}: {
  file?: ScenarioFile;
  document: ReturnType<typeof useMarkdownFileOptional>;
  instructionMarkdown: string | null;
  tasks: InstructionTask[];
  exhibits: ScenarioFile[];
  userId: string;
  scenarioId: string;
  code: string;
  initialSubmission: SubmissionRecord | null;
}) {
  if (!file) return <p className="text-sm text-muted-foreground">No task instructions found.</p>;

  return (
    <div className="space-y-5">
      <TaskCompletionPanel
        tasks={tasks}
        exhibits={exhibits}
        userId={userId}
        scenarioId={scenarioId}
        code={code}
        initialSubmission={initialSubmission}
      />

      <Card className="document-card premium-document overflow-hidden">
        <DocumentHeader fileName={file.file_name} url={document.url} badge="Instructions" />
        <div className="p-5 sm:p-7">
          {document.loading && <p className="text-sm text-muted-foreground">Loading document…</p>}
          {document.error && <p className="text-sm text-destructive">Could not load: {document.error}</p>}
          {instructionMarkdown && (
            <MarkdownContent markdown={instructionMarkdown} scope={file.storage_path ?? file.file_name} />
          )}
          {!document.loading && !instructionMarkdown && !document.error && (
            <p className="text-sm text-muted-foreground italic">No content.</p>
          )}
        </div>
      </Card>
    </div>
  );
}

function DocumentHeader({ fileName, url, badge = "Document" }: { fileName: string; url: string | null; badge?: string }) {
  return (
    <div className="document-header flex items-center justify-between gap-3 px-5 sm:px-7 py-4 border-b border-border">
      <div>
        <p className="text-xs uppercase tracking-wide text-muted-foreground">{badge}</p>
        <h3 className="font-semibold text-base sm:text-lg">{fileName}</h3>
      </div>
      {url && (
        <a href={url} target="_blank" rel="noreferrer" className="text-xs text-accent hover:underline shrink-0">
          Open source
        </a>
      )}
    </div>
  );
}

function MarkdownContent({ markdown, scope }: { markdown: string; scope: string }) {
  const prepared = useMemo(() => prepareMarkdownWithAnswerMarkers(markdown), [markdown]);

  return (
    <div className="prose-lawbridge premium-prose text-sm max-w-none">
      <ReactMarkdown
        remarkPlugins={[remarkGfm]}
        components={{
          p: ({ children }) => {
            const text = nodeText(children).trim();
            const marker = text.match(/^\[\[LAWBRIDGE_ANSWER_BOX_(\d+)\]\]$/);
            if (marker) {
              return <InlineAnswerBox storageKey={`lawbridge-inline-answer:${scope}:${marker[1]}`} />;
            }
            return <p>{children}</p>;
          },
          blockquote: ({ children }) => {
            const text = nodeText(children).toLowerCase();
            if (text.includes("type your answer here")) {
              return <InlineAnswerBox storageKey={`lawbridge-inline-answer:${scope}:quote-${text.slice(0, 24)}`} />;
            }
            return <blockquote>{children}</blockquote>;
          },
        }}
      >
        {prepared}
      </ReactMarkdown>
    </div>
  );
}

function TaskCompletionPanel({
  tasks,
  exhibits,
  userId,
  scenarioId,
  code,
  initialSubmission,
}: {
  tasks: InstructionTask[];
  exhibits: ScenarioFile[];
  userId: string;
  scenarioId: string;
  code: string;
  initialSubmission: SubmissionRecord | null;
}) {
  const qc = useQueryClient();
  const answerStorageKey = taskAnswerStorageKey(userId, scenarioId);
  const evidenceStorageKey = taskEvidenceStorageKey(userId, scenarioId);
  const reflectionStorageKey = taskReflectionStorageKey(userId, scenarioId);
  const [activeTaskId, setActiveTaskId] = useState<string | null>(null);
  const [answers, setAnswers] = useLocalRecord<AnswerMap>(answerStorageKey, {});
  const [evidence, setEvidence] = useLocalRecord<EvidenceMap>(evidenceStorageKey, {});
  const [reflections, setReflections] = useLocalRecord<ReflectionMap>(reflectionStorageKey, {});
  const [saving, setSaving] = useState(false);
  const [aiCheckingTaskId, setAiCheckingTaskId] = useState<string | null>(null);
  const [aiFeedbackByTask, setAiFeedbackByTask] = useState<Record<string, any>>({});
  const [isTaskListOpen, setIsTaskListOpen] = useState(false);

  useEffect(() => {
    setActiveTaskId(null);
  }, [tasks.map((task) => task.id).join("|")]);

  useEffect(() => {
    if (!tasks.length || Object.keys(answers).length) return;
    const parsed = parseTaskAnswersFromSubmission(initialSubmission?.submission_text ?? "", tasks);
    if (Object.keys(parsed).length) setAnswers(parsed);
  }, [answers, initialSubmission?.submission_text, setAnswers, tasks]);

  if (!tasks.length) {
    return (
      <Card className="p-5 task-panel premium-task-empty">
        <h3 className="font-semibold flex items-center gap-2">
          <ClipboardList className="w-4 h-4" /> Task workspace
        </h3>
        <p className="text-sm text-muted-foreground mt-2">
          No numbered practice tasks were detected in this instruction document. Use the Final Submission tab for this scenario.
        </p>
      </Card>
    );
  }

  const completed = tasks.filter((task) => answers[task.id]?.trim()).length;
  const evidenceCount = Object.values(evidence).reduce((sum, items) => sum + items.length, 0);
  const activeTask = tasks.find((task) => task.id === activeTaskId) ?? null;
  const activeIndex = activeTask ? tasks.findIndex((task) => task.id === activeTask.id) : -1;

  const updateAnswer = (id: string, value: string) => setAnswers((current) => ({ ...current, [id]: value }));
  const updateReflection = (id: string, field: keyof ReflectionMap[string], value: string) => {
    setReflections((current) => ({
      ...current,
      [id]: { ...(current[id] ?? {}), [field]: value },
    }));
  };
  const toggleTaskEvidence = (taskId: string, exhibit: ScenarioFile) => {
    const key = evidenceKey(exhibit);
    setEvidence((current) => {
      const selected = current[taskId] ?? [];
      return {
        ...current,
        [taskId]: selected.includes(key)
          ? selected.filter((item) => item !== key)
          : [...selected, key],
      };
    });
  };

  const saveTaskSubmission = async (status: "draft" | "submitted") => {
    const submissionText = formatTaskSubmission(tasks, answers, evidence, reflections, exhibits).trim();
    if (status === "submitted" && submissionText.replace(/\s/g, "").length < 160) {
      toast.error("Complete the task boxes and cite evidence before submitting for review.");
      return;
    }

    setSaving(true);
    try {
      const payload = {
        user_id: userId,
        scenario_id: scenarioId,
        submission_text: submissionText,
        status,
        submitted_at: status === "submitted" ? new Date().toISOString() : (initialSubmission?.submitted_at ?? null),
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
          completion_percentage: status === "submitted" ? 85 : Math.max(40, Math.round((completed / tasks.length) * 70)),
          last_opened_at: new Date().toISOString(),
        },
        { onConflict: "user_id,scenario_id" },
      );

      toast.success(status === "submitted" ? "Task answers submitted" : "Task answers saved as draft");
      qc.invalidateQueries({ queryKey: ["scenario", code] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    } catch (error: any) {
      toast.error(error.message ?? "Could not save task answers");
    } finally {
      setSaving(false);
    }
  };

  const copyAllAnswers = async () => {
    await navigator.clipboard.writeText(formatTaskSubmission(tasks, answers, evidence, reflections, exhibits));
    toast.success("Task answers copied");
  };

  const checkAnswerWithAi = async (task: InstructionTask, taskAnswer: string) => {
    if (!taskAnswer.trim()) {
      toast.error("Write an answer before using AI feedback");
      return;
    }

    const isAiJudgmentTask = /ai|artificial intelligence|judg(e)?ment/i.test(task.title ?? "");

    const aiTaskId =
      scenarioId === "AN-01"
        ? isAiJudgmentTask
          ? "ai-section-1"
          : "detailed-task-1"
        : task.id;

    setAiCheckingTaskId(task.id);

    try {
      const result = await markAnswer({
        scenarioId,
        taskId: aiTaskId,
        studentAnswer: isAiJudgmentTask ? "" : taskAnswer,
        aiSectionAnswer: isAiJudgmentTask ? taskAnswer : ""
      });

      setAiFeedbackByTask((current) => ({
        ...current,
        [task.id]: result
      }));

      toast.success("AI tutor feedback ready");
    } catch (error: any) {
      toast.error(error?.message ?? "AI marking failed");
    } finally {
      setAiCheckingTaskId(null);
    }
  };


  if (activeTask) {
    const answer = answers[activeTask.id] ?? "";
    const selectedEvidence = evidence[activeTask.id] ?? [];
    const reflection = reflections[activeTask.id] ?? {};
    const previousTask = activeIndex > 0 ? tasks[activeIndex - 1] : null;
    const nextTask = activeIndex < tasks.length - 1 ? tasks[activeIndex + 1] : null;
    const supervisor = getTaskQuality(activeTask, answer, selectedEvidence, reflection);

    return (
      <Card className="task-workspace-card brilliant-task-workspace overflow-hidden">
        <div className="task-workspace-top p-5 sm:p-6 border-b border-border">
          <Button type="button" variant="ghost" size="sm" onClick={() => setActiveTaskId(null)}>
            <ArrowLeft className="w-4 h-4 mr-2" /> Back to all tasks
          </Button>
          <div className="mt-4 grid lg:grid-cols-[1fr_260px] gap-5 items-start">
            <div className="flex items-start gap-4">
              <span className="task-workspace-number">{activeTask.number}</span>
              <div className="min-w-0">
                <p className="text-xs uppercase tracking-wide text-muted-foreground">Task {activeIndex + 1} of {tasks.length}</p>
                <h3 className="text-xl font-semibold tracking-tight mt-1">{activeTask.title}</h3>
                <p className="text-sm text-muted-foreground mt-2">
                  Draft your answer, select the exhibits relied on, then use the supervisor check to tighten the work before submitting.
                </p>
              </div>
            </div>
            <QualityMeter result={supervisor} />
          </div>
        </div>

        <div className="grid xl:grid-cols-[1fr_330px] gap-4 p-5 sm:p-6">
          <div className="space-y-4">
            <Textarea
              value={answer}
              onChange={(e) => updateAnswer(activeTask.id, e.target.value)}
              placeholder="Write your answer for this task here. Be specific. Cite the exhibits you rely on. Flag missing information separately."
              className="task-workspace-textarea min-h-[360px] resize-y bg-background text-base leading-relaxed"
            />

            <div className="flex flex-wrap items-center gap-3">
              <Button
                type="button"
                variant="secondary"
                onClick={() => checkAnswerWithAi(activeTask, answer)}
                disabled={aiCheckingTaskId === activeTask.id || !answer.trim()}
              >
                <Sparkles className="w-4 h-4 mr-2" />
                {aiCheckingTaskId === activeTask.id ? "Checking..." : "AI Check My Answer"}
              </Button>

              {aiFeedbackByTask[activeTask.id] && (
                <span className="text-sm text-muted-foreground">
                  Score: {aiFeedbackByTask[activeTask.id].overallScore}/{aiFeedbackByTask[activeTask.id].maxScore} · {aiFeedbackByTask[activeTask.id].band}
                </span>
              )}
            </div>

            {aiFeedbackByTask[activeTask.id] && (
              <Card className="rounded-2xl border border-border bg-muted/30 p-4">
                <h4 className="text-sm font-semibold mb-2">AI Tutor Feedback</h4>
                <p className="text-sm text-muted-foreground mb-3">
                  {aiFeedbackByTask[activeTask.id].shortSummary}
                </p>

                <div className="space-y-2">
                  {aiFeedbackByTask[activeTask.id].criteria?.map((item: any) => (
                    <div key={item.name} className="rounded-xl border border-border bg-background p-3">
                      <p className="text-sm font-medium">
                        {item.name}: {item.score}/{item.maxScore}
                      </p>
                      <p className="text-sm text-muted-foreground mt-1">{item.feedback}</p>
                    </div>
                  ))}
                </div>

                {!!aiFeedbackByTask[activeTask.id].missingKeyPoints?.length && (
                  <div className="mt-4">
                    <p className="text-sm font-medium">Missing key points</p>
                    <ul className="mt-2 list-disc pl-5 text-sm text-muted-foreground">
                      {aiFeedbackByTask[activeTask.id].missingKeyPoints.map((point: string, index: number) => (
                        <li key={index}>{point}</li>
                      ))}
                    </ul>
                  </div>
                )}

                {!!aiFeedbackByTask[activeTask.id].actionPlan?.length && (
                  <div className="mt-4">
                    <p className="text-sm font-medium">Action plan</p>
                    <ul className="mt-2 list-disc pl-5 text-sm text-muted-foreground">
                      {aiFeedbackByTask[activeTask.id].actionPlan.map((step: string, index: number) => (
                        <li key={index}>{step}</li>
                      ))}
                    </ul>
                  </div>
                )}
              </Card>
            )}

            <div className="grid md:grid-cols-3 gap-3">
              <MiniTextBox
                label="Risks spotted"
                value={reflection.risk ?? ""}
                onChange={(value) => updateReflection(activeTask.id, "risk", value)}
                placeholder="E.g. limitation risk, unclear authority, missing policy..."
              />
              <MiniTextBox
                label="Missing information"
                value={reflection.missing ?? ""}
                onChange={(value) => updateReflection(activeTask.id, "missing", value)}
                placeholder="What still needs checking?"
              />
              <MiniTextBox
                label="Escalation point"
                value={reflection.escalation ?? ""}
                onChange={(value) => updateReflection(activeTask.id, "escalation", value)}
                placeholder="What would you tell a supervisor?"
              />
            </div>
          </div>

          <aside className="space-y-4">
            <EvidenceSelector
              exhibits={exhibits}
              selected={selectedEvidence}
              onToggle={(exhibit) => toggleTaskEvidence(activeTask.id, exhibit)}
            />
            <SupervisorChecklist result={supervisor} />
          </aside>
        </div>

        <div className="task-workspace-actions flex flex-wrap items-center justify-between gap-3 p-5 sm:p-6 border-t border-border bg-muted/30">
          <div className="flex flex-wrap gap-2">
            <Button onClick={() => saveTaskSubmission("draft")} disabled={saving} variant="outline">
              <Save className="w-4 h-4 mr-2" /> Save draft
            </Button>
            <Button onClick={() => saveTaskSubmission("submitted")} disabled={saving}>
              <Send className="w-4 h-4 mr-2" /> Submit all answers
            </Button>
            <Button onClick={copyAllAnswers} disabled={saving} variant="ghost">
              <Copy className="w-4 h-4 mr-2" /> Copy all
            </Button>
          </div>
          <div className="flex gap-2">
            <Button type="button" variant="outline" disabled={!previousTask} onClick={() => previousTask && setActiveTaskId(previousTask.id)}>
              Previous
            </Button>
            <Button type="button" variant="outline" disabled={!nextTask} onClick={() => nextTask && setActiveTaskId(nextTask.id)}>
              Next
            </Button>
          </div>
        </div>
      </Card>
    );
  }

  return (
    <Card className="task-launcher-card brilliant-task-launcher overflow-hidden">
      <button
        type="button"
        onClick={() => setIsTaskListOpen((open) => !open)}
        className="task-panel-header task-panel-toggle w-full p-5 sm:p-6 border-b border-border text-left"
      >
        <div className="flex items-start justify-between gap-4">
          <div>
            <h3 className="font-semibold flex items-center gap-2 text-lg">
              <ClipboardList className="w-5 h-5" /> Interactive task workspace
            </h3>
            <p className="text-sm text-muted-foreground mt-1">
              {isTaskListOpen
                ? "Complete each numbered task in its own editable box, cite evidence, or open the full workspace."
                : "The task list is collapsed. Open it to complete each numbered practice task separately."}
            </p>
          </div>
          <span className="task-panel-toggle-icon" aria-hidden="true">
            {isTaskListOpen ? <ChevronDown className="w-5 h-5" /> : <ChevronRight className="w-5 h-5" />}
          </span>
        </div>
        <div className="mt-4 grid sm:grid-cols-3 gap-3">
          <ProgressPill icon={<CheckCircle2 className="h-4 w-4" />} label="Tasks started" value={`${completed}/${tasks.length}`} />
          <ProgressPill icon={<Highlighter className="h-4 w-4" />} label="Evidence cited" value={evidenceCount} />
          <ProgressPill icon={<Brain className="h-4 w-4" />} label="Supervisor readiness" value={`${Math.round(((completed / tasks.length) * 70) + Math.min(30, evidenceCount * 3))}%`} />
        </div>
      </button>

      {isTaskListOpen && (
        <>
          <div className="p-4 sm:p-5 grid xl:grid-cols-2 gap-4">
            {tasks.map((task) => {
              const answer = answers[task.id] ?? "";
              const selectedEvidence = evidence[task.id] ?? [];
              return (
                <div key={task.id} className="task-answer-card brilliant-task-card rounded-2xl border border-border bg-card p-4 shadow-sm">
                  <div className="flex items-start gap-3">
                    <span className="task-number">{task.number}</span>
                    <div className="min-w-0 flex-1">
                      <p className="font-semibold leading-snug">{task.title}</p>
                      <p className="text-xs text-muted-foreground mt-1">
                        {answer.trim() ? `${answer.trim().length} characters · ${selectedEvidence.length} exhibit(s) cited` : "Start your answer here, or open the full workspace."}
                      </p>
                    </div>
                  </div>
                  <Textarea
                    value={answer}
                    onChange={(e) => updateAnswer(task.id, e.target.value)}
                    placeholder="Type your answer for this task here..."
                    className="mt-4 min-h-[150px] resize-y bg-background/80 text-sm leading-relaxed"
                  />
                  <div className="mt-3 flex flex-wrap items-center justify-between gap-2">
                    <Button type="button" variant="outline" size="sm" onClick={() => setActiveTaskId(task.id)}>
                      Open full workspace <ChevronRight className="w-4 h-4 ml-1" />
                    </Button>
                    <span className="text-[11px] uppercase tracking-wide text-muted-foreground">Editable · evidence-linked</span>
                  </div>
                </div>
              );
            })}
          </div>

          <div className="p-4 border-t border-border bg-muted/30 flex flex-wrap gap-2">
            <Button onClick={() => saveTaskSubmission("draft")} disabled={saving} variant="outline">
              <Save className="w-4 h-4 mr-2" /> Save all as draft
            </Button>
            <Button onClick={() => saveTaskSubmission("submitted")} disabled={saving}>
              <Send className="w-4 h-4 mr-2" /> Submit all answers
            </Button>
            <Button onClick={copyAllAnswers} disabled={saving} variant="ghost">
              <Copy className="w-4 h-4 mr-2" /> Copy all
            </Button>
          </div>
        </>
      )}
    </Card>
  );
}

function ProgressPill({ icon, label, value }: { icon: ReactNode; label: string; value: string | number }) {
  return (
    <span className="rounded-2xl border border-border bg-background/80 px-3 py-2 text-sm flex items-center gap-2">
      <span className="text-accent">{icon}</span>
      <span className="text-muted-foreground">{label}:</span>
      <strong className="text-foreground">{value}</strong>
    </span>
  );
}

function MiniTextBox({ label, value, onChange, placeholder }: { label: string; value: string; onChange: (value: string) => void; placeholder: string }) {
  return (
    <div className="rounded-2xl border border-border bg-card p-3">
      <label className="text-xs font-semibold uppercase tracking-wide text-muted-foreground">{label}</label>
      <Textarea value={value} onChange={(e) => onChange(e.target.value)} placeholder={placeholder} className="mt-2 min-h-[105px] bg-background text-xs" />
    </div>
  );
}

function EvidenceSelector({ exhibits, selected, onToggle }: { exhibits: ScenarioFile[]; selected: string[]; onToggle: (exhibit: ScenarioFile) => void }) {
  return (
    <Card className="p-4 evidence-selector-card">
      <h3 className="font-semibold flex items-center gap-2">
        <Highlighter className="h-4 w-4" /> Evidence used
      </h3>
      <p className="mt-1 text-xs text-muted-foreground">Tick the exhibits your answer relies on.</p>
      <div className="mt-3 space-y-2 max-h-[340px] overflow-auto pr-1">
        {exhibits.length ? exhibits.map((exhibit) => {
          const key = evidenceKey(exhibit);
          const checked = selected.includes(key);
          return (
            <button
              key={key}
              type="button"
              onClick={() => onToggle(exhibit)}
              className={`evidence-check-row w-full rounded-xl border px-3 py-2 text-left text-xs transition-colors ${checked ? "is-selected" : "bg-background hover:border-border"}`}
            >
              <span className="flex items-start gap-2">
                <span className="mt-0.5 h-4 w-4 rounded border border-border flex items-center justify-center shrink-0">
                  {checked && <CheckCircle2 className="h-3 w-3" />}
                </span>
                <span>
                  <span className="block font-medium">{exhibitLabel(exhibit)}</span>
                  <span className="block text-muted-foreground truncate">{exhibit.file_name}</span>
                </span>
              </span>
            </button>
          );
        }) : (
          <p className="text-xs text-muted-foreground rounded-xl border border-dashed p-3">No exhibits available.</p>
        )}
      </div>
    </Card>
  );
}

function QualityMeter({ result }: { result: QualityResult }) {
  return (
    <div className="quality-meter rounded-2xl border border-border bg-background/80 p-4">
      <div className="flex items-center justify-between gap-3">
        <div>
          <p className="text-xs uppercase tracking-wide text-muted-foreground">Supervisor readiness</p>
          <p className="text-2xl font-semibold text-primary">{result.score}%</p>
        </div>
        <Brain className="h-8 w-8 text-accent" />
      </div>
      <div className="mt-3 h-2 rounded-full bg-muted overflow-hidden">
        <div className="h-full rounded-full bg-accent" style={{ width: `${result.score}%` }} />
      </div>
    </div>
  );
}

function SupervisorChecklist({ result }: { result: QualityResult }) {
  return (
    <Card className="p-4 supervisor-check-card">
      <h3 className="font-semibold flex items-center gap-2">
        <Brain className="h-4 w-4" /> Supervisor check
      </h3>
      <div className="mt-3 space-y-2">
        {result.items.map((item) => (
          <div key={item.label} className="flex items-start gap-2 rounded-xl border border-border bg-background/70 p-2 text-xs">
            {item.ok ? <CheckCircle2 className="mt-0.5 h-3.5 w-3.5 text-green-600" /> : <AlertTriangle className="mt-0.5 h-3.5 w-3.5 text-amber-600" />}
            <span className={item.ok ? "text-foreground" : "text-muted-foreground"}>{item.label}</span>
          </div>
        ))}
      </div>
      <p className="mt-3 text-[11px] text-muted-foreground">This is a rule-based readiness check. Tutor/AI feedback can be added later.</p>
    </Card>
  );
}

type QualityResult = { score: number; items: Array<{ label: string; ok: boolean }> };
function getTaskQuality(task: InstructionTask, answer: string, evidence: string[], reflection: ReflectionMap[string]): QualityResult {
  const items = [
    { label: `Task ${task.number} has a substantive answer`, ok: answer.trim().length >= 120 },
    { label: "At least one exhibit is cited", ok: evidence.length > 0 },
    { label: "Risks or issues have been considered", ok: !!reflection.risk?.trim() },
    { label: "Missing information has been separated", ok: !!reflection.missing?.trim() },
    { label: "Supervisor escalation point is clear", ok: !!reflection.escalation?.trim() },
  ];
  return { score: Math.round((items.filter((item) => item.ok).length / items.length) * 100), items };
}

function FinalSubmissionBuilder({
  userId,
  scenarioId,
  scenarioCode,
  scenarioTitle,
  tasks,
  exhibits,
  initialNote,
  initialSubmission,
}: {
  userId: string;
  scenarioId: string;
  scenarioCode: string;
  scenarioTitle: string;
  tasks: InstructionTask[];
  exhibits: ScenarioFile[];
  initialNote: string;
  initialSubmission: SubmissionRecord | null;
}) {
  const qc = useQueryClient();
  const answerStorageKey = taskAnswerStorageKey(userId, scenarioId);
  const evidenceStorageKey = taskEvidenceStorageKey(userId, scenarioId);
  const reflectionStorageKey = taskReflectionStorageKey(userId, scenarioId);
  const [note, setNote] = useState(initialNote);
  const [submissionText, setSubmissionText] = useState(initialSubmission?.submission_text ?? "");
  const [saving, setSaving] = useState(false);
  const [aiCheckingFinal, setAiCheckingFinal] = useState(false);
  const [aiFinalFeedback, setAiFinalFeedback] = useState<any | null>(null);
  const [aiFinalError, setAiFinalError] = useState<string | null>(null);
  const [supervisor, setSupervisor] = useState<QualityResult | null>(null);

  useEffect(() => setNote(initialNote), [initialNote]);
  useEffect(() => setSubmissionText(initialSubmission?.submission_text ?? ""), [initialSubmission?.submission_text]);

  const readDraftData = () => {
    const answers = readStoredJson<AnswerMap>(answerStorageKey, {});
    const evidence = readStoredJson<EvidenceMap>(evidenceStorageKey, {});
    const reflections = readStoredJson<ReflectionMap>(reflectionStorageKey, {});
    return { answers, evidence, reflections };
  };

  const buildFromTasks = () => {
    const { answers, evidence, reflections } = readDraftData();
    const built = buildFinalSubmissionText(scenarioTitle, tasks, answers, evidence, reflections, exhibits);
    setSubmissionText(built);
    toast.success("Final submission built from task workspace");
  };

  const handleAiFinalReview = async () => {
    if (!submissionText.trim()) {
      toast.error("Build or write your final answer before using AI review");
      setAiFinalError("Build or write your final answer before using AI review.");
      return;
    }

    setAiCheckingFinal(true);
    setAiFinalFeedback(null);
    setAiFinalError(null);

    try {
      const result = await markAnswer({
        scenarioId,
        taskId: scenarioId === "AN-01" ? "detailed-task-1" : "final-submission",
        studentAnswer: submissionText,
        aiSectionAnswer: ""
      });

      console.log("AI final review result:", result);

      setAiFinalFeedback(result);
      toast.success("AI review complete");
    } catch (error: any) {
      console.error("AI final review failed:", error);
      const message = error?.message ?? "AI review failed. Check that the local AI backend is running on port 8891.";
      setAiFinalError(message);
      toast.error(message);
    } finally {
      setAiCheckingFinal(false);
    }
  };

  const runSupervisorCheck = () => {
    const { answers, evidence, reflections } = readDraftData();
    const results = tasks.map((task) => getTaskQuality(task, answers[task.id] ?? "", evidence[task.id] ?? [], reflections[task.id] ?? {}));
    const average = results.length ? Math.round(results.reduce((sum, item) => sum + item.score, 0) / results.length) : 0;
    const items = [
      { label: "Final submission contains meaningful text", ok: submissionText.trim().length >= 250 },
      { label: "Most task answers are substantive", ok: average >= 60 },
      { label: "Evidence has been cited across the work", ok: Object.values(evidence).some((items) => items.length > 0) },
      { label: "Missing information/risks have been considered", ok: Object.values(reflections).some((item) => item?.missing?.trim() || item?.risk?.trim()) },
      { label: "Submission is ready for tutor review", ok: submissionText.trim().length >= 250 && average >= 60 },
    ];
    setSupervisor({ score: Math.round((items.filter((item) => item.ok).length / items.length) * 100), items });
  };

  const saveNote = async () => {
    setSaving(true);
    try {
      const { error } = await supabase.from("notes").upsert(
        { user_id: userId, scenario_id: scenarioId, note_content: note },
        { onConflict: "user_id,scenario_id" },
      );
      if (error) throw error;
      toast.success("Notes saved");
      qc.invalidateQueries({ queryKey: ["scenario", scenarioCode] });
    } catch (error: any) {
      toast.error(error.message ?? "Could not save notes");
    } finally {
      setSaving(false);
    }
  };

  const saveSubmission = async (status: "draft" | "submitted") => {
    const clean = submissionText.trim();
    if (status === "submitted" && clean.length < 180) {
      toast.error("Write a meaningful final submission before submitting. Blank work should not receive a score.");
      return;
    }
    setSaving(true);
    try {
      const payload = {
        user_id: userId,
        scenario_id: scenarioId,
        submission_text: clean,
        status,
        submitted_at: status === "submitted" ? new Date().toISOString() : (initialSubmission?.submitted_at ?? null),
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
          completion_percentage: status === "submitted" ? 90 : 60,
          last_opened_at: new Date().toISOString(),
        },
        { onConflict: "user_id,scenario_id" },
      );

      toast.success(status === "submitted" ? "Final submission sent for review" : "Final submission draft saved");
      qc.invalidateQueries({ queryKey: ["scenario", scenarioCode] });
      qc.invalidateQueries({ queryKey: ["dashboard"] });
    } catch (error: any) {
      toast.error(error.message ?? "Could not save submission");
    } finally {
      setSaving(false);
    }
  };

  const copySubmission = async () => {
    await navigator.clipboard.writeText(submissionText);
    toast.success("Final submission copied");
  };

  const downloadSubmission = () => {
    const blob = new Blob([submissionText || ""], { type: "text/markdown;charset=utf-8" });
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = `${scenarioCode}-final-submission.md`;
    document.body.appendChild(a);
    a.click();
    a.remove();
    URL.revokeObjectURL(url);
  };

  return (
    <div className="grid xl:grid-cols-[1fr_360px] gap-4">
      <div className="space-y-4">
        <Card className="p-5 final-builder-card">
          <div className="flex flex-wrap items-start justify-between gap-3">
            <div>
              <p className="text-xs uppercase tracking-[0.18em] text-muted-foreground">Final deliverable</p>
              <h3 className="mt-1 text-xl font-semibold flex items-center gap-2">
                <ClipboardCheck className="h-5 w-5" /> Submission builder
              </h3>
              <p className="mt-1 text-sm text-muted-foreground">
                Build a polished final answer from your task workspace, then edit it before submission.
              </p>
            </div>
            <div className="flex flex-wrap gap-2">
              <Button type="button" variant="outline" onClick={buildFromTasks}>
                <Wand2 className="h-4 w-4 mr-2" /> Build from tasks
              </Button>
              <Button type="button" variant="outline" onClick={runSupervisorCheck}>
                <Brain className="h-4 w-4 mr-2" /> Supervisor check
              </Button>
            </div>
          </div>

          <Textarea
            value={submissionText}
            onChange={(e) => setSubmissionText(e.target.value)}
            placeholder="Build from task answers, or write your final attendance note, advice, analysis or evidence request list here..."
            className="mt-5 min-h-[470px] bg-background text-sm leading-relaxed font-mono"
          />

          {aiCheckingFinal && (
            <Card className="mt-4 rounded-2xl border border-border bg-muted/30 p-4">
              <p className="text-sm font-medium">AI review is running...</p>
              <p className="mt-1 text-sm text-muted-foreground">
                Please wait. The feedback will appear here when complete.
              </p>
            </Card>
          )}

          {aiFinalError && (
            <Card className="mt-4 rounded-2xl border border-red-200 bg-red-50 p-4">
              <p className="text-sm font-semibold text-red-700">AI review failed</p>
              <p className="mt-1 text-sm text-red-700">{aiFinalError}</p>
            </Card>
          )}

          {aiFinalFeedback && (
            <Card className="mt-4 rounded-2xl border border-amber-200 bg-amber-50/60 p-5">
              <div className="flex items-start justify-between gap-3">
                <div>
                  <p className="text-xs font-semibold uppercase tracking-[0.18em] text-muted-foreground">
                    AI review output
                  </p>
                  <h4 className="mt-1 text-lg font-semibold">AI Final Submission Review</h4>
                </div>
                <Badge variant="secondary">
                  {aiFinalFeedback.overallScore}/{aiFinalFeedback.maxScore} · {aiFinalFeedback.band}
                </Badge>
              </div>

              <p className="mt-3 text-sm text-muted-foreground">
                {aiFinalFeedback.shortSummary}
              </p>

              {!!aiFinalFeedback.criteria?.length && (
                <div className="mt-4 space-y-2">
                  <p className="text-sm font-semibold">Marking breakdown</p>
                  {aiFinalFeedback.criteria.map((item: any) => (
                    <div key={item.name} className="rounded-xl border border-border bg-background p-3">
                      <p className="text-sm font-medium">
                        {item.name}: {item.score}/{item.maxScore}
                      </p>
                      <p className="mt-1 text-sm text-muted-foreground">{item.feedback}</p>
                    </div>
                  ))}
                </div>
              )}

              {!!aiFinalFeedback.missingKeyPoints?.length && (
                <div className="mt-4">
                  <p className="text-sm font-semibold">Missing key points</p>
                  <ul className="mt-2 list-disc pl-5 text-sm text-muted-foreground">
                    {aiFinalFeedback.missingKeyPoints.map((point: string, index: number) => (
                      <li key={index}>{point}</li>
                    ))}
                  </ul>
                </div>
              )}

              {!!aiFinalFeedback.professionalRiskIssues?.length && (
                <div className="mt-4">
                  <p className="text-sm font-semibold">Professional risk issues</p>
                  <ul className="mt-2 list-disc pl-5 text-sm text-muted-foreground">
                    {aiFinalFeedback.professionalRiskIssues.map((point: string, index: number) => (
                      <li key={index}>{point}</li>
                    ))}
                  </ul>
                </div>
              )}

              {!!aiFinalFeedback.actionPlan?.length && (
                <div className="mt-4">
                  <p className="text-sm font-semibold">Action plan before tutor submission</p>
                  <ul className="mt-2 list-disc pl-5 text-sm text-muted-foreground">
                    {aiFinalFeedback.actionPlan.map((step: string, index: number) => (
                      <li key={index}>{step}</li>
                    ))}
                  </ul>
                </div>
              )}

              {aiFinalFeedback.improvedAnswer && (
                <div className="mt-4 rounded-xl border border-border bg-background p-3">
                  <p className="text-sm font-semibold">Improved example</p>
                  <p className="mt-2 whitespace-pre-wrap text-sm text-muted-foreground">
                    {aiFinalFeedback.improvedAnswer}
                  </p>
                </div>
              )}
            </Card>
          )}

          <div className="mt-4 flex flex-wrap gap-2">
            <Button onClick={() => saveSubmission("draft")} disabled={saving} variant="outline">
              <Save className="w-4 h-4 mr-2" /> Save draft
            </Button>
            <Button
              type="button"
              variant="secondary"
              onClick={handleAiFinalReview}
              disabled={aiCheckingFinal || saving || !submissionText.trim()}
            >
              <Sparkles className="w-4 h-4 mr-2" />
              {aiCheckingFinal ? "AI reviewing..." : "Submit for AI review"}
            </Button>

            <Button onClick={() => saveSubmission("submitted")} disabled={saving}>
              <Send className="w-4 h-4 mr-2" /> Submit for review
            </Button>
            <Button onClick={copySubmission} disabled={saving} variant="ghost">
              <Copy className="w-4 h-4 mr-2" /> Copy
            </Button>
            <Button onClick={downloadSubmission} disabled={saving} variant="ghost">
              <Download className="w-4 h-4 mr-2" /> Download .md
            </Button>
          </div>
        </Card>
      </div>

      <aside className="space-y-4 xl:sticky xl:top-4 xl:self-start">
        <Card className="p-5 document-card">
          <h3 className="font-semibold flex items-center gap-2">
            <StickyNote className="w-4 h-4" /> Private notes
          </h3>
          <p className="text-xs text-muted-foreground mt-1">Use this for rough work, issue spotting and exhibit references.</p>
          <Textarea
            value={note}
            onChange={(e) => setNote(e.target.value)}
            placeholder="Example: Exhibit 2 confirms the suspicious link was opened at 16:11..."
            className="mt-3 min-h-[220px] bg-background"
          />
          <Button onClick={saveNote} disabled={saving} variant="outline" className="mt-3 w-full">
            <Save className="w-4 h-4 mr-2" /> Save notes
          </Button>
        </Card>

        {supervisor ? <SupervisorChecklist result={supervisor} /> : (
          <Card className="p-5 supervisor-placeholder-card">
            <h3 className="font-semibold flex items-center gap-2">
              <Sparkles className="w-4 h-4" /> Before you submit
            </h3>
            <p className="mt-2 text-sm text-muted-foreground">
              Use the supervisor check after building your final answer. It will look for substance, evidence and risk spotting.
            </p>
          </Card>
        )}

        <Card className="p-5 skill-passport-card">
          <h3 className="font-semibold flex items-center gap-2">
            <Layers3 className="w-4 h-4" /> Skills evidenced
          </h3>
          <div className="mt-3 grid gap-2 text-xs">
            <SkillEvidenceRow label="File review" ready={!!submissionText.trim()} />
            <SkillEvidenceRow label="Evidence selection" ready={submissionText.toLowerCase().includes("exhibit")} />
            <SkillEvidenceRow label="Risk spotting" ready={submissionText.toLowerCase().includes("risk") || submissionText.toLowerCase().includes("missing")} />
            <SkillEvidenceRow label="Clear deliverable" ready={submissionText.trim().length >= 250} />
          </div>
        </Card>
      </aside>
    </div>
  );
}

function SkillEvidenceRow({ label, ready }: { label: string; ready: boolean }) {
  return (
    <div className="flex items-center justify-between gap-2 rounded-xl border border-border bg-background/70 px-3 py-2">
      <span>{label}</span>
      {ready ? <CheckCircle2 className="h-4 w-4 text-green-600" /> : <span className="text-muted-foreground">Not yet</span>}
    </div>
  );
}

function AIDevelopmentViewer({ file, document }: { file: ScenarioFile; document: ReturnType<typeof useMarkdownFileOptional> }) {
  return (
    <div className="grid xl:grid-cols-[1fr_320px] gap-4">
      <Card className="document-card premium-document ai-development-document overflow-hidden">
        <DocumentHeader fileName={file.file_name} url={document.url} badge="AI Development" />
        <div className="p-5 sm:p-7">
          {document.loading && <p className="text-sm text-muted-foreground">Loading AI development tasks…</p>}
          {document.error && <p className="text-sm text-destructive">Could not load: {document.error}</p>}
          {document.md && <MarkdownContent markdown={document.md} scope={file.storage_path ?? file.file_name} />}
          {!document.loading && !document.md && !document.error && <p className="text-sm text-muted-foreground italic">No AI development content.</p>}
        </div>
      </Card>
      <aside className="space-y-4 xl:sticky xl:top-4 xl:self-start">
        <Card className="p-5 ai-development-side-card">
          <h3 className="font-semibold flex items-center gap-2"><Brain className="h-4 w-4" /> AI supervision standard</h3>
          <ul className="mt-3 space-y-2 text-sm text-muted-foreground">
            <li>• Use AI for structure, not final legal judgment.</li>
            <li>• Check every output against the exhibits.</li>
            <li>• Do not turn uncertainty into certainty.</li>
            <li>• Escalate legal conclusions and client-care risk.</li>
          </ul>
        </Card>
      </aside>
    </div>
  );
}

function TutorGuideViewer({ file }: { file: ScenarioFile }) {
  return (
    <div className="grid xl:grid-cols-[1fr_340px] gap-4">
      <FileViewer file={file} />
      <aside className="space-y-4 xl:sticky xl:top-4 xl:self-start">
        <Card className="p-5 tutor-review-panel">
          <h3 className="font-semibold flex items-center gap-2">
            <MessageSquareText className="h-4 w-4" /> Tutor marking flow
          </h3>
          <ol className="mt-3 space-y-2 text-sm text-muted-foreground list-decimal pl-5">
            <li>Check the student answered each task.</li>
            <li>Check each conclusion is linked to exhibit evidence.</li>
            <li>Mark missing risks, assumptions and escalation points.</li>
            <li>Give action-focused feedback, not just a score.</li>
          </ol>
        </Card>
        <Card className="p-5 tutor-review-panel">
          <h3 className="font-semibold flex items-center gap-2">
            <Target className="h-4 w-4" /> Feedback prompts
          </h3>
          <div className="mt-3 space-y-2 text-xs text-muted-foreground">
            <p>• What was accurate?</p>
            <p>• What exhibit was missed?</p>
            <p>• What would a supervisor ask next?</p>
            <p>• What should the student change in their final draft?</p>
          </div>
        </Card>
      </aside>
    </div>
  );
}

function TutorLockedState() {
  return (
    <Card className="p-6 tutor-locked-card">
      <h3 className="font-semibold flex items-center gap-2"><Lock className="h-4 w-4" /> Tutor guide locked</h3>
      <p className="mt-2 text-sm text-muted-foreground">
        Tutor guidance is reserved for tutor/admin accounts. Students should complete the exhibits, practice tasks, AI development and final submission first.
      </p>
    </Card>
  );
}

function TutorEmptyState() {
  return (
    <Card className="p-6">
      <h3 className="font-semibold flex items-center gap-2"><Lock className="h-4 w-4" /> No tutor guide connected</h3>
      <p className="mt-2 text-sm text-muted-foreground">Tutor content will appear here when the matching tutor pack or answer guide is connected.</p>
    </Card>
  );
}

function InlineAnswerBox({ storageKey }: { storageKey: string }) {
  const [value, setValue] = useLocalString(storageKey, "");
  return (
    <div className="inline-answer-box not-prose my-4 rounded-2xl border border-border bg-background/90 p-4 shadow-sm">
      <div className="mb-2 flex items-center justify-between gap-2">
        <span className="text-xs font-semibold uppercase tracking-wide text-muted-foreground">Your answer</span>
        <span className="text-[11px] text-muted-foreground">Editable · saved in this browser</span>
      </div>
      <Textarea
        value={value}
        onChange={(event) => setValue(event.target.value)}
        placeholder="Type your answer here..."
        className="min-h-[130px] resize-y bg-card text-sm leading-relaxed"
      />
    </div>
  );
}

function prepareMarkdownWithAnswerMarkers(markdown: string) {
  let index = 0;
  return cleanMarkdownForDisplay(markdown).replace(
    /^>\s*_?\s*Type your answer here\.?\s*_?\s*$/gim,
    () => `\n\n[[LAWBRIDGE_ANSWER_BOX_${++index}]]\n\n`,
  );
}

function nodeText(children: ReactNode): string {
  if (children === null || children === undefined || typeof children === "boolean") return "";
  if (typeof children === "string" || typeof children === "number") return String(children);
  if (Array.isArray(children)) return children.map(nodeText).join("");
  if (typeof children === "object" && "props" in children) {
    return nodeText((children as { props?: { children?: ReactNode } }).props?.children);
  }
  return "";
}

function extractInstructionTasks(markdown: string | null): InstructionTask[] {
  if (!markdown) return [];
  const cleaned = cleanMarkdownForDisplay(markdown);
  const lines = cleaned.split(/\r?\n/).map((line) => line.trim()).filter(Boolean);
  const tasks: InstructionTask[] = [];
  let inTaskSection = false;

  for (const rawLine of lines) {
    const line = rawLine.replace(/^#+\s*/, "").replace(/^[-*]\s+/, "").trim();
    const lower = line.toLowerCase();

    if (
      lower.includes("detailed practice tasks") ||
      lower.includes("student practice tasks") ||
      lower === "practice tasks" ||
      lower === "tasks"
    ) {
      inTaskSection = true;
      continue;
    }

    if (
      inTaskSection &&
      (lower.includes("working method") ||
        lower.includes("final student submission") ||
        lower.includes("reflection questions") ||
        lower.includes("ai ground rules") ||
        lower.includes("fundamental ai skills") ||
        lower.includes("completion standard"))
    ) {
      break;
    }

    if (!inTaskSection) continue;

    const match = line.match(/^(?:task\s*)?(\d{1,2})[.)\s:-]+(.+)$/i);
    if (!match) continue;

    const number = match[1].padStart(2, "0");
    const title = match[2].replace(/\s+/g, " ").replace(/^[-–—:\s]+/, "").trim();
    if (!title || title.length < 4) continue;
    if (tasks.some((task) => task.number === number && task.title === title)) continue;
    tasks.push({ id: `task-${number}`, number, title });
  }
  return tasks;
}

function formatTaskSubmission(tasks: InstructionTask[], answers: AnswerMap, evidence: EvidenceMap, reflections: ReflectionMap, exhibits: ScenarioFile[]) {
  const lines = ["# Task Answers", ""];
  for (const task of tasks) {
    lines.push(`## Task ${task.number}: ${task.title}`);
    lines.push(answers[task.id]?.trim() || "[Not answered yet]");
    const evidenceLabels = (evidence[task.id] ?? []).map((key) => exhibitLabelFromKey(key, exhibits));
    if (evidenceLabels.length) {
      lines.push("", "Evidence used:");
      evidenceLabels.forEach((label) => lines.push(`- ${label}`));
    }
    const reflection = reflections[task.id] ?? {};
    if (reflection.risk?.trim()) lines.push("", `Risks spotted: ${reflection.risk.trim()}`);
    if (reflection.missing?.trim()) lines.push("", `Missing information: ${reflection.missing.trim()}`);
    if (reflection.escalation?.trim()) lines.push("", `Escalation point: ${reflection.escalation.trim()}`);
    lines.push("");
  }
  return lines.join("\n");
}

function buildFinalSubmissionText(title: string, tasks: InstructionTask[], answers: AnswerMap, evidence: EvidenceMap, reflections: ReflectionMap, exhibits: ScenarioFile[]) {
  const date = new Date().toLocaleDateString();
  const lines = [
    `# Final Submission: ${title}`,
    "",
    `Prepared: ${date}`,
    "",
    "## Executive Summary",
    "Summarise your overall conclusion here after reviewing the task answers below.",
    "",
    "## Task-Based Analysis",
    "",
  ];

  for (const task of tasks) {
    const evidenceLabels = (evidence[task.id] ?? []).map((key) => exhibitLabelFromKey(key, exhibits));
    const reflection = reflections[task.id] ?? {};
    lines.push(`### Task ${task.number}: ${task.title}`);
    lines.push(answers[task.id]?.trim() || "[Draft answer required]");
    if (evidenceLabels.length) {
      lines.push("", "Evidence relied on:");
      evidenceLabels.forEach((label) => lines.push(`- ${label}`));
    }
    if (reflection.risk?.trim() || reflection.missing?.trim() || reflection.escalation?.trim()) {
      lines.push("", "Supervisor notes:");
      if (reflection.risk?.trim()) lines.push(`- Risks: ${reflection.risk.trim()}`);
      if (reflection.missing?.trim()) lines.push(`- Missing information: ${reflection.missing.trim()}`);
      if (reflection.escalation?.trim()) lines.push(`- Escalation: ${reflection.escalation.trim()}`);
    }
    lines.push("");
  }

  lines.push("## Final Recommendations / Next Steps", "", "1. ", "2. ", "3. ");
  return lines.join("\n");
}

function parseTaskAnswersFromSubmission(submission: string, tasks: InstructionTask[]) {
  const answers: AnswerMap = {};
  if (!submission) return answers;
  tasks.forEach((task, index) => {
    const currentHeading = new RegExp(`^##\\s*Task\\s*${task.number}[:\\s-].*$`, "im");
    const currentMatch = currentHeading.exec(submission);
    if (!currentMatch) return;
    const start = currentMatch.index + currentMatch[0].length;
    const nextTask = tasks[index + 1];
    const nextMatch = nextTask ? new RegExp(`^##\\s*Task\\s*${nextTask.number}[:\\s-].*$`, "im").exec(submission.slice(start)) : null;
    const end = nextMatch ? start + nextMatch.index : submission.length;
    const answer = submission.slice(start, end).trim();
    if (answer && answer !== "[Not answered yet]") answers[task.id] = answer;
  });
  return answers;
}

function removePracticeTaskListFromMarkdown(markdown: string | null) {
  if (!markdown) return null;
  const cleaned = cleanMarkdownForDisplay(markdown);
  const lines = cleaned.split(/\r?\n/);
  const output: string[] = [];
  let inTaskSection = false;
  let removedAnyTaskLine = false;

  const isTaskSectionHeading = (line: string) => {
    const normalised = line.replace(/^#+\s*/, "").trim().toLowerCase();
    return normalised.includes("detailed practice tasks") || normalised.includes("student practice tasks") || normalised === "practice tasks" || normalised === "tasks";
  };

  const isNextSectionHeading = (line: string) => {
    const normalised = line.replace(/^#+\s*/, "").trim().toLowerCase();
    return normalised.includes("working method") || normalised.includes("final student submission") || normalised.includes("reflection questions") || normalised.includes("ai ground rules") || normalised.includes("fundamental ai skills") || normalised.includes("completion standard") || normalised.includes("marking") || normalised.includes("submission checklist");
  };

  const isNumberedTaskLine = (line: string) => /^\s*(?:[-*]\s*)?(?:task\s*)?\d{1,2}[.)\s:-]+\S+/i.test(line.trim());

  for (const line of lines) {
    if (isTaskSectionHeading(line)) {
      inTaskSection = true;
      removedAnyTaskLine = false;
      continue;
    }
    if (inTaskSection && isNextSectionHeading(line)) {
      inTaskSection = false;
      output.push(line);
      continue;
    }
    if (inTaskSection) {
      if (isNumberedTaskLine(line)) {
        removedAnyTaskLine = true;
        continue;
      }
      if (!line.trim() || /^\s*[-*]\s*$/.test(line)) continue;
      const looksLikeTaskIntro = /complete the following practice tasks|your answers must cite|do not give broad commentary/i.test(line);
      if (looksLikeTaskIntro) continue;
      if (!removedAnyTaskLine) output.push(line);
      continue;
    }
    output.push(line);
  }
  return output.join("\n").replace(/\n{4,}/g, "\n\n").trim();
}

function cleanMarkdownForDisplay(markdown: string) {
  return markdown
    .replace(/&lt;img\b[^&]*(?:&gt;|\/&gt;)/gi, "")
    .replace(/&lt;br\s*\/?\s*&gt;/gi, "\n")
    .replace(/&lt;\/?strong[^&]*&gt;/gi, "**")
    .replace(/&lt;\/?b[^&]*&gt;/gi, "**")
    .replace(/&lt;\/?em[^&]*&gt;/gi, "*")
    .replace(/&lt;\/?i[^&]*&gt;/gi, "*")
    .replace(/&lt;\/?(?:table|thead|tbody|tr|td|th|div|span|p|colgroup|col)[^&]*&gt;/gi, "\n")
    .replace(/<img\b[^>]*>/gi, "")
    .replace(/<br\s*\/?\s*>/gi, "\n")
    .replace(/<\/?strong[^>]*>/gi, "**")
    .replace(/<\/?b[^>]*>/gi, "**")
    .replace(/<\/?em[^>]*>/gi, "*")
    .replace(/<\/?i[^>]*>/gi, "*")
    .replace(/<\/?(?:table|thead|tbody|tr|td|th|div|span|p|colgroup|col)[^>]*>/gi, "\n")
    .replace(/&nbsp;/gi, " ")
    .replace(/&amp;/gi, "&")
    .replace(/\n{4,}/g, "\n\n")
    .trim();
}

function evidenceKey(exhibit?: ScenarioFile) {
  if (!exhibit) return "";
  return exhibit.id ?? exhibit.storage_path ?? exhibit.file_name;
}

function exhibitLabel(exhibit: ScenarioFile) {
  return `Exhibit ${exhibit.exhibit_number ?? "·"}: ${exhibit.file_name.replace(/\.md$/i, "")}`;
}

function exhibitLabelFromKey(key: string, exhibits: ScenarioFile[]) {
  const exhibit = exhibits.find((item) => evidenceKey(item) === key);
  return exhibit ? exhibitLabel(exhibit) : key;
}

function taskAnswerStorageKey(userId: string, scenarioId: string) {
  return `lawbridge-task-answers:${userId}:${scenarioId}`;
}
function taskEvidenceStorageKey(userId: string, scenarioId: string) {
  return `lawbridge-task-evidence:${userId}:${scenarioId}`;
}
function taskReflectionStorageKey(userId: string, scenarioId: string) {
  return `lawbridge-task-reflections:${userId}:${scenarioId}`;
}

function useLocalString(key: string, initial: string) {
  const [value, setValue] = useState(initial);
  useEffect(() => {
    try {
      const saved = window.localStorage.getItem(key);
      if (saved !== null) setValue(saved);
      else setValue(initial);
    } catch {
      setValue(initial);
    }
  }, [key, initial]);
  useEffect(() => {
    try {
      window.localStorage.setItem(key, value);
    } catch {
      // ignore
    }
  }, [key, value]);
  return [value, setValue] as const;
}

function useLocalRecord<T>(key: string, initial: T) {
  const [value, setValue] = useState<T>(initial);
  useEffect(() => {
    setValue(readStoredJson<T>(key, initial));
  }, [key]);
  useEffect(() => {
    try {
      window.localStorage.setItem(key, JSON.stringify(value));
    } catch {
      // ignore
    }
  }, [key, value]);
  return [value, setValue] as const;
}

function readStoredJson<T>(key: string, fallback: T): T {
  try {
    const raw = window.localStorage.getItem(key);
    return raw ? (JSON.parse(raw) as T) : fallback;
  } catch {
    return fallback;
  }
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
