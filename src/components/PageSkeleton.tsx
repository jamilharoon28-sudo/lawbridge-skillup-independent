import { Skeleton } from "@/components/ui/skeleton";

/** Generic content-shaped loading placeholder used across the authenticated pages. */
export function PageSkeleton({ variant = "page" }: { variant?: "page" | "scenario" }) {
  return (
    <div className="space-y-6 animate-in fade-in duration-300" aria-busy="true" aria-label="Loading">
      <Skeleton className="h-40 w-full rounded-3xl" />
      {variant === "page" ? (
        <>
          <div className="grid gap-4 sm:grid-cols-2 xl:grid-cols-4">
            {Array.from({ length: 4 }).map((_, i) => (
              <Skeleton key={i} className="h-24 rounded-2xl" />
            ))}
          </div>
          <div className="grid gap-6 xl:grid-cols-[1fr_360px]">
            <Skeleton className="h-80 rounded-2xl" />
            <Skeleton className="h-80 rounded-2xl" />
          </div>
        </>
      ) : (
        <>
          <div className="flex gap-2">
            {Array.from({ length: 4 }).map((_, i) => (
              <Skeleton key={i} className="h-10 w-32 rounded-xl" />
            ))}
          </div>
          <div className="grid gap-4 xl:grid-cols-[300px_1fr_320px]">
            <Skeleton className="h-96 rounded-2xl" />
            <Skeleton className="h-96 rounded-2xl" />
            <Skeleton className="h-96 rounded-2xl" />
          </div>
        </>
      )}
    </div>
  );
}
