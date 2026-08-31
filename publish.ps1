param(
    [Parameter(Mandatory=$true)]
    [string]$Message
)

$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH","User")

Set-Location $PSScriptRoot

quarto render
git add -A
git commit -m $Message
git push origin main
