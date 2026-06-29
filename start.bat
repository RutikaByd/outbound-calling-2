@echo off
echo Starting Outbound Mass Caller...

echo Starting FastAPI server on port 8000...
start cmd /k "uvicorn server:app --host 0.0.0.0 --port 8000"

:: Wait a couple of seconds for the server to initialize
timeout /t 2 /nobreak >nul

echo Starting LiveKit agent worker...
start cmd /k "python agent.py start"

echo Both services have been started in separate windows!
echo You can view the dashboard at http://localhost:8000
echo Close the respective windows to stop the services.
pause
