# Aleks System Startup Scripts

This directory contains batch files to easily manage the Aleks Legal AI Assistant system.

## Quick Start

1. **First Time Setup**: Run `setup_environment.bat` to install all dependencies
2. **Start System**: Double-click `start_aleks.bat` to start both servers
3. **Stop System**: Run `stop_aleks.bat` to stop all servers

## Available Scripts

### `setup_environment.bat`
- Sets up Python virtual environment
- Installs all Python dependencies from requirements.txt
- Installs Node.js dependencies for the frontend
- Run this once before using the system

### `start_aleks.bat` ⭐ **Main Startup Script**
- Starts both backend and frontend servers automatically
- Opens separate terminal windows for each server
- Automatically opens the application in your browser
- **Recommended for normal use**

### `start_backend.bat`
- Starts only the FastAPI backend server
- Runs on http://localhost:8000
- API documentation available at http://localhost:8000/docs
- Use when you only need the API

### `start_frontend.bat`
- Starts only the React frontend development server
- Runs on http://localhost:5173
- Use when backend is already running separately

### `stop_aleks.bat`
- Stops all Aleks servers running on ports 8000 and 5173
- Kills any related Python/Node.js processes
- Use when you need to completely shut down the system

## Usage Instructions

### First Time Setup:
```
1. Double-click setup_environment.bat
2. Wait for all dependencies to install
3. Double-click start_aleks.bat
4. System will open in your browser automatically
```

### Daily Usage:
```
1. Double-click start_aleks.bat
2. Wait for both servers to start (about 10-15 seconds)
3. Application opens automatically at http://localhost:5173
```

### Shutdown:
```
1. Close the terminal windows, OR
2. Double-click stop_aleks.bat for complete cleanup
```

## System URLs

- **Frontend Application**: http://localhost:5173
- **Backend API**: http://localhost:8000
- **API Documentation**: http://localhost:8000/docs
- **API Health Check**: http://localhost:8000/docs (interactive testing)

## Troubleshooting

### "Virtual environment not found"
- Run `setup_environment.bat` first

### "Node.js not found" 
- Install Node.js from https://nodejs.org/

### "Python not found"
- Install Python 3.11+ and ensure it's in your PATH

### Servers won't start
- Run `stop_aleks.bat` first to clean up any stuck processes
- Then try `start_aleks.bat` again

### Port already in use
- Run `stop_aleks.bat` to free up ports 8000 and 5173
- Check if other applications are using these ports

## Requirements

- **Python 3.11+** (with pip)
- **Node.js 18+** (with npm)
- **Windows Command Prompt/PowerShell**
- **About 2GB free disk space** (for dependencies)

## File Structure
```
Aleks_Bot-main/
├── setup_environment.bat    # One-time setup
├── start_aleks.bat         # Start complete system
├── start_backend.bat       # Start backend only
├── start_frontend.bat      # Start frontend only
├── stop_aleks.bat          # Stop all servers
├── aleks_api.py           # Backend API code
├── requirements.txt       # Python dependencies
└── project/               # Frontend code
    ├── package.json       # Node.js dependencies
    └── src/              # React application
```
