import { createFileRoute, useNavigate, Link } from "@tanstack/react-router";
import { useEffect, useState } from "react";
import type { FormEvent } from "react";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import {
  BookOpen,
  CheckCircle2,
  FileText,
  KeyRound,
  Mail,
  Scale,
  ShieldCheck,
  Sparkles,
} from "lucide-react";
import { toast } from "sonner";

export const Route = createFileRoute("/auth")({
  ssr: false,
  head: () => ({ meta: [{ title: "Sign in — LawBridge" }] }),
  component: AuthPage,
});

function AuthPage() {
  const navigate = useNavigate();
  const [mode, setMode] = useState<"signin" | "signup">("signin");
  const [authMethod, setAuthMethod] = useState<"password" | "magic">("password");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [name, setName] = useState("");
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    supabase.auth.getUser().then(({ data }) => {
      if (data.user) navigate({ to: "/dashboard" });
    });
  }, [navigate]);

  const ensureProfile = async (fullName?: string) => {
    const { data } = await supabase.auth.getUser();
    if (!data.user) return;

    await supabase.from("profiles").upsert(
      {
        id: data.user.id,
        email: data.user.email,
        full_name: fullName || data.user.user_metadata?.full_name || data.user.email,
      },
      { onConflict: "id" },
    );
  };

  const handlePasswordAuth = async (event: FormEvent) => {
    event.preventDefault();
    setLoading(true);

    try {
      if (mode === "signup") {
        const { data, error } = await supabase.auth.signUp({
          email: email.trim(),
          password,
          options: {
            data: { full_name: name.trim() },
            emailRedirectTo: `${window.location.origin}/dashboard`,
          },
        });

        if (error) throw error;

        if (data.session) {
          await ensureProfile(name.trim());
          toast.success("Account created. Welcome to LawBridge.");
          navigate({ to: "/dashboard" });
          return;
        }

        toast.success("Account created. Check your email to confirm your account, then sign in.");
        setMode("signin");
        return;
      }

      const { error } = await supabase.auth.signInWithPassword({
        email: email.trim(),
        password,
      });

      if (error) throw error;

      await ensureProfile();
      toast.success("Signed in successfully.");
      navigate({ to: "/dashboard" });
    } catch (err: any) {
      toast.error(err.message ?? "Authentication failed");
    } finally {
      setLoading(false);
    }
  };

  const handleMagicLink = async (event: FormEvent) => {
    event.preventDefault();
    setLoading(true);

    try {
      const { error } = await supabase.auth.signInWithOtp({
        email: email.trim(),
        options: {
          shouldCreateUser: true,
          emailRedirectTo: `${window.location.origin}/dashboard`,
        },
      });

      if (error) throw error;

      toast.success("Magic link sent. Check your email and open the link to continue.");
    } catch (err: any) {
      toast.error(err.message ?? "Could not send magic link");
    } finally {
      setLoading(false);
    }
  };

  const isSignup = mode === "signup";
  const isMagic = authMethod === "magic";

  return (
    <div className="auth-page min-h-screen bg-background px-4 py-8">
      <div className="mx-auto grid min-h-[calc(100vh-4rem)] w-full max-w-6xl items-center gap-8 lg:grid-cols-[1fr_440px]">
        <section className="hidden lg:block">
          <Link to="/" className="mb-10 inline-flex items-center gap-3 font-semibold text-primary">
            <span className="brand-mark flex h-11 w-11 items-center justify-center rounded-2xl text-primary-foreground shadow-sm">
              <Scale className="h-5 w-5" />
            </span>
            <span>
              <span className="block text-lg">LawBridge</span>
              <span className="text-xs uppercase tracking-[0.18em] text-muted-foreground">Skills Portal</span>
            </span>
          </Link>

          <Badge variant="outline" className="mb-4 rounded-full bg-white/50 px-3 py-1">
            <Sparkles className="mr-1.5 h-3.5 w-3.5 text-accent" /> Interactive legal training
          </Badge>
          <h1 className="max-w-2xl text-4xl font-semibold tracking-tight sm:text-5xl">
            Work realistic matter files with structured task workspaces.
          </h1>
          <p className="mt-5 max-w-xl text-muted-foreground">
            Review exhibits, complete scenario-specific tasks, draft a final submission and track
            your progress across the LawBridge skills library.
          </p>

          <div className="mt-8 grid max-w-2xl grid-cols-3 gap-3">
            <AuthFeature icon={BookOpen} title="Exhibits" body="Matter files, documents and evidence." />
            <AuthFeature icon={FileText} title="Tasks" body="Editable answers and final submissions." />
            <AuthFeature icon={ShieldCheck} title="Tutor layer" body="Guides and review workflows." />
          </div>
        </section>

        <div className="w-full">
          <Link to="/" className="mb-6 flex items-center justify-center gap-2 font-semibold text-primary lg:hidden">
            <span className="brand-mark flex h-9 w-9 items-center justify-center rounded-2xl text-primary-foreground">
              <Scale className="h-4 w-4" />
            </span>
            LawBridge Skills Portal
          </Link>

          <Card className="auth-card overflow-hidden shadow-xl">
            <CardHeader className="auth-card-header">
              <CardTitle className="text-2xl">{isSignup ? "Create your account" : "Welcome back"}</CardTitle>
              <CardDescription>
                {isSignup
                  ? "Create a learner account using email and password, or use a password-free magic link."
                  : "Sign in to access your simulations, progress and submissions."}
              </CardDescription>
            </CardHeader>
            <CardContent className="space-y-5 p-6">
              <div className="grid grid-cols-2 gap-2 rounded-2xl border border-border bg-muted/40 p-1">
                <button
                  type="button"
                  onClick={() => setAuthMethod("password")}
                  className={`rounded-xl px-3 py-2 text-sm font-semibold transition ${
                    authMethod === "password" ? "bg-background text-primary shadow-sm" : "text-muted-foreground hover:text-foreground"
                  }`}
                >
                  <KeyRound className="mr-1.5 inline h-4 w-4" /> Password
                </button>
                <button
                  type="button"
                  onClick={() => setAuthMethod("magic")}
                  className={`rounded-xl px-3 py-2 text-sm font-semibold transition ${
                    authMethod === "magic" ? "bg-background text-primary shadow-sm" : "text-muted-foreground hover:text-foreground"
                  }`}
                >
                  <Mail className="mr-1.5 inline h-4 w-4" /> Magic link
                </button>
              </div>

              {isMagic ? (
                <form onSubmit={handleMagicLink} className="space-y-4">
                  <div className="rounded-2xl border border-accent/20 bg-accent/5 p-4 text-sm text-muted-foreground">
                    Enter your email and we will send you a secure sign-in link. No Google Cloud setup is needed.
                  </div>
                  <div>
                    <Label htmlFor="magic-email">Email</Label>
                    <Input
                      id="magic-email"
                      type="email"
                      value={email}
                      onChange={(event) => setEmail(event.target.value)}
                      required
                      placeholder="you@example.com"
                    />
                  </div>
                  <Button type="submit" className="w-full" disabled={loading}>
                    {loading ? "Sending link..." : "Send magic login link"}
                  </Button>
                </form>
              ) : (
                <form onSubmit={handlePasswordAuth} className="space-y-4">
                  {isSignup && (
                    <div>
                      <Label htmlFor="name">Full name</Label>
                      <Input
                        id="name"
                        value={name}
                        onChange={(event) => setName(event.target.value)}
                        required
                        placeholder="Your name"
                      />
                    </div>
                  )}
                  <div>
                    <Label htmlFor="email">Email</Label>
                    <Input
                      id="email"
                      type="email"
                      value={email}
                      onChange={(event) => setEmail(event.target.value)}
                      required
                      placeholder="you@example.com"
                    />
                  </div>
                  <div>
                    <Label htmlFor="password">Password</Label>
                    <Input
                      id="password"
                      type="password"
                      minLength={6}
                      value={password}
                      onChange={(event) => setPassword(event.target.value)}
                      required
                      placeholder="Minimum 6 characters"
                    />
                  </div>
                  <Button type="submit" className="w-full" disabled={loading}>
                    {loading ? "Please wait..." : isSignup ? "Create account" : "Sign in"}
                  </Button>
                </form>
              )}

              <div className="rounded-2xl border border-dashed border-border bg-muted/25 p-4 text-sm text-muted-foreground">
                <div className="flex items-start gap-3">
                  <CheckCircle2 className="mt-0.5 h-4 w-4 text-accent" />
                  <div>
                    <p className="font-medium text-foreground">Google sign-in is disabled for now.</p>
                    <p className="mt-1">
                      Use email/password or magic link. Google can be added later when the OAuth setup is ready.
                    </p>
                  </div>
                </div>
              </div>

              <p className="text-center text-sm text-muted-foreground">
                {isSignup ? (
                  <>
                    Already have an account?{" "}
                    <button
                      type="button"
                      className="font-medium text-accent hover:underline"
                      onClick={() => setMode("signin")}
                    >
                      Sign in
                    </button>
                  </>
                ) : (
                  <>
                    New to LawBridge?{" "}
                    <button
                      type="button"
                      className="font-medium text-accent hover:underline"
                      onClick={() => setMode("signup")}
                    >
                      Create an account
                    </button>
                  </>
                )}
              </p>
            </CardContent>
          </Card>
        </div>
      </div>
    </div>
  );
}

function AuthFeature({ icon: Icon, title, body }: { icon: any; title: string; body: string }) {
  return (
    <div className="rounded-2xl border border-border/70 bg-white/55 p-4 shadow-sm backdrop-blur">
      <Icon className="h-5 w-5 text-accent" />
      <div className="mt-3 font-semibold">{title}</div>
      <p className="mt-1 text-xs text-muted-foreground">{body}</p>
    </div>
  );
}
