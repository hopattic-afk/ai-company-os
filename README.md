# AI Company OS

The management layer for Codex missions across multiple product repositories.

## Operating model

- Codex is where Atlas delegates work to specialist agents.
- Product code stays in each product repository.
- One Codex task, branch, and draft pull request are used per implementation mission.
- GitHub pull requests are the review and approval boundary.
- Slack is optional later for intake and notifications; agents do not require Slack to collaborate.

## Roles

- Atlas: main Codex task and orchestrator
- North: product
- Scout: research and strategy
- Forge: engineering lead
- Bolt: implementation
- Sentinel: independent review
- Signal: growth and launch

## Install or repair the global agents

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\scripts\install-company-agents.ps1
.\scripts\verify-company-agents.ps1
```

Restart Codex after changing global configuration.

## Run a mission

1. Open the product repository in Codex.
2. Create one task for the mission.
3. Paste the relevant file from `missions/`.
4. Atlas delegates discovery and returns one consolidated report.
5. Implementation occurs on a dedicated product-repository branch.
6. Sentinel reviews the implementation independently.
7. Atlas prepares a draft pull request; the owner approves merge or deployment.

Runtime note: custom role names may not be accepted as direct `agent_type` values. Atlas can use standard subagents and assign the corresponding role instructions explicitly; this is the verified working path.
