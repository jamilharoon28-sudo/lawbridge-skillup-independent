import {
  Bar,
  BarChart,
  CartesianGrid,
  Cell,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";

export type StatusDatum = { label: string; value: number; color?: string };

/** Compact, theme-aware bar chart for status / activity breakdowns. */
export function StatusBars({ data, height = 220 }: { data: StatusDatum[]; height?: number }) {
  return (
    <ResponsiveContainer width="100%" height={height}>
      <BarChart data={data} margin={{ top: 8, right: 8, bottom: 0, left: -18 }}>
        <CartesianGrid strokeDasharray="3 3" stroke="var(--border)" vertical={false} />
        <XAxis dataKey="label" tick={{ fill: "var(--muted-foreground)", fontSize: 11 }} tickLine={false} axisLine={false} />
        <YAxis allowDecimals={false} tick={{ fill: "var(--muted-foreground)", fontSize: 11 }} tickLine={false} axisLine={false} />
        <Tooltip
          cursor={{ fill: "color-mix(in oklch, var(--muted) 60%, transparent)" }}
          contentStyle={{
            background: "var(--popover)",
            border: "1px solid var(--border)",
            borderRadius: 12,
            color: "var(--popover-foreground)",
            fontSize: 12,
          }}
        />
        <Bar dataKey="value" radius={[6, 6, 0, 0]}>
          {data.map((d, i) => (
            <Cell key={i} fill={d.color ?? "var(--accent)"} />
          ))}
        </Bar>
      </BarChart>
    </ResponsiveContainer>
  );
}
