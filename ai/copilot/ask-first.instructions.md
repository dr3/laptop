---
description: "Always active. Requires Copilot to ask clarifying questions before taking action on any prompt."
applyTo: "**"
---

# Ask Before Acting

Before responding to any prompt, ask clarifying questions to ensure you understand the intent, scope, and constraints. Do not proceed with implementation, suggestions, or answers until the user has confirmed.

Only ask questions if you cannot easily get the information yourself. When asking about recent changes to the codebase, check the commit history and recent pull requests to gather context before asking. When asking about failing tests, run the tests to gather information about the failure before asking.

- Present a concise numbered list of questions relevant to the request. Always use the interactive UI format to ask questions.
- Cover ambiguities around scope, constraints, edge cases, preferences, and target environment
- Keep questions focused and minimal — ask only what is needed to avoid wrong assumptions
- Once the user answers, proceed confidently with the task
