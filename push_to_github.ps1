# PowerShell script to push changes to GitHub
$ProjectPath = "c:\Users\K.Raj Kumar\Documents\project"
Set-Location $ProjectPath

Write-Host "Current location: $(Get-Location)" -ForegroundColor Green
Write-Host "Checking git status..." -ForegroundColor Cyan

$status = git status --short
Write-Host "Changes: $status" -ForegroundColor Yellow

Write-Host "Fetching from remote..." -ForegroundColor Cyan
git fetch origin main

Write-Host "Rebasing with origin/main..." -ForegroundColor Cyan
git rebase origin/main

Write-Host "Pushing to GitHub..." -ForegroundColor Cyan
$pushResult = git push origin main 2>&1
Write-Host $pushResult -ForegroundColor Green

Write-Host "Push completed!" -ForegroundColor Green
