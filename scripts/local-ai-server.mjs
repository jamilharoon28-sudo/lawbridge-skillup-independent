import http from "node:http";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import OpenAI from "openai";
import { tutorData } from "../netlify/functions/tutorData.mjs";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const root = path.resolve(__dirname, "..");

function loadEnv(filename) {
  const filePath = path.join(root, filename);
  if (!fs.existsSync(filePath)) return;

  const lines = fs.readFileSync(filePath, "utf8").split(/\r?\n/);

  for (const line of lines) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) continue;

    const eqIndex = trimmed.indexOf("=");
    if (eqIndex === -1) continue;

    const key = trimmed.slice(0, eqIndex).trim();
    const value = trimmed.slice(eqIndex + 1).trim().replace(/^["']|["']$/g, "");

    if (!process.env[key]) process.env[key] = value;
  }
}

loadEnv(".env");
loadEnv(".env.local");

const client = new OpenAI({
  apiKey: process.env.OPENAI_API_KEY
});

const corsHeaders = {
  "Access-Control-Allow-Origin": "http://localhost:5173",
  "Access-Control-Allow-Headers": "Content-Type",
  "Access-Control-Allow-Methods": "POST, OPTIONS"
};

function send(res, status, data) {
  res.writeHead(status, {
    "Content-Type": "application/json",
    ...corsHeaders
  });
  res.end(JSON.stringify(data));
}

function readBody(req) {
  return new Promise((resolve, reject) => {
    const chunks = [];

    req.on("data", (chunk) => chunks.push(chunk));
    req.on("end", () => {
      try {
        const raw = Buffer.concat(chunks).toString("utf8");
        resolve(raw ? JSON.parse(raw) : {});
      } catch (error) {
        reject(error);
      }
    });
    req.on("error", reject);
  });
}

const server = http.createServer(async (req, res) => {
  try {
    if (!req.url?.startsWith("/api/mark-answer")) {
      return send(res, 404, { error: "Not found" });
    }

    if (req.method === "OPTIONS") {
      res.writeHead(204, corsHeaders);
      return res.end();
    }

    if (req.method !== "POST") {
      return send(res, 405, { error: "Method not allowed" });
    }

    const body = await readBody(req);

    const {
      scenarioId,
      taskId,
      studentAnswer = "",
      aiSectionAnswer = ""
    } = body;

    if (!scenarioId || !taskId) {
      return send(res, 400, { error: "Missing scenarioId or taskId" });
    }

    const task =
      tutorData?.[scenarioId]?.[taskId] ??
      tutorData?.[scenarioId]?.["final-submission"] ??
      tutorData?.["AN-01"]?.["detailed-task-1"];

    if (!task) {
      return send(res, 404, { error: "No tutor rubric found for this task" });
    }

    const combinedStudentAnswer = `
STUDENT DETAILED TASK ANSWER:
${studentAnswer}

STUDENT AI SECTION ANSWER:
${aiSectionAnswer}
`.trim();

    const maxScore = task.rubric.reduce((sum, item) => sum + item.maxScore, 0);

    if (combinedStudentAnswer.length < 40) {
      return send(res, 200, {
        scenarioId,
        taskId,
        isSubstantiveAttempt: false,
        overallScore: 0,
        maxScore,
        band: "Incomplete",
        shortSummary: "The answer is too short to assess properly.",
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
        aiJudgmentFeedback: "No meaningful AI judgment answer was provided.",
        actionPlan: ["Write a fuller answer before requesting AI feedback."],
        improvedAnswer: ""
      });
    }

    const prompt = `
You are a strict but fair legal skills tutor for LawBridge SkillUp.

Mark the student's work against the tutor answer and rubric only.

Return ONLY valid JSON with this exact structure:
{
  "scenarioId": string,
  "taskId": string,
  "isSubstantiveAttempt": boolean,
  "overallScore": number,
  "maxScore": number,
  "band": "Excellent" | "Good" | "Pass" | "Needs improvement" | "Incomplete",
  "shortSummary": string,
  "criteria": [
    {
      "name": string,
      "score": number,
      "maxScore": number,
      "feedback": string,
      "missingPoints": string[]
    }
  ],
  "strengths": string[],
  "missingKeyPoints": string[],
  "unsupportedAssumptions": string[],
  "professionalRiskIssues": string[],
  "aiJudgmentFeedback": string,
  "actionPlan": string[],
  "improvedAnswer": string
}

SCENARIO ID:
${scenarioId}

TASK ID:
${taskId}

TASK TITLE:
${task.taskTitle}

TASK BRIEF:
${task.taskBrief}

TUTOR ANSWER:
${task.tutorAnswer}

RUBRIC:
${JSON.stringify(task.rubric, null, 2)}

MAX SCORE:
${maxScore}

STUDENT ANSWER:
${combinedStudentAnswer}
`;

    const response = await client.chat.completions.create({
      model: process.env.OPENAI_MODEL || "gpt-4o-mini",
      messages: [
        {
          role: "system",
          content: "You are a strict legal skills tutor. Return only valid JSON."
        },
        {
          role: "user",
          content: prompt
        }
      ],
      response_format: { type: "json_object" }
    });

    const content = response.choices[0]?.message?.content || "{}";
    const result = JSON.parse(content);

    return send(res, 200, result);
  } catch (error) {
    console.error("Local AI backend error:", error);
    return send(res, 500, {
      error: "Local AI backend failed",
      details: error.message
    });
  }
});

server.listen(8891, () => {
  console.log("Local AI backend running at http://localhost:8891/api/mark-answer");
});
