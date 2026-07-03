import { createFileRoute, Link } from "@tanstack/react-router";
import { useEffect, useState } from "react";
import type { FormEvent } from "react";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { AlertCircle, CheckCircle2, KeyRound, LockKeyhole } from "lucide-react";
import { toast } from "sonner";

export const Route = createFileRoute("/reset-password")({
  ssr: false,
  head: () => ({ meta: [{ title: "Reset password — LawBridge" }] }),
  component: ResetPasswordPage,
});

function ResetPasswordPage() {
  const [newPassword, setNewPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [checkingSession, setCheckingSession] = useState(true);
  const [hasRecoverySession, setHasRecoverySession] = useState(false);
  const [loading, setLoading] = useState(false);
  const [errorMessage, setErrorMessage] = useState("");
  const [successMessage, setSuccessMessage] = useState("");

  useEffect(() => {
    let mounted = true;

    async function prepareRecoverySession() {
      setErrorMessage("");

      try {
        const url = new URL(window.location.href);
        const code = url.searchParams.get("code");

        if (code) {
          const { error } = await supabase.auth.exchangeCodeForSession(code);
          if (error) throw error;
        }

        const hashParams = new URLSearchParams(window.location.hash.replace(/^#/, ""));
        const accessToken = hashParams.get("access_token");
        const refreshToken = hashParams.get("refresh_token");

        if (accessToken && refreshToken) {
          const { error } = await supabase.auth.setSession({
            access_token: accessToken,
            refresh_token: refreshToken,
          });
          if (error) throw error;
        }

        const { data } = await supabase.auth.getSession();
        if (!mounted) return;
        setHasRecoverySession(Boolean(data.session));
      } catch (error: any) {
        if (!mounted) return;
        setErrorMessage(error?.message || "This reset link could not be verified. Please request a new one.");
        setHasRecoverySession(false);
      } finally {
        if (mounted) setCheckingSession(false);
      }
    }

    prepareRecoverySession();

    return () => {
      mounted = false;
    };
  }, []);

  const handleUpdatePassword = async (event: FormEvent) => {
    event.preventDefault();
    setLoading(true);
    setErrorMessage("");
    setSuccessMessage("");

    try {
      if (newPassword.length < 6) throw new Error("Your new password must be at least 6 characters.");
      if (newPassword !== confirmPassword) throw new Error("The two password fields do not match.");

      const { error } = await supabase.auth.updateUser({ password: newPassword });
      if (error) throw error;

      setSuccessMessage("Password updated. You can now sign in with your new password.");
      toast.success("Password updated successfully.");

      await supabase.auth.signOut();
      window.setTimeout(() => {
        window.location.replace("/auth");
      }, 1200);
    } catch (error: any) {
      const message = error?.message || "Could not update password. Please request a fresh reset link.";
      setErrorMessage(message);
      toast.error(message);
      setLoading(false);
    }
  };

  return (
    <div className="auth-page min-h-screen bg-background px-4 py-8">
      <div className="mx-auto flex min-h-[calc(100vh-4rem)] w-full max-w-xl items-center justify-center">
        <Card className="auth-card w-full overflow-hidden shadow-xl">
          <CardHeader className="auth-card-header">
            <Link to="/" className="mb-6 inline-flex items-center">
              <img
                src="/lawbridge-logo-header.png"
                alt="LawBridge"
                className="h-12 w-auto object-contain"
              />
              <span className="sr-only">LawBridge Skills Portal</span>
            </Link>
            <CardTitle className="flex items-center gap-2 text-2xl">
              <LockKeyhole className="h-6 w-6 text-accent" /> Reset your password
            </CardTitle>
            <CardDescription>
              Choose a new password for your LawBridge account. This page only works from a valid reset link.
            </CardDescription>
          </CardHeader>

          <CardContent className="space-y-5 p-6">
            {checkingSession ? (
              <div className="rounded-2xl border border-border bg-muted/30 p-4 text-sm text-muted-foreground">
                Checking your reset link...
              </div>
            ) : errorMessage ? (
              <div className="rounded-2xl border border-destructive/25 bg-destructive/10 p-4 text-sm font-medium text-destructive">
                <AlertCircle className="mr-2 inline h-4 w-4" /> {errorMessage}
              </div>
            ) : null}

            {successMessage && (
              <div className="rounded-2xl border border-accent/20 bg-accent/5 p-4 text-sm text-muted-foreground">
                <CheckCircle2 className="mr-2 inline h-4 w-4 text-accent" /> {successMessage}
              </div>
            )}

            {hasRecoverySession ? (
              <form onSubmit={handleUpdatePassword} className="space-y-4">
                <div>
                  <Label htmlFor="new-password">New password</Label>
                  <Input
                    id="new-password"
                    type="password"
                    minLength={6}
                    value={newPassword}
                    onChange={(event) => setNewPassword(event.target.value)}
                    required
                    placeholder="Minimum 6 characters"
                  />
                </div>
                <div>
                  <Label htmlFor="confirm-password">Confirm new password</Label>
                  <Input
                    id="confirm-password"
                    type="password"
                    minLength={6}
                    value={confirmPassword}
                    onChange={(event) => setConfirmPassword(event.target.value)}
                    required
                    placeholder="Repeat your new password"
                  />
                </div>
                <Button type="submit" className="w-full" disabled={loading}>
                  <KeyRound className="mr-2 h-4 w-4" /> {loading ? "Updating password..." : "Update password"}
                </Button>
              </form>
            ) : !checkingSession ? (
              <div className="space-y-3">
                <p className="text-sm text-muted-foreground">
                  The reset link is missing, expired or already used. Return to sign in and request a fresh password reset email.
                </p>
                <Button asChild className="w-full" variant="outline">
                  <Link to="/auth">Back to sign in</Link>
                </Button>
              </div>
            ) : null}
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
