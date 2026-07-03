cat > netlify/functions/mark-answer.mjs <<'EOF'
import OpenAI from "openai";
import { z } from "zod";
import { zodTextFormat } from "openai/helpers/zod";
import { tutorData } from "./tutorData.mjs";

const client = new OpenAI({
  apiKey: process.env.OPENAI_API_KEY
});

const corsHeaders = {
  "Access-Control-Allow-Origin": "http://localhost:5173",
  "Access-Control-Allow-Headers": "Content-Type",
  "Access-Control-Allow-Methods": "POST, OPTIONS"
};

function sendJson(data, init = {}) {
  return Response.json(data, {
    ...init,
    headers: {
      ...corsHeaders,
      ...(init.headers || {})
    }
  });
}

const CriterionFeedback = z.object({
  name: z.string(),
  score: z.number(),
  maxScore: z.number(),
  feedback: z.string(),
  missingPoints: z.array(z.string())
});

const MarkingResult = z.object({
  scenarioId: z.string(),
  taskId: z.string(),
  isSubstantiveAttempt: z.boolean(),
  overallScore: z.number(),
  maxScore: z.number(),
  band: z.enum([
    "Excellent",
    "Good",
    "Pass",
    "Needs improvement",
    "Incomplete"
  ]),
  shortSummary: z.string(),
  criteria: z.array(CriterionFeedback),
  strengths: z.array(z.string()),
  missingKeyPoints: z.array(z.string()),
  unsupportedAssumptions: z.array(z.string()),
  professionalRiskIssues: z.array(z.string()),
  aiJudgmentFeedback: z.string(),
  actionPlan: z.array(z.string()),
  improvedAnswer: z.string()
});

export default async function handler(req) {
  try {
    if (req.method === "OPTIONS") {
      return new Response(null, {
        status: 204,
        headers: corsHeaders
      });
    }

    if (req.method !== "POST") {
      return sendJson(
        { error: "Method not allowed" },
        { status: 405 }
      );
    }

    const body = await req.json();

    const {
      scenarioId,
      taskId,
      studentAnswer,
      aiSectionAnswer
    } = body;

    if (!scenarioId || !taskId) {
      return sendJson(
        { error: "Missing scenarioId or taskId" },
        { status: 400 }
      );
    }

    const task =
      tutorData?.[scenarioId]?.[taskId] ??
      tutorData?.[scenarioId]?.["final-submission"] ??
      tutorData?.["AN-01"]?.["detailed-task-1"];

    if (!task) {
      return sendJson(
        { error: "No tutor rubric found for this task" },
        { status: 404 }
      );
    }

    const combinedStudentAnswer = `
STUDENT DETAILED TASK ANSWER:
${studentAnswer || ""}

STUDENT AI SECTION ANSWER:
${aiSectionAnswer || ""}
`.trim();

    const maxScore = task.rubric.reduce(
      (sum, item) => sum + item.maxScore,
      0
    );

    if (combinedStudentAnswer.length < 40) {
      return sendJson({
        scenarioId,
        taskId,
        isSubstantiveAttempt: false,
        overallScore: 0,
        maxScore,
        band: "Incomplete",
        shortSummary:
          "The answer is too short to assess properly. The student needs to make a substantive attempt before AI marking can be useful.",
        criteria: task.rubric.map((item) => ({
          name: item.name,
          score: 0,
          maxScore: item.maxScore,
          feedback: "No substantive answer provided.",
          missingPoints: [item.guidance]
        })),
        strengths: [],
        missingKeyPoints: ["The student needs to provide a fuller answer."],
        unsupportedAssumptions: [],
        professionalRiskIssues: [],
        aiJudgmentFeedback:
          "No meaningful AI judgment answer was provided.",
        actionPlan: [
          "Read the exhibits again.",
          "Identify confirmed facts, uncertainties and missing information.",
          "Write a fuller answer before requesting AI feedback."
        ],
        improvedAnswer: ""
      });
    }

    const response = await client.responses.parse({
      model: process.env.OPENAI_MODEL || "gpt-4o-mini",
      input: [
        {
          role: "system",
          content:
            "You are a strict but fair legal skills tutor for LawBridge SkillUp. Mark the student's work against the tutor answer and rubric only. Do not invent facts. Do not reward unsupported legal conclusions. Give practical, specific feedback. If the student did not make a real attempt, mark it as incomplete. Return structured feedback only."
        },
        {
          role: "user",
          content: JSON.stringify(
            {
              scenarioId,
              taskId,
              taskTitle: task.taskTitle,
              scenarioTitle: task.scenarioTitle,
              taskBrief: task.taskBrief,
              tutorAnswer: task.tutorAnswer,
              rubric: task.rubric,
              maxScore,
              studentAnswer: combinedStudentAnswer
            },
            null,
            2
          )
        }
      ],
      text: {
        format: zodTextFormat(MarkingResult, "lawbridge_marking_result")
      }
    });

    return sendJson(response.output_parsed);
  } catch (error) {
    console.error("AI marking error:", error);

    return sendJson(
      {
        error: "AI marking failed",
        details: error.message
      },
      { status: 500 }
    );
  }
}

export const config = {
  path: "/api/mark-answer"
};
EOF