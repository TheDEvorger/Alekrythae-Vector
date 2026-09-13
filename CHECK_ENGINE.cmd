@echo off
setlocal EnableExtensions
chcp 65001 >nul

echo.
echo [Alekrythae Vector v0.1.0] Checking engine...
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "try{$r=Invoke-RestMethod -UseBasicParsing 'http://127.0.0.1:17324/health' -TimeoutSec 4;Write-Host ('OK  engine='+$r.engine+' vtracer='+$r.vtracer+' pipeline='+$r.pipeline+' pid='+$r.pid+' version='+$r.version);if($r.ok -and $r.engine -eq '@visioncortex/vtracer' -and $r.version -eq '0.1.0'){exit 0}else{exit 2}}catch{Write-Host ('ERROR  '+$_.Exception.Message);exit 1}"
if errorlevel 1 (
  echo.
  echo The engine is not running or the wrong version is active.
  echo Run INSTALL_ENGINE.cmd again.
  echo Log: %LOCALAPPDATA%\Alekrythae\VectorEngine\engine.log
) else (
  echo Engine is ready.
)

echo.
pause
