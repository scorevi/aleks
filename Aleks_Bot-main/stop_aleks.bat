@echo off
echo ===============================================
echo    Stopping Aleks System
echo ===============================================
echo.

echo Attempting to stop servers running on ports 8000 and 5173...

REM Kill processes on port 8000 (backend)
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :8000') do (
    echo Stopping backend server (PID: %%a)
    taskkill /f /pid %%a >nul 2>&1
)

REM Kill processes on port 5173 (frontend)
for /f "tokens=5" %%a in ('netstat -aon ^| findstr :5173') do (
    echo Stopping frontend server (PID: %%a)
    taskkill /f /pid %%a >nul 2>&1
)

REM Also try to kill any uvicorn or npm processes
taskkill /f /im "python.exe" /fi "WINDOWTITLE eq Aleks Backend*" >nul 2>&1
taskkill /f /im "node.exe" /fi "WINDOWTITLE eq Aleks Frontend*" >nul 2>&1

echo.
echo Aleks system servers have been stopped.
echo.
pause
