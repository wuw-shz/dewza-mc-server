@echo off

for %%i in ("%~dp0\*.jar") do (
    if not "%%~xi"==".bat" (
        copy /y "%%i" "%AppData%\.minecraft\mods"
    )
)

echo ✅  Installed Mods successfully.

pause