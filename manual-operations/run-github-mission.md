# Run a GitHub mission in Codex

Open the target product repository in Codex and paste:

```text
Act as Atlas and execute the mission described in this GitHub issue:

<ISSUE URL>

Read the repository AGENTS.md and authoritative product documents first. Use standard Codex subagents and explicitly assign the relevant North, Scout, Forge, Bolt, Sentinel, and Signal role instructions. Run independent discovery concurrently where safe. Keep one implementation owner for overlapping files and require Sentinel to independently review meaningful changes.

Proceed autonomously through reversible work. Preserve unrelated changes. Work on a dedicated branch when implementation is required. Prepare a draft pull request using the repository template.

Stop only at a documented approval gate or genuine blocker. Do not deploy, migrate a database, delete user data or files, publish or message externally, spend money, merge, or change authentication, permissions, credentials, or secrets without explicit approval.

Finish with one consolidated owner report: outcome, files changed, checks run, Sentinel findings, draft PR, approvals required, and unresolved risks.
```
