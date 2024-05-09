@echo off

set zip=mods-4.4.zip

if exist builds/%zip% (
    del /q builds\%zip%
)

PowerShell -Command "Compress-Archive -Path mods -DestinationPath client-mods/mods.zip" >nul
PowerShell -Command "Compress-Archive -Path client-mods -DestinationPath builds/%zip%" >nul

del /q client-mods\mods.zip

echo ✅  Mods Built Successfully.