@echo off
cd /d "%~dp0"
call npm run build
set PORT=20128
set HOSTNAME=0.0.0.0
set NEXT_PUBLIC_BASE_URL=http://localhost:20128
npm run start