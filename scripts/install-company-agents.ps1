param(
  [string]$CodexHome = "$env:USERPROFILE\.codex",
  [string]$ProjectPath = "C:\Users\12505\OneDrive\Desktop\Jarvis\Kipreh"
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$agentTarget = Join-Path $CodexHome "agents"
$configPath = Join-Path $CodexHome "config.toml"
$globalAgentsPath = Join-Path $CodexHome "AGENTS.md"

New-Item -ItemType Directory -Force -Path $agentTarget | Out-Null
Copy-Item (Join-Path $root "agents\*.toml") $agentTarget -Force

$config = Get-Content -Raw $configPath
if ($config -notmatch '(?m)^\[agents\]$') {
  Add-Content $configPath "`r`n$(Get-Content -Raw (Join-Path $root 'config-snippet.toml'))"
}

$companyMarker = "## AI Company operating system"
$global = Get-Content -Raw $globalAgentsPath
if ($global -notmatch [regex]::Escape($companyMarker)) {
  Add-Content $globalAgentsPath (Get-Content -Raw (Join-Path $root "AGENTS.company.md"))
}

$missionTarget = Join-Path $ProjectPath ".codex\missions"
New-Item -ItemType Directory -Force -Path $missionTarget | Out-Null
Copy-Item (Join-Path $root "missions\*.md") $missionTarget -Force

Write-Output "Installed agents: $agentTarget"
Write-Output "Registered agents in: $configPath"
Write-Output "Installed missions: $missionTarget"
Write-Output "Restart Codex desktop before verification."
