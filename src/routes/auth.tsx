import { createFileRoute, Link } from "@tanstack/react-router";
import { useState } from "react";
import type { FormEvent } from "react";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import {
  AlertCircle,
  BookOpen,
  CheckCircle2,
  FileText,
  KeyRound,
  LockKeyhole,
  Mail,
  ShieldCheck,
  Sparkles,
  UserRound,
} from "lucide-react";
import { toast } from "sonner";

export const Route = createFileRoute("/auth")({
  ssr: false,
  head: () => ({ meta: [{ title: "Sign in — LawBridge" }] }),
  component: AuthPage,
});

type AuthMode = "signin" | "signup";
type AuthMethod = "password" | "magic";
type PortalMode = "student" | "admin";

const AUTH_TIMEOUT_MS = 15000;

function withTimeout<T>(promise: Promise<T>, label: string): Promise<T> {
  return new Promise((resolve, reject) => {
    const timer = window.setTimeout(() => {
      reject(new Error(`${label} timed out. Please check your internet connection and Supabase settings, then try again.`));
    }, AUTH_TIMEOUT_MS);

    promise
      .then((value) => {
        window.clearTimeout(timer);
        resolve(value);
      })
      .catch((error) => {
        window.clearTimeout(timer);
        reject(error);
      });
  });
}

function redirectTo(path: "/dashboard" | "/admin") {
  window.location.replace(path);
}

function AuthPage() {
  const [portalMode, setPortalMode] = useState<PortalMode>("student");
  const [mode, setMode] = useState<AuthMode>("signin");
  const [authMethod, setAuthMethod] = useState<AuthMethod>("password");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [name, setName] = useState("");
  const [loading, setLoading] = useState(false);
  const [authError, setAuthError] = useState("");
  const [infoMessage, setInfoMessage] = useState("");

  const cleanEmail = email.trim().toLowerCase();
  const isSignup = mode === "signup";
  const isMagic = authMethod === "magic";
  const isAdminPortal = portalMode === "admin";

  const switchPortal = (nextPortal: PortalMode) => {
    setPortalMode(nextPortal);
    setMode("signin");
    setAuthMethod("password");
    setAuthError("");
    setInfoMessage("");
  };

  const switchMode = (nextMode: AuthMode) => {
    setMode(nextMode);
    setAuthError("");
    setInfoMessage("");
  };

  const switchMethod = (nextMethod: AuthMethod) => {
    setAuthMethod(nextMethod);
    setAuthError("");
    setInfoMessage("");
  };

  const handlePasswordAuth = async (event: FormEvent) => {
    event.preventDefault();
    setLoading(true);
    setAuthError("");
    setInfoMessage("");

    try {
      if (!cleanEmail) throw new Error("Please enter an email address.");
      if (!password || password.length < 6) throw new Error("Password must be at least 6 characters.");

      if (isAdminPortal) {
        const { error } = await withTimeout(
          supabase.auth.signInWithPassword({ email: cleanEmail, password }),
          "Admin sign in",
        );

        if (error) throw error;

        toast.success("Signed in. Opening admin area...");
        redirectTo("/admin");
        return;
      }

      if (isSignup) {
        const fullName = name.trim();
        if (!fullName) throw new Error("Please enter your full name.");

        const { data, error } = await withTimeout(
          supabase.auth.signUp({
            email: cleanEmail,
            password,
            options: {
              data: { full_name: fullName },
              emailRedirectTo: `${window.location.origin}/dashboard`,
            },
          }),
          "Account creation",
        );

        if (error) throw error;

        if (data.session) {
          toast.success("Account created. Welcome to LawBridge.");
          redirectTo("/dashboard");
          return;
        }

        setInfoMessage(
          "Account created. Please check your email to confirm the account, then return here and sign in.",
        );
        toast.success("Account created. Please check your email if confirmation is enabled.");
        setMode("signin");
        setLoading(false);
        return;
      }

      const { error } = await withTimeout(
        supabase.auth.signInWithPassword({ email: cleanEmail, password }),
        "Student sign in",
      );

      if (error) throw error;

      toast.success("Signed in successfully.");
      redirectTo("/dashboard");
    } catch (err: any) {
      const message = err?.message || "Authentication failed. Please try again.";
      setAuthError(message);
      toast.error(message);
      setLoading(false);
    }
  };



  const handlePasswordRecovery = async () => {
    setLoading(true);
    setAuthError("");
    setInfoMessage("");

    try {
      if (!cleanEmail) throw new Error("Enter your email address first, then press reset password.");

      const { error } = await withTimeout(
        supabase.auth.resetPasswordForEmail(cleanEmail, {
          redirectTo: `${window.location.origin}/reset-password`,
        }),
        "Password recovery",
      );

      if (error) throw error;

      setInfoMessage("Password reset link sent. Check your email and open the link to choose a new password.");
      toast.success("Password reset link sent.");
    } catch (err: any) {
      const message = err?.message || "Could not send password reset link.";
      setAuthError(message);
      toast.error(message);
    } finally {
      setLoading(false);
    }
  };

  const handleMagicLink = async (event: FormEvent) => {
    event.preventDefault();
    setLoading(true);
    setAuthError("");
    setInfoMessage("");

    try {
      if (!cleanEmail) throw new Error("Please enter an email address.");

      const { error } = await withTimeout(
        supabase.auth.signInWithOtp({
          email: cleanEmail,
          options: {
            shouldCreateUser: true,
            emailRedirectTo: `${window.location.origin}/dashboard`,
          },
        }),
        "Magic link",
      );

      if (error) throw error;

      setInfoMessage("Magic link sent. Check your inbox, then open the link to continue.");
      toast.success("Magic link sent. Check your email.");
    } catch (err: any) {
      const message = err?.message || "Could not send magic link.";
      setAuthError(message);
      toast.error(message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="auth-page min-h-screen bg-background px-4 py-8">
      <div className="mx-auto grid min-h-[calc(100vh-4rem)] w-full max-w-6xl items-center gap-8 lg:grid-cols-[1fr_440px]">
        <section className="hidden lg:block">
          <Link to="/" className="mb-10 inline-flex items-center">
            <img
              src="/lawbridge-logo-header.png"
              alt="LawBridge"
              className="h-12 w-auto object-contain transition-transform duration-200 hover:scale-[1.02]"
            />
            <span className="sr-only">LawBridge Skills Portal</span>
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
          <Link to="/" className="mb-6 flex items-center justify-center lg:hidden">
            <img
              src="/lawbridge-logo-header.png"
              alt="LawBridge"
              className="h-11 w-auto object-contain"
            />
            <span className="sr-only">LawBridge Skills Portal</span>
          </Link>

          <Card className="auth-card overflow-hidden shadow-xl">
            <CardHeader className="auth-card-header">
              <CardTitle className="text-2xl">
                {isAdminPortal ? "Admin sign in" : isSignup ? "Create your account" : "Welcome back"}
              </CardTitle>
              <CardDescription>
                {isAdminPortal
                  ? "Tutors and administrators can sign in here. The admin area checks your role after login."
                  : isSignup
                    ? "Create a learner account using email and password, or use a password-free magic link."
                    : "Sign in to access your simulations, progress and submissions."}
              </CardDescription>
            </CardHeader>

            <CardContent className="space-y-5 p-6">
              <div className="grid grid-cols-2 gap-2 rounded-2xl border border-border bg-muted/40 p-1">
                <button
                  type="button"
                  onClick={() => switchPortal("student")}
                  className={`rounded-xl px-3 py-2 text-sm font-semibold transition ${
                    portalMode === "student" ? "bg-background text-primary shadow-sm" : "text-muted-foreground hover:text-foreground"
                  }`}
                >
                  <UserRound className="mr-1.5 inline h-4 w-4" /> Student sign in
                </button>
                <button
                  type="button"
                  onClick={() => switchPortal("admin")}
                  className={`rounded-xl px-3 py-2 text-sm font-semibold transition ${
                    portalMode === "admin" ? "bg-background text-primary shadow-sm" : "text-muted-foreground hover:text-foreground"
                  }`}
                >
                  <LockKeyhole className="mr-1.5 inline h-4 w-4" /> Admin sign in
                </button>
              </div>

              {!isAdminPortal && (
                <div className="grid grid-cols-2 gap-2 rounded-2xl border border-border bg-muted/40 p-1">
                  <button
                    type="button"
                    onClick={() => switchMethod("password")}
                    className={`rounded-xl px-3 py-2 text-sm font-semibold transition ${
                      authMethod === "password" ? "bg-background text-primary shadow-sm" : "text-muted-foreground hover:text-foreground"
                    }`}
                  >
                    <KeyRound className="mr-1.5 inline h-4 w-4" /> Password
                  </button>
                  <button
                    type="button"
                    onClick={() => switchMethod("magic")}
                    className={`rounded-xl px-3 py-2 text-sm font-semibold transition ${
                      authMethod === "magic" ? "bg-background text-primary shadow-sm" : "text-muted-foreground hover:text-foreground"
                    }`}
                  >
                    <Mail className="mr-1.5 inline h-4 w-4" /> Magic link
                  </button>
                </div>
              )}

              {isAdminPortal && (
                <div className="rounded-2xl border border-accent/20 bg-accent/5 p-4 text-sm text-muted-foreground">
                  Admin access is restricted. Sign in here with an account that has an <strong>admin</strong> or <strong>tutor</strong> role in Supabase.
                </div>
              )}

              {authError && (
                <div className="rounded-2xl border border-destructive/25 bg-destructive/10 p-4 text-sm font-medium text-destructive">
                  <AlertCircle className="mr-2 inline h-4 w-4" /> {authError}
                </div>
              )}

              {infoMessage && (
                <div className="rounded-2xl border border-accent/20 bg-accent/5 p-4 text-sm text-muted-foreground">
                  <CheckCircle2 className="mr-2 inline h-4 w-4 text-accent" /> {infoMessage}
                </div>
              )}

              {isSignup && authMethod === "password" && !isAdminPortal && (
                <div className="rounded-2xl border border-accent/20 bg-accent/5 p-4 text-sm text-muted-foreground">
                  For instant access, Supabase email confirmation should be switched off. If confirmation is on,
                  users must confirm their email before signing in.
                </div>
              )}

              {isMagic && !isAdminPortal ? (
                <form onSubmit={handleMagicLink} className="space-y-4">
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
                  {isSignup && !isAdminPortal && (
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
                      placeholder={isAdminPortal ? "admin@example.com" : "you@example.com"}
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
                  {!isSignup && (
                    <div className="flex justify-end">
                      <button
                        type="button"
                        onClick={handlePasswordRecovery}
                        disabled={loading}
                        className="text-sm font-medium text-accent hover:underline disabled:cursor-not-allowed disabled:opacity-60"
                      >
                        Forgot or reset password?
                      </button>
                    </div>
                  )}
                  <Button type="submit" className="w-full" disabled={loading}>
                    {loading
                      ? "Please wait..."
                      : isAdminPortal
                        ? "Sign in as admin"
                        : isSignup
                          ? "Create account"
                          : "Sign in"}
                  </Button>
                </form>
              )}

              {!isAdminPortal && (
                <div className="rounded-2xl border border-dashed border-border bg-muted/25 p-4 text-sm text-muted-foreground">
                  <div className="flex items-start gap-3">
                    <CheckCircle2 className="mt-0.5 h-4 w-4 text-accent" />
                    <div>
                      <p className="font-medium text-foreground">Google sign-in is disabled for now.</p>
                      <p className="mt-1">
                        Use email/password or magic link. Google can be added later when OAuth setup is ready.
                      </p>
                    </div>
                  </div>
                </div>
              )}

              <p className="text-center text-sm text-muted-foreground">
                {isAdminPortal ? (
                  <>
                    Need learner access?{" "}
                    <button
                      type="button"
                      className="font-medium text-accent hover:underline"
                      onClick={() => switchPortal("student")}
                    >
                      Return to student sign in
                    </button>
                  </>
                ) : isSignup ? (
                  <>
                    Already have an account?{" "}
                    <button
                      type="button"
                      className="font-medium text-accent hover:underline"
                      onClick={() => switchMode("signin")}
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
                      onClick={() => switchMode("signup")}
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
