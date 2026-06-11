import { createFileRoute, Link } from "@tanstack/react-router";
import { useQuery } from "@tanstack/react-query";
import { useMemo, useState } from "react";
import { supabase } from "@/integrations/supabase/client";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { Card } from "@/components/ui/card";
import { Search, ArrowRight } from "lucide-react";

export const Route = createFileRoute("/_authenticated/skills")({
  head: () => ({ meta: [{ title: "Skills Library — LawBridge" }] }),
  component: SkillsLibrary,
});

function SkillsLibrary() {
  const [q, setQ] = useState("");
  const [categoryId, setCategoryId] = useState<string | "all">("all");

  const { data } = useQuery({
    queryKey: ["library"],
    queryFn: async () => {
      const [cats, skills, scenarios] = await Promise.all([
        supabase.from("course_categories").select("*").order("display_order"),
        supabase.from("skills").select("*").order("display_order"),
        supabase
          .from("scenarios")
          .select("id, code, title, skill_id, matter_type, difficulty_level, recommended_time")
          .order("display_order"),
      ]);
      return { cats: cats.data ?? [], skills: skills.data ?? [], scenarios: scenarios.data ?? [] };
    },
  });

  const filtered = useMemo(() => {
    if (!data) return [];
    const term = q.trim().toLowerCase();
    return data.skills
      .filter((s) => categoryId === "all" || s.category_id === categoryId)
      .map((skill) => ({
        skill,
        scenarios: data.scenarios.filter(
          (sc) =>
            sc.skill_id === skill.id &&
            (!term ||
              sc.title.toLowerCase().includes(term) ||
              sc.code.toLowerCase().includes(term) ||
              skill.name.toLowerCase().includes(term)),
        ),
      }))
      .filter((g) => g.scenarios.length > 0 || !term);
  }, [data, q, categoryId]);

  if (!data) return <div className="text-muted-foreground">Loading library…</div>;

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-semibold">Skills Library</h1>
        <p className="text-muted-foreground mt-1">
          {data.skills.length} skills · {data.scenarios.length} scenarios
        </p>
      </div>

      <div className="flex flex-col sm:flex-row gap-3">
        <div className="relative flex-1">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-muted-foreground" />
          <Input
            className="pl-9"
            placeholder="Search skills or scenarios…"
            value={q}
            onChange={(e) => setQ(e.target.value)}
          />
        </div>
        <div className="flex gap-2 overflow-x-auto">
          <FilterChip active={categoryId === "all"} onClick={() => setCategoryId("all")}>
            All
          </FilterChip>
          {data.cats.map((c) => (
            <FilterChip key={c.id} active={categoryId === c.id} onClick={() => setCategoryId(c.id)}>
              {c.name}
            </FilterChip>
          ))}
        </div>
      </div>

      <div className="space-y-8">
        {filtered.map(({ skill, scenarios }) => (
          <section key={skill.id}>
            <div className="flex items-baseline gap-3 mb-3">
              <Badge variant="outline" className="font-mono text-[10px]">
                {skill.code}
              </Badge>
              <h2 className="text-lg font-semibold">{skill.name}</h2>
            </div>
            {skill.description && (
              <p className="text-sm text-muted-foreground mb-3 max-w-3xl">{skill.description}</p>
            )}
            <div className="grid md:grid-cols-2 gap-3">
              {scenarios.map((sc) => (
                <Link
                  key={sc.id}
                  to="/scenarios/$code"
                  params={{ code: sc.code }}
                  className="group"
                >
                  <Card className="p-4 hover:border-accent transition-colors h-full flex items-start justify-between gap-3">
                    <div className="min-w-0">
                      <div className="flex items-center gap-2 text-xs text-muted-foreground">
                        <Badge variant="secondary" className="font-mono text-[10px]">
                          {sc.code}
                        </Badge>
                        {sc.difficulty_level && <span>{sc.difficulty_level}</span>}
                        {sc.recommended_time && <span>· {sc.recommended_time}</span>}
                      </div>
                      <h3 className="mt-1.5 font-medium text-foreground">{sc.title}</h3>
                      {sc.matter_type && (
                        <p className="text-xs text-muted-foreground mt-1">{sc.matter_type}</p>
                      )}
                    </div>
                    <ArrowRight className="w-4 h-4 text-muted-foreground group-hover:text-accent shrink-0 mt-1" />
                  </Card>
                </Link>
              ))}
              {scenarios.length === 0 && (
                <p className="text-sm text-muted-foreground italic col-span-2">
                  No scenarios match your search.
                </p>
              )}
            </div>
          </section>
        ))}
      </div>
    </div>
  );
}

function FilterChip({
  active,
  onClick,
  children,
}: {
  active: boolean;
  onClick: () => void;
  children: React.ReactNode;
}) {
  return (
    <button
      onClick={onClick}
      className={`px-3 py-1.5 rounded-md text-sm whitespace-nowrap border transition-colors ${
        active
          ? "bg-primary text-primary-foreground border-primary"
          : "bg-card text-foreground border-border hover:border-accent"
      }`}
    >
      {children}
    </button>
  );
}
