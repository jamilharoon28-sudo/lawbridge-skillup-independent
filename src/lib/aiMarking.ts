export type AiMarkingResult = {
  scenarioId: string;
  taskId: string;
  isSubstantiveAttempt: boolean;
  overallScore: number;
  maxScore: number;
  band: string;
  shortSummary: string;
  criteria?: Array<{
    name: string;
    score: number;
    maxScore: number;
    feedback: string;
    missingPoints?: string[];
  }>;
  strengths?: string[];
  missingKeyPoints?: string[];
  unsupportedAssumptions?: string[];
  professionalRiskIssues?: string[];
  aiJudgmentFeedback?: string;
  actionPlan?: string[];
  improvedAnswer?: string;
};

export async function markAnswer({
  scenarioId,
  taskId,
  studentAnswer,
  aiSectionAnswer
}: {
  scenarioId: string;
  taskId: string;
  studentAnswer: string;
  aiSectionAnswer: string;
}) {
  const baseUrl = import.meta.env.VITE_API_BASE_URL || "";

  const response = await fetch(`${baseUrl}/api/mark-answer`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      scenarioId,
      taskId,
      studentAnswer,
      aiSectionAnswer
    })
  });

  const result = await response.json();

  if (!response.ok) {
    throw new Error(result.error || result.details || "AI marking failed");
  }

  return result as AiMarkingResult;
}
