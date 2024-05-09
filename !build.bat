@echo off

set zip=mods-4.3.zip

if exist %zip% (
    del %zip%
)

PowerShell -Command "Compress-Archive -Path mods -DestinationPath client-mods/mods.zip" >nul
PowerShell -Command "Compress-Archive -Path client-mods -DestinationPath builds/%zip%" >nul

cd client-mods
del /q *.zip

echo ✅  Mods Built Successfully.