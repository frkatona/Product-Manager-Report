$ErrorActionPreference = "Stop"

$source = Join-Path $PSScriptRoot "index.html"
$iconSource = Join-Path $PSScriptRoot "balloon.png"
$targetDir = Join-Path $PSScriptRoot "github-pages-subpage\pre-k-flashcards-ceo-report"
$target = Join-Path $targetDir "index.html"
$iconTarget = Join-Path $targetDir "balloon.png"

if (-not (Test-Path $source)) {
  throw "Source file not found: $source"
}

if (-not (Test-Path $iconSource)) {
  throw "Icon file not found: $iconSource"
}

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
Copy-Item $source $target -Force
Copy-Item $iconSource $iconTarget -Force

Write-Host "Synced report bundle to $targetDir"
