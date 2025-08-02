@echo off
echo ===============================================
echo    Starting Complete Aleks System
echo ===============================================
echo.
echo This will start both backend and frontend servers
echo in separate windows.
echo.

REM Get the current directory
set "PROJECT_DIR=%~dp0"

echo Starting Backend Server...
start "Aleks Backend" cmd /k "cd /d "%PROJECT_DIR%" && start_backend.bat"

echo Waiting 5 seconds for backend to initialize...
timeout /t 5 /nobreak >nul

echo Starting Frontend Server...
start "Aleks Frontend" cmd /k "cd /d "%PROJECT_DIR%" && start_frontend.bat"

echo.
echo ===============================================
echo    Aleks System Starting Up
echo ===============================================
echo.
echo Backend Server: http://localhost:8000
echo Frontend App:   http://localhost:5173
echo API Docs:       http://localhost:8000/docs
echo.
echo Both servers are starting in separate windows.
echo Close those windows to stop the servers.
echo.
echo Waiting 10 seconds, then opening the application...
timeout /t 10 /nobreak >nul

REM Open the frontend in default browser
start http://localhost:5173

echo.
echo Aleks system is now running!
echo Press any key to exit this window...
pause >nul
