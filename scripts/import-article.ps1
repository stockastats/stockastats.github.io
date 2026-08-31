param(
  [Parameter(Mandatory = $true)]
  [string]$SourceFile,

  [Parameter(Mandatory = $true)]
  [string]$Slug,

  [string]$Title = "",
  [string]$Description = "Article importe",
  [string]$Date = (Get-Date -Format "yyyy-MM-dd")
)

if (-not (Test-Path $SourceFile)) {
  throw "Source file not found: $SourceFile"
}

$destinationDir = Join-Path $PSScriptRoot "..\articles"
$destinationPath = Join-Path $destinationDir ("{0}.qmd" -f $Slug)

if ([string]::IsNullOrWhiteSpace($Title)) {
  $Title = [System.IO.Path]::GetFileNameWithoutExtension($SourceFile)
}

$content = Get-Content -Raw -Path $SourceFile

$frontMatter = @"
---
title: "$Title"
date: $Date
description: "$Description"
categories: [import]
---

"@

$finalContent = $frontMatter + $content
Set-Content -Path $destinationPath -Value $finalContent -Encoding UTF8

Write-Host "Imported: $destinationPath"
