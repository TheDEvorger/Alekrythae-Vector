@echo off
setlocal EnableExtensions
chcp 65001 >nul

echo.
echo [Alekrythae Vector v0.1.0] Motor kontrol ediliyor...
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "try{$r=Invoke-RestMethod -UseBasicParsing 'http://127.0.0.1:17324/health' -TimeoutSec 4;Write-Host ('OK  engine='+$r.engine+' vtracer='+$r.vtracer+' pipeline='+$r.pipeline+' pid='+$r.pid+' version='+$r.version);if($r.ok -and $r.engine -eq '@visioncortex/vtracer' -and $r.version -eq '0.1.0'){exit 0}else{exit 2}}catch{Write-Host ('HATA  '+$_.Exception.Message);exit 1}"
if errorlevel 1 (
  echo.
  echo Motor calismiyor veya yanlis surum calisiyor.
  echo INSTALL_ENGINE.cmd dosyasini yeniden calistir.
  echo Log: %LOCALAPPDATA%\Alekrythae\VectorEngine\engine.log
) else (
  echo Motor hazir.
)

echo.
pause
