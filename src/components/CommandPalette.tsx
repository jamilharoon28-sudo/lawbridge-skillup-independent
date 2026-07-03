import { useNavigate } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { Award, BookOpen, LayoutDashboard, ShieldCheck } from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import {
  CommandDialog,
  CommandEmpty,
  CommandGroup,
  CommandInput,
  CommandItem,
  CommandList,
  CommandSeparator,
} from "@/components/ui/command";

type ScenarioRow = { code: string; title: string };

export function CommandPalette({
  open,
  onOpenChange,
  isAdmin,
}: {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  isAdmin: boolean;
}) {
  const navigate = useNavigate();

  const { data: scenarios } = useQuery({
    queryKey: ["command-scenarios"],
    enabled: open,
    staleTime: 5 * 60 * 1000,
    queryFn: async (): Promise<ScenarioRow[]> => {
      const { data } = await supabase.from("scenarios").select("code, title").order("code");
      return (data ?? []) as ScenarioRow[];
    },
  });

  const run = (fn: () => void) => {
    onOpenChange(false);
    fn();
  };

  return (
    <CommandDialog open={open} onOpenChange={onOpenChange}>
      <CommandInput placeholder="Jump to a page or search 80 scenarios…" />
      <CommandList>
        <CommandEmpty>No matches.</CommandEmpty>
        <CommandGroup heading="Navigate">
          <CommandItem onSelect={() => run(() => navigate({ to: "/dashboard" }))}>
            <LayoutDashboard className="mr-2 h-4 w-4" /> Trainee Desk
          </CommandItem>
          <CommandItem onSelect={() => run(() => navigate({ to: "/skills" }))}>
            <BookOpen className="mr-2 h-4 w-4" /> Skills Library
          </CommandItem>
          <CommandItem onSelect={() => run(() => navigate({ to: "/passport" }))}>
            <Award className="mr-2 h-4 w-4" /> Skills Passport
          </CommandItem>
          {isAdmin && (
            <CommandItem onSelect={() => run(() => navigate({ to: "/admin" }))}>
              <ShieldCheck className="mr-2 h-4 w-4" /> Tutor / Admin
            </CommandItem>
          )}
        </CommandGroup>
        {!!scenarios?.length && (
          <>
            <CommandSeparator />
            <CommandGroup heading="Scenarios">
              {scenarios.map((s) => (
                <CommandItem
                  key={s.code}
                  value={`${s.code} ${s.title}`}
                  onSelect={() =>
                    run(() => navigate({ to: "/scenarios/$code", params: { code: s.code } }))
                  }
                >
                  <span className="font-mono text-xs text-muted-foreground mr-2">{s.code}</span>
                  <span className="truncate">{s.title}</span>
                </CommandItem>
              ))}
            </CommandGroup>
          </>
        )}
      </CommandList>
    </CommandDialog>
  );
}
