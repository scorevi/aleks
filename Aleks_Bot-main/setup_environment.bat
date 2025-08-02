@echo off
echo ===============================================
echo    Environment Setup for Aleks System
echo ===============================================
echo.

REM Check if Python is available
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.11+ and try again
    pause
    exit /b 1
)

echo Python found. Setting up virtual environment...

REM Create virtual environment if it doesn't exist
if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
) else (
    echo Virtual environment already exists.
)

echo.
echo Activating virtual environment...
call venv\Scripts\activate.bat

echo.
echo Installing Python dependencies...
pip install -r requirements.txt

echo.
echo Setting up frontend...
cd project

REM Check if Node.js is available
node --version >nul 2>&1
if errorlevel 1 (
    echo WARNING: Node.js is not installed or not in PATH
    echo Please install Node.js to run the frontend
    cd ..
    pause
    exit /b 1
)

echo Node.js found. Installing npm dependencies...
npm install

cd ..

echo.
echo ===============================================
echo    Setup Complete!
echo ===============================================
echo.
echo Environment is ready. You can now run:
echo   - start_aleks.bat      (Start both servers)
echo   - start_backend.bat    (Backend only)
echo   - start_frontend.bat   (Frontend only)
echo.
pause
