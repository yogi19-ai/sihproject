@echo off
TITLE SIH26019: National Land Governance Platform Launcher
COLOR 0A

echo ====================================================================
echo  NATIONAL DIGITAL PLATFORM FOR LAND GOVERNANCE (SIH26019)
echo ====================================================================
echo.

set "PYTHON_EXE=C:\Users\yoges\runtimes\python-embed\python.exe"
set "NODE_EXE=C:\Program Files\nodejs\node.exe"
set "NPM_CMD=C:\Program Files\nodejs\npm.cmd"

echo [1/3] Starting Python AI and Geospatial Microservice (Port 8000)...
start "SIH26019 - Python AI Microservice (Port 8000)" cmd /k "cd /d "%~dp0ai_service" && "%PYTHON_EXE%" app.py"

echo [2/3] Starting Core Land Governance API (Port 5000)...
start "SIH26019 - Core Backend API (Port 5000)" cmd /k "cd /d "%~dp0backend" && "%NODE_EXE%" server.js"

echo [3/3] Starting Vite Cadastral WebGIS Frontend (Port 5173)...
start "SIH26019 - Frontend WebGIS UI (Port 5173)" cmd /k "cd /d "%~dp0frontend" && "%NPM_CMD%" run dev"

echo.
echo ====================================================================
echo  All 3 Microservices Launched Successfully!
echo.
echo   - Frontend UI:     http://localhost:5173
echo   - Core API:        http://localhost:5000
echo   - Python AI:       http://localhost:8000
echo.
echo  Default Demo Logins:
echo   - Administrator:   admin@landgov.gov.in      (Admin@SIH2026!)
echo   - Researcher:      researcher@landgov.gov.in  (Research@2026!)
echo   - Citizen/Viewer:  citizen@landgov.gov.in     (Citizen@2026!)
echo ====================================================================
echo.
start http://localhost:5173
