@echo off
setlocal EnableExtensions
chcp 65001 >nul
cd /d "%~dp0"

echo.
echo [Alekrythae Vector v0.1.0] Installing VisionCortex VTracer 1.0 engine...
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo ERROR: Node.js was not found.
  echo Install Node.js LTS and run this file again.
  pause
  exit /b 1
)

where npm >nul 2>nul
if errorlevel 1 (
  echo ERROR: npm was not found.
  pause
  exit /b 1
)

set "ENGINE_DIR=%LOCALAPPDATA%\Alekrythae\VectorEngine"
if not exist "%ENGINE_DIR%" mkdir "%ENGINE_DIR%"

if exist "%ENGINE_DIR%\engine.pid" (
  for /f "usebackq delims=" %%P in ("%ENGINE_DIR%\engine.pid") do taskkill /PID %%P /F >nul 2>nul
)
timeout /t 1 /nobreak >nul

copy /y "%~dp0engine\server.cjs" "%ENGINE_DIR%\server.cjs" >nul
if errorlevel 1 goto :copy_error
copy /y "%~dp0engine\vector-worker.cjs" "%ENGINE_DIR%\vector-worker.cjs" >nul
if errorlevel 1 goto :copy_error
copy /y "%~dp0engine\package.json" "%ENGINE_DIR%\package.json" >nul
if errorlevel 1 goto :copy_error

rem Legacy Neplex engine packages are no longer used.
if exist "%ENGINE_DIR%\node_modules\@neplex" rmdir /s /q "%ENGINE_DIR%\node_modules\@neplex" >nul 2>nul
if exist "%ENGINE_DIR%\package-lock.json" del /q "%ENGINE_DIR%\package-lock.json" >nul 2>nul

echo [1/4] Installing official VisionCortex VTracer 1.0...
call npm install --prefix "%ENGINE_DIR%" --no-audit --no-fund --omit=dev
if errorlevel 1 (
  echo.
  echo ERROR: Failed to download @visioncortex/vtracer.
  echo Check your internet connection.
  pause
  exit /b 3
)

echo [2/4] Validating VTracer 1.0 API...
node -e "const p=process.env.LOCALAPPDATA+'\\Alekrythae\\VectorEngine\\node_modules\\@visioncortex\\vtracer';const V=require(p);if(typeof V.convertPixels==='function'){console.log('OK: official VTracer convertPixels found')}else{process.exit(2)}"
if errorlevel 1 (
  echo.
  echo ERROR: @visioncortex/vtracer was installed but its API could not be loaded.
  pause
  exit /b 4
)

set "NODE_EXE="
for /f "delims=" %%N in ('where node') do if not defined NODE_EXE set "NODE_EXE=%%N"
if not defined NODE_EXE (
  echo ERROR: node.exe path could not be found.
  pause
  exit /b 6
)

set "LOG_FILE=%ENGINE_DIR%\engine.log"
(
  echo Set sh = CreateObject^("WScript.Shell"^)
  echo cmd = Chr^(34^) ^& "%ComSpec%" ^& Chr^(34^) ^& " /d /s /c " ^& Chr^(34^) ^& Chr^(34^) ^& "%NODE_EXE%" ^& Chr^(34^) ^& " " ^& Chr^(34^) ^& "%ENGINE_DIR%\server.cjs" ^& Chr^(34^) ^& " ^>^>" ^& Chr^(34^) ^& "%LOG_FILE%" ^& Chr^(34^) ^& " 2^>^&1" ^& Chr^(34^)
  echo sh.Run cmd, 0, False
) > "%ENGINE_DIR%\start-engine.vbs"

echo [3/4] Starting engine...
del /q "%LOG_FILE%" >nul 2>nul
"%SystemRoot%\System32\wscript.exe" "%ENGINE_DIR%\start-engine.vbs"

for /L %%I in (1,1,12) do (
  powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "try{$r=Invoke-RestMethod -UseBasicParsing 'http://127.0.0.1:17324/health' -TimeoutSec 2;if($r.ok -and $r.engine -eq '@visioncortex/vtracer' -and $r.version -eq '0.1.0'){exit 0}else{exit 2}}catch{exit 1}"
  if not errorlevel 1 goto :engine_ready
  timeout /t 1 /nobreak >nul
)
goto :engine_failed

:engine_ready
echo [4/4] Windows oturum acilisina ekleniyor...
set "STARTUP_DIR=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
del /q "%STARTUP_DIR%\Alekrythae-Vector-Engine.vbs" >nul 2>nul
copy /y "%ENGINE_DIR%\start-engine.vbs" "%STARTUP_DIR%\Alekrythae-Vector-Engine.vbs" >nul

echo.
echo DONE: VisionCortex VTracer 1.0 Photo/Stacked engine is ready.
echo Health: http://127.0.0.1:17324/health
echo.
pause
exit /b 0

:copy_error
echo.
echo ERROR: Engine files could not be copied.
echo ZIP'i once normal bir klasore cikart.
pause
exit /b 2

:engine_failed
echo.
echo ERROR: The engine was installed but did not respond on 127.0.0.1:17324.
if exist "%LOG_FILE%" (
  echo.
  echo ---- engine.log ----
  type "%LOG_FILE%"
  echo --------------------
)
pause
exit /b 5
