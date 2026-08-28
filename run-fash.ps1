Write-Host "Starting FASH..." -ForegroundColor Cyan
Set-Location "$PSScriptRoot\backend"

if (!(Test-Path "node_modules")) {
    Write-Host "Installing backend dependencies..." -ForegroundColor Yellow
    npm install
}

npm.cmd start
