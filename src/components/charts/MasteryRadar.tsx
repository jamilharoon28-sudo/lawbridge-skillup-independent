import {
  PolarAngleAxis,
  PolarGrid,
  PolarRadiusAxis,
  Radar,
  RadarChart,
  ResponsiveContainer,
} from "recharts";

export type MasteryPoint = { skill: string; value: number };

/** Per-skill mastery radar. Colours come from theme tokens so it tracks light/dark. */
export function MasteryRadar({ data, height = 300 }: { data: MasteryPoint[]; height?: number }) {
  if (!data.length) return null;
  return (
    <ResponsiveContainer width="100%" height={height}>
      <RadarChart data={data} outerRadius="72%">
        <PolarGrid stroke="var(--border)" />
        <PolarAngleAxis
          dataKey="skill"
          tick={{ fill: "var(--muted-foreground)", fontSize: 11 }}
        />
        <PolarRadiusAxis domain={[0, 100]} tick={false} axisLine={false} />
        <Radar
          dataKey="value"
          stroke="var(--accent)"
          fill="var(--accent)"
          fillOpacity={0.28}
          strokeWidth={2}
          isAnimationActive
        />
      </RadarChart>
    </ResponsiveContainer>
  );
}
