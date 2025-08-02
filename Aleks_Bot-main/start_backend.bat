@echo off
echo ===============================================
echo    Starting Aleks Backend Server
echo ===============================================
echo.

REM Check if virtual environment exists
if not exist "venv\Scripts\python.exe" (
    echo ERROR: Virtual environment not found!
    echo Please run setup_environment.bat first
    pause
    exit /b 1
)

echo Activating virtual environment...
call venv\Scripts\activate.bat

echo.
echo Starting FastAPI server with Uvicorn...
echo Server will be available at: http://localhost:8000
echo API Documentation: http://localhost:8000/docs
echo.
echo Press Ctrl+C to stop the server
echo.

REM Start the FastAPI server using uvicorn
venv\Scripts\python.exe -m uvicorn aleks_api:app --reload --host 0.0.0.0 --port 8000

echo.
echo Backend server stopped.
pause
