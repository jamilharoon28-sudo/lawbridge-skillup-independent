import { createFileRoute, Link } from "@tanstack/react-router";
import { Scale, BookOpen, Users, Sparkles } from "lucide-react";
import { Button } from "@/components/ui/button";

export const Route = createFileRoute("/")({
  head: () => ({
    meta: [
      { title: "LawBridge Skills Portal" },
      {
        name: "description",
        content:
          "Practical legal skills training — scenarios, exhibits, worksheets and tutor feedback for trainee lawyers.",
      },
      { property: "og:title", content: "LawBridge Skills Portal" },
      {
        property: "og:description",
        content: "Practical legal skills training for trainee lawyers.",
      },
    ],
  }),
  component: Landing,
});

function Landing() {
  return (
    <div className="min-h-screen bg-background">
      <header className="border-b border-border">
        <div className="mx-auto max-w-7xl px-6 h-14 flex items-center justify-between">
          <div className="flex items-center gap-2 font-semibold text-primary">
            <span className="w-7 h-7 rounded-md bg-primary text-primary-foreground flex items-center justify-center">
              <Scale className="w-4 h-4" />
            </span>
            LawBridge
          </div>
          <div className="flex items-center gap-2">
            <Button asChild variant="ghost" size="sm">
              <Link to="/auth">Sign in</Link>
            </Button>
            <Button asChild size="sm">
              <Link to="/auth">Get started</Link>
            </Button>
          </div>
        </div>
      </header>

      <section className="mx-auto max-w-5xl px-6 py-20 text-center">
        <div className="inline-flex items-center gap-2 rounded-full border border-border px-3 py-1 text-xs text-muted-foreground mb-6">
          <Sparkles className="w-3 h-3" /> Practical legal skills training
        </div>
        <h1 className="text-4xl md:text-6xl font-semibold tracking-tight text-foreground">
          From law school to <span className="text-accent">practice-ready</span>.
        </h1>
        <p className="mt-5 text-lg text-muted-foreground max-w-2xl mx-auto">
          LawBridge gives trainee lawyers realistic matter files, structured scenarios and
          tutor-marked worksheets across 20 core legal and practical skills.
        </p>
        <div className="mt-8 flex flex-wrap justify-center gap-3">
          <Button asChild size="lg">
            <Link to="/auth">Open the portal</Link>
          </Button>
          <Button asChild size="lg" variant="outline">
            <Link to="/skills">Browse skills</Link>
          </Button>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-6 pb-20 grid md:grid-cols-3 gap-6">
        {[
          {
            icon: BookOpen,
            title: "20 skills, 40 scenarios",
            body: "Realistic matter files with exhibits, task briefs and required outputs — drawn from real practice.",
          },
          {
            icon: Users,
            title: "Student & tutor packs",
            body: "Students work the file. Tutors access answer guides and AI marking prompts gated by role.",
          },
          {
            icon: Sparkles,
            title: "Progress & feedback",
            body: "Track completion, capture notes, submit work and receive structured feedback (AI coach in Phase 3).",
          },
        ].map((f) => (
          <div key={f.title} className="rounded-lg border border-border bg-card p-6">
            <f.icon className="w-6 h-6 text-accent mb-3" />
            <h3 className="font-semibold text-foreground">{f.title}</h3>
            <p className="mt-2 text-sm text-muted-foreground">{f.body}</p>
          </div>
        ))}
      </section>
    </div>
  );
}
