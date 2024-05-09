@echo off

PowerShell -Command "Expand-Archive -Path '%~dp0/mods.zip' -DestinationPath '%AppData%/.minecraft'" >nul

echo ✅  Installed Mods successfully.

pause