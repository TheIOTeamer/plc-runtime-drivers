echo Ran KillSwitch at %DATE% %TIME% >> C:\Users\c4mlabuser9\Desktop\KillLog.txt

@echo off
REM Navigate to your KillSwitch script directory
cd /d "C:\Users\c4mlabuser9\Desktop\HackerFolder"

REM Run the script using AutoHotkey v1.1.37.02
start "" "C:\Users\c4mlabuser9\AppData\Local\Programs\AutoHotkey\v1.1.37.02\AutoHotkeyU64.exe" "HackerMadeKillSwitch.ahk"

@echo off

echo %USERNAME% ran this task at %DATE% %TIME% >> "C:\Users\c4mlabuser9\Desktop\KillLog.txt"

 