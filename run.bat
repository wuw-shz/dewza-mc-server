@echo off
setlocal EnableExtensions

set exe=playit.exe
for /f %%x in ('tasklist /nh /fi "imagename eq %exe%"') do if %%x == %exe% (
  echo ✅  %exe% wlan-server is running
) else (
  echo ❌  %exe% wlan-server is not running, starting host wlan-server
  start powershell "./wlan-server.bat"
)

./mc-server

pause
