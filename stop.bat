@echo off
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :20128 ^| findstr LISTENING') do (
    echo Stopping process %%a on port 20128...
    taskkill /F /PID %%a
)
echo Done.