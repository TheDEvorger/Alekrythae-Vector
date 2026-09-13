@echo off
setlocal EnableExtensions
chcp 65001 >nul
cd /d "%~dp0"

echo.
echo [Alekrythae Vector v0.1.0] VisionCortex VTracer 1.0 motoru kuruluyor...
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo HATA: Node.js bulunamadi.
  echo Node.js LTS kurup bu dosyayi yeniden calistir.
  pause
  exit /b 1
)

where npm >nul 2>nul
if errorlevel 1 (
  echo HATA: npm bulunamadi.
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

rem Eski neplex motor paketleri artik kullanilmiyor.
if exist "%ENGINE_DIR%\node_modules\@neplex" rmdir /s /q "%ENGINE_DIR%\node_modules\@neplex" >nul 2>nul
if exist "%ENGINE_DIR%\package-lock.json" del /q "%ENGINE_DIR%\package-lock.json" >nul 2>nul

echo [1/4] Resmi VisionCortex VTracer 1.0 kuruluyor...
call npm install --prefix "%ENGINE_DIR%" --no-audit --no-fund --omit=dev
if errorlevel 1 (
  echo.
  echo HATA: @visioncortex/vtracer indirilemedi.
  echo Internet baglantisini kontrol et.
  pause
  exit /b 3
)

echo [2/4] VTracer 1.0 API dogrulaniyor...
node -e "const p=process.env.LOCALAPPDATA+'\\Alekrythae\\VectorEngine\\node_modules\\@visioncortex\\vtracer';const V=require(p);if(typeof V.convertPixels==='function'){console.log('OK: official VTracer convertPixels bulundu')}else{process.exit(2)}"
if errorlevel 1 (
  echo.
  echo HATA: @visioncortex/vtracer kuruldu ama API acilamadi.
  pause
  exit /b 4
)

set "NODE_EXE="
for /f "delims=" %%N in ('where node') do if not defined NODE_EXE set "NODE_EXE=%%N"
if not defined NODE_EXE (
  echo HATA: node.exe yolu bulunamadi.
  pause
  exit /b 6
)

set "LOG_FILE=%ENGINE_DIR%\engine.log"
(
  echo Set sh = CreateObject^("WScript.Shell"^)
  echo cmd = Chr^(34^) ^& "%ComSpec%" ^& Chr^(34^) ^& " /d /s /c " ^& Chr^(34^) ^& Chr^(34^) ^& "%NODE_EXE%" ^& Chr^(34^) ^& " " ^& Chr^(34^) ^& "%ENGINE_DIR%\server.cjs" ^& Chr^(34^) ^& " ^>^>" ^& Chr^(34^) ^& "%LOG_FILE%" ^& Chr^(34^) ^& " 2^>^&1" ^& Chr^(34^)
  echo sh.Run cmd, 0, False
) > "%ENGINE_DIR%\start-engine.vbs"

echo [3/4] Motor baslatiliyor...
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
echo TAMAM: VisionCortex VTracer 1.0 Photo/Stacked motoru hazir.
echo Health: http://127.0.0.1:17324/health
echo.
pause
exit /b 0

:copy_error
echo.
echo HATA: engine dosyalari kopyalanamadi.
echo ZIP'i once normal bir klasore cikart.
pause
exit /b 2

:engine_failed
echo.
echo HATA: Motor kuruldu ama 127.0.0.1:17324 uzerinde cevap vermedi.
if exist "%LOG_FILE%" (
  echo.
  echo ---- engine.log ----
  type "%LOG_FILE%"
  echo --------------------
)
pause
exit /b 5
