@echo off
echo ===============================================
echo    Starting Aleks Frontend Server
echo ===============================================
echo.

REM Change to the project directory
cd /d "%~dp0project"

REM Check if node_modules exists
if not exist "node_modules" (
    echo WARNING: node_modules not found!
    echo Installing npm dependencies...
    npm install
    echo.
)

echo Starting Vite development server...
echo Frontend will be available at: http://localhost:5173
echo.
echo Press Ctrl+C to stop the server
echo.

REM Start the Vite development server
npm run dev

echo.
echo Frontend server stopped.
cd /d "%~dp0"
pause
