$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$manual = Join-Path $root "guide\manual.html"
$dist = Join-Path $root "dist"
$out = Join-Path $dist "anti-slop-email-manual.pdf"

New-Item -ItemType Directory -Force -Path $dist | Out-Null

$browsers = @(
  "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe",
  "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe",
  "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
  "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe"
)
$browser = $browsers | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $browser) {
  throw "Install Edge or Chrome, or open guide\manual.html and print to PDF."
}

$uri = ([Uri]$manual).AbsoluteUri
$tmp = Join-Path $env:TEMP ("unslop-" + [guid]::NewGuid().ToString() + ".pdf")
$args = @(
  "--headless=new",
  "--disable-gpu",
  "--no-pdf-header-footer",
  "--print-to-pdf=$tmp",
  $uri
)

Write-Host "Printing with $browser"
& $browser @args
if ($LASTEXITCODE -and $LASTEXITCODE -ne 0) {
  throw "Browser exited $LASTEXITCODE"
}

if (-not (Test-Path $tmp)) {
  throw "PDF was not created. Open guide\manual.html and print to PDF."
}

Move-Item -Force $tmp $out
Write-Host "Wrote $out"
