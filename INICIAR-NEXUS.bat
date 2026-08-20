@echo off
setlocal
chcp 65001 >nul
title NEXUS v13.1 RENDER DEPLOY READY
cd /d "%~dp0"
set "PORT=5231"
set "DATABASE_URL=file:../data/nexus.db"
set "NEXUS_UPLOAD_DIR=uploads"

echo ==========================================
echo        NEXUS v13.1 RENDER DEPLOY READY
echo ==========================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo [ERRO] Node.js nao encontrado.
  echo Instale Node.js LTS e tente novamente.
  pause
  exit /b 1
)

where npm.cmd >nul 2>nul
if errorlevel 1 (
  echo [ERRO] npm.cmd nao encontrado.
  pause
  exit /b 1
)

if not exist "node_modules" (
  echo [1/4] Instalando dependencias...
  call npm.cmd install --no-audit --no-fund
  if errorlevel 1 goto :erro
) else (
  echo [1/4] Dependencias encontradas.
)

echo [2/4] Gerando Prisma Client...
call npx.cmd prisma generate
if errorlevel 1 goto :erro

echo [3/4] Preparando banco SQLite...
call npx.cmd prisma db push --skip-generate
if errorlevel 1 goto :erro

echo [4/4] Iniciando Nexus...
echo http://localhost:%PORT%
start "" cmd /c "timeout /t 2 /nobreak >nul & start "" http://localhost:%PORT%"
node server/index.js
echo.
echo Nexus encerrado.
pause
exit /b 0

:erro
echo.
echo ==========================================
echo Ocorreu um erro ao preparar o Nexus.
echo Tire um print desta janela.
echo ==========================================
pause
exit /b 1
