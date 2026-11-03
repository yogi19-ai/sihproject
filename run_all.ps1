# SIH26019: National Land Governance Platform PowerShell Launcher
$env:Path = "C:\Program Files\nodejs;C:\Users\yoges\runtimes\python-embed;C:\Users\yoges\runtimes\python-embed\Scripts;" + $env:Path

Write-Host "====================================================================" -ForegroundColor Cyan
Write-Host "  NATIONAL DIGITAL PLATFORM FOR LAND GOVERNANCE (SIH26019)" -ForegroundColor Green
Write-Host "====================================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "[1/3] Launching Python AI Microservice (Port 8000)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'c:\yogesh\project sih\ai_service'; & 'C:\Users\yoges\runtimes\python-embed\python.exe' app.py"

Write-Host "[2/3] Launching Core Node.js API (Port 5000)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'c:\yogesh\project sih\backend'; & 'C:\Program Files\nodejs\node.exe' server.js"

Write-Host "[3/3] Launching Vite Cadastral WebGIS (Port 5173)..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'c:\yogesh\project sih\frontend'; & 'C:\Program Files\nodejs\npm.cmd' run dev"

Write-Host ""
Write-Host "All 3 services started! Opening browser at http://localhost:5173..." -ForegroundColor Green
Start-Sleep -Seconds 3
Start-Process "http://localhost:5173"
