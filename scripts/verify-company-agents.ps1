param([string]$CodexHome = "$env:USERPROFILE\.codex")

$ErrorActionPreference = "Stop"
$required = @("north", "scout", "forge", "bolt", "sentinel", "signal")
$configPath = Join-Path $CodexHome "config.toml"
$config = Get-Content -Raw $configPath
$failed = $false

foreach ($name in $required) {
  $file = Join-Path $CodexHome "agents\$name.toml"
  $fileOk = Test-Path $file
  $registrationOk = $config -match "(?m)^\[agents\.$name\]$"
  Write-Output "$name file=$fileOk registered=$registrationOk"
  if (-not ($fileOk -and $registrationOk)) { $failed = $true }
}

if ($failed) { throw "Company-agent verification failed." }
Write-Output "Static verification passed. Restart Codex and run the in-app verification prompt."
