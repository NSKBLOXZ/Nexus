@echo off
cd /d "%~dp0"
set PORT=5230
echo Nexus v8.3 SEARCH & NOTIFICATIONS - diagnostico
echo.
node -v
call npm.cmd -v
echo.
call npm.cmd install --no-audit --no-fund
echo.
call npx.cmd prisma generate
call npx.cmd prisma db push --skip-generate
echo.
node server/index.js
echo.
pause
