import { createFileRoute, Link } from "@tanstack/react-router";
import { ArrowRight, BookOpen, CheckCircle2, FileText, GraduationCap, Sparkles, Users } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";

export const Route = createFileRoute("/")({
  head: () => ({
    meta: [
      { title: "LawBridge Skills Portal" },
      {
        name: "description",
        content:
          "Practical legal skills training — interactive scenarios, exhibits, task workspaces and tutor feedback for aspiring lawyers.",
      },
      { property: "og:title", content: "LawBridge Skills Portal" },
      {
        property: "og:description",
        content: "Interactive practical legal skills training for aspiring lawyers.",
      },
    ],
  }),
  component: Landing,
});

function Landing() {
  return (
    <div className="landing-page min-h-screen bg-background">
      <header className="border-b border-border/70 bg-background/90 backdrop-blur-xl">
        <div className="mx-auto flex h-16 max-w-7xl items-center justify-between px-6">
          <Link to="/" className="flex items-center gap-3 font-semibold text-primary">
            <img
              src="/lawbridge-logo-header.png"
              alt="LawBridge"
              className="h-11 w-auto object-contain"
            />
            <span className="sr-only">LawBridge Skills Portal</span>
          </Link>
          <div className="flex items-center gap-2">
            <Button asChild variant="ghost" size="sm">
              <Link to="/auth">Sign in</Link>
            </Button>
            <Button asChild size="sm">
              <Link to="/auth">Open portal</Link>
            </Button>
          </div>
        </div>
      </header>

      <section className="landing-hero mx-auto max-w-7xl px-6 py-16 sm:py-24">
        <div className="grid items-center gap-10 lg:grid-cols-[1fr_460px]">
          <div>
            <Badge variant="outline" className="rounded-full bg-white/50 px-3 py-1 shadow-sm">
              <Sparkles className="mr-1.5 h-3.5 w-3.5 text-accent" /> Practical legal skills training
            </Badge>
            <h1 className="mt-6 max-w-4xl text-4xl font-semibold tracking-tight sm:text-6xl">
              From law school to <span className="text-accent">practice-ready</span>.
            </h1>
            <p className="mt-6 max-w-2xl text-lg text-muted-foreground">
              LawBridge turns legal training into realistic matter-file simulations: exhibits first,
              interactive tasks second, final submission third, tutor guidance behind the scenes.
            </p>
            <div className="mt-8 flex flex-wrap gap-3">
              <Button asChild size="lg">
                <Link to="/auth">
                  Enter the portal <ArrowRight className="ml-2 h-4 w-4" />
                </Link>
              </Button>
              <Button asChild size="lg" variant="outline">
                <Link to="/auth">Browse skills</Link>
              </Button>
            </div>
          </div>

          <div className="landing-preview rounded-[2rem] border border-border/70 bg-card/80 p-4 shadow-xl backdrop-blur">
            <div className="rounded-[1.5rem] border border-border bg-background p-4">
              <div className="mb-4 flex items-center justify-between">
                <div>
                  <p className="text-xs uppercase tracking-[0.18em] text-muted-foreground">Simulation</p>
                  <h3 className="font-semibold">AN-01 · Attendance Note</h3>
                </div>
                <Badge>Live workspace</Badge>
              </div>
              <div className="grid grid-cols-4 gap-2 text-center text-xs">
                {["Exhibits", "Tasks", "Final", "Tutor"].map((item, index) => (
                  <div key={item} className={`rounded-xl border p-3 ${index === 1 ? "border-accent bg-accent/10 text-accent" : "border-border bg-card"}`}>
                    {item}
                  </div>
                ))}
              </div>
              <div className="mt-4 space-y-3">
                {["Identify the awareness date", "Extract affected systems", "Prepare an attendance note"].map((task, index) => (
                  <div key={task} className="rounded-2xl border border-border bg-card p-4 shadow-sm">
                    <div className="flex items-center gap-3">
                      <span className="flex h-8 w-8 items-center justify-center rounded-full bg-primary text-xs font-semibold text-primary-foreground">
                        {index + 1}
                      </span>
                      <div className="font-medium">{task}</div>
                    </div>
                    <div className="mt-3 h-16 rounded-xl border border-dashed border-border bg-muted/50" />
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      <section className="mx-auto grid max-w-7xl gap-6 px-6 pb-20 md:grid-cols-3">
        {[
          {
            icon: BookOpen,
            title: "Matter-file learning",
            body: "Students start with exhibits and evidence before writing conclusions, just like practical legal work.",
          },
          {
            icon: FileText,
            title: "Task workspaces",
            body: "Each numbered practice task opens into its own editable workspace with saved answers.",
          },
          {
            icon: Users,
            title: "Tutor guidance",
            body: "Tutor and admin users can access guidance, submissions and structured review workflows.",
          },
        ].map((feature) => (
          <div key={feature.title} className="feature-card rounded-3xl border border-border/70 bg-card p-6 shadow-sm">
            <feature.icon className="h-6 w-6 text-accent" />
            <h3 className="mt-4 font-semibold text-foreground">{feature.title}</h3>
            <p className="mt-2 text-sm text-muted-foreground">{feature.body}</p>
          </div>
        ))}
      </section>

      <section className="mx-auto max-w-7xl px-6 pb-20">
        <div className="rounded-[2rem] border border-border/70 bg-primary p-8 text-primary-foreground shadow-xl sm:p-10">
          <div className="grid gap-6 md:grid-cols-[1fr_260px] md:items-center">
            <div>
              <div className="mb-3 inline-flex items-center gap-2 rounded-full bg-white/10 px-3 py-1 text-xs">
                <GraduationCap className="h-3.5 w-3.5" /> Built for practical progression
              </div>
              <h2 className="text-2xl font-semibold sm:text-3xl">Train with structure, not blank documents.</h2>
              <p className="mt-3 max-w-2xl text-sm text-primary-foreground/75">
                Open the portal to work through simulations, track progress and build better trainee-style outputs.
              </p>
            </div>
            <Button asChild size="lg" variant="secondary" className="justify-self-start md:justify-self-end">
              <Link to="/auth">
                Get started <CheckCircle2 className="ml-2 h-4 w-4" />
              </Link>
            </Button>
          </div>
        </div>
      </section>
    </div>
  );
}
