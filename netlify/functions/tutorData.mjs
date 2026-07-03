export const tutorData = {
  "AN-01": {
    "detailed-task-1": {
      scenarioTitle: "Attendance Note - AN-01",
      taskTitle: "Prepare the initial attendance note",
      taskBrief:
        "Students must prepare a clear attendance note from the scenario and exhibits. They should separate confirmed facts from assumptions, allegations, uncertainty and missing information.",
      tutorAnswer:
        "A strong answer should identify the client, date, people involved, key events, documents reviewed, confirmed facts, disputed points, missing evidence, legal/commercial risks, and next steps. It should avoid giving premature advice and should not present allegations as facts.",
      rubric: [
        {
          name: "Fact extraction",
          maxScore: 5,
          guidance:
            "Identifies key facts, dates, people, documents and events accurately."
        },
        {
          name: "Separation of fact and uncertainty",
          maxScore: 5,
          guidance:
            "Clearly distinguishes confirmed facts from assumptions, allegations, uncertainty and missing information."
        },
        {
          name: "Risk awareness",
          maxScore: 5,
          guidance:
            "Recognises early legal, commercial, regulatory, communication and professional risk issues."
        },
        {
          name: "Practical next steps",
          maxScore: 5,
          guidance:
            "Produces a focused evidence request list and practical action list ranked by urgency."
        },
        {
          name: "Professional communication",
          maxScore: 5,
          guidance:
            "Uses cautious, supervisor-facing language and avoids premature or unsupported advice."
        }
      ]
    },

    "ai-section-1": {
      scenarioTitle: "Attendance Note - AN-01",
      taskTitle: "AI judgment and supervision task",
      taskBrief:
        "Students must explain whether AI should be used, what can be safely delegated, what information must be removed, what must remain human-led, and what checks are required.",
      tutorAnswer:
        "A strong answer should recognise that AI may help with structuring, summarising non-confidential materials, generating checklists and spotting omissions, but must not receive confidential, privileged, commercially sensitive or personal data unless there is an approved secure system. The student should state that the lawyer remains responsible for verifying accuracy, legal judgment, confidentiality and final advice.",
      rubric: [
        {
          name: "Appropriate AI delegation",
          maxScore: 5,
          guidance:
            "Explains what parts of the task AI can and cannot safely assist with."
        },
        {
          name: "Confidentiality and data protection",
          maxScore: 5,
          guidance:
            "Identifies confidential, privileged, personal or commercially sensitive information that should not be entered into open AI tools."
        },
        {
          name: "Human supervision",
          maxScore: 5,
          guidance:
            "Makes clear that AI output must be checked by the student/lawyer and cannot replace professional judgment."
        },
        {
          name: "Verification process",
          maxScore: 5,
          guidance:
            "Explains what checks should happen before relying on AI output."
        }
      ]
    }
  }
};