param(
    [int]$CoverageThreshold = 70
)

$ErrorActionPreference = 'Stop'

Write-Host "[CI] Starting Flutter analysis and tests..."

flutter --version | Out-Host
flutter pub get | Out-Host
flutter analyze | Out-Host
flutter test --coverage | Out-Host

$repoRoot = Split-Path -Path $PSScriptRoot -Parent
$coverageFile = Join-Path -Path $repoRoot -ChildPath "coverage/lcov.info"

if (-not (Test-Path -Path $coverageFile)) {
    throw "Coverage file not found at $coverageFile"
}

[int]$linesFound = 0
[int]$linesHit = 0

Get-Content -Path $coverageFile | ForEach-Object {
    if ($_ -match '^LF:(\d+)$') {
        $linesFound += [int]$Matches[1]
    }
    elseif ($_ -match '^LH:(\d+)$') {
        $linesHit += [int]$Matches[1]
    }
}

if ($linesFound -eq 0) {
    throw "Coverage file contains no trackable lines."
}

$coveragePercent = [math]::Round(($linesHit / $linesFound) * 100, 2)

Write-Host "[CI] Coverage: $coveragePercent% ($linesHit/$linesFound)"

if ($coveragePercent -lt $CoverageThreshold) {
    throw "Coverage $coveragePercent% is below the threshold of $CoverageThreshold%."
}

$genhtmlCmd = Get-Command genhtml -ErrorAction SilentlyContinue
if ($null -ne $genhtmlCmd) {
    $htmlOutput = Join-Path -Path $repoRoot -ChildPath "coverage/html"
    if (-not (Test-Path -Path $htmlOutput)) {
        New-Item -ItemType Directory -Path $htmlOutput | Out-Null
    }
    & $genhtmlCmd $coverageFile --output-directory $htmlOutput | Out-Host
    Write-Host "[CI] Generated HTML coverage report at $htmlOutput"
}
else {
    Write-Host "[CI] genhtml not found. Skipping HTML report generation."
}

Write-Host "[CI] All checks passed."
