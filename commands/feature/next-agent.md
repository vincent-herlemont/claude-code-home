---
argument-hint: [file] [phase]
---
We have to complete phase $2 of the document plan $1

You *MUST* use the TodoWrite tool to track the following steps:

1. You **MUST** utilize the agent @agents/feature/next-0-plan.md to develop a comprehensive plan for the phase ahead.
2. You **MUST** employ the agent @agents/feature/next-1-code.md to implement the phase based on the detailed plan.
3. You **MUST** run the agent @agents/feature/next-2-check.md to verify the implementation with tests.
4. If tests fail:
   a. You **MUST** use the agent @agents/feature/next-3-0-fixbug-plan.md to analyze failures and create a fix plan.
   b. You **MUST** use the agent @agents/feature/next-3-1-fixbug-code.md to implement the bug fixes.
   c. Return to step 3 to re-verify.
5. You **MUST** use the agent @agents/feature/next-4-update-plan.md to update the plan document $1 with completed tasks.

Mark each step as completed in the todo list as you progress. Ensure all tests pass before considering the phase complete.
