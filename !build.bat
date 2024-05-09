@echo off

set zip=mods-4.4.zip

if exist %zip% (
    del %zip%
)

copy /y "%~dp0\client\!install-mods.bat" "%~dp0\mods"

PowerShell -Command "Compress-Archive -Path mods -DestinationPath %zip%"

echo ✅  Mods Built Successfully.

pause
