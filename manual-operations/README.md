# Manual-trigger operating system

This phase uses Codex included with the owner's current plan. It does not run the Agents SDK service or make OpenAI API calls.

## One clean mission line

1. Create a GitHub mission issue using the issue form.
2. Open the correct product repository in Codex.
3. Start one new Codex task.
4. Use the prompt in `run-github-mission.md`, replacing the issue URL.
5. Atlas delegates research, planning, implementation, and independent review inside the task.
6. Implementation is isolated on a product-repository branch.
7. Atlas creates or prepares a draft pull request.
8. The owner reviews the PR and explicitly approves merge or protected actions.

GitHub is the owner-facing record. Agent working conversations remain inside the Codex task. Atlas produces one consolidated report.
