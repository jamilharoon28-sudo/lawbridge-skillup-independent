import { useEffect, useState } from "react";

export type Theme = "light" | "dark";

const STORAGE_KEY = "lawbridge-theme";

function systemTheme(): Theme {
  if (typeof window === "undefined") return "light";
  return window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light";
}

export function getInitialTheme(): Theme {
  if (typeof window === "undefined") return "light";
  const stored = window.localStorage.getItem(STORAGE_KEY);
  if (stored === "light" || stored === "dark") return stored;
  return systemTheme();
}

function applyTheme(theme: Theme) {
  if (typeof document === "undefined") return;
  const root = document.documentElement;
  root.classList.toggle("dark", theme === "dark");
  root.style.colorScheme = theme;
}

/** Reactive theme with localStorage persistence; kept in sync with the no-flash boot script. */
export function useTheme() {
  const [theme, setThemeState] = useState<Theme>(() => getInitialTheme());

  useEffect(() => {
    applyTheme(theme);
  }, [theme]);

  const setTheme = (next: Theme) => {
    try {
      window.localStorage.setItem(STORAGE_KEY, next);
    } catch {
      /* ignore storage failures (private mode) */
    }
    setThemeState(next);
  };

  const toggle = () => setTheme(theme === "dark" ? "light" : "dark");

  return { theme, setTheme, toggle };
}
