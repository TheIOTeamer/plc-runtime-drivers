; Start Studio 5000
Run, "C:\Program Files (x86)\Rockwell Software\Studio 5000\Launcher\Launcher.exe"
WinWait, Studio 5000
WinActivate
Sleep, 2000

; Use window-relative coordinates
CoordMode, Mouse, Window

; Wait for Studio 5000 launcher
WinWait, Studio 5000
WinActivate
Sleep, 2500

; Click "Existing Project" based on its position inside the Studio 5000 window
; Estimated based on visible layout inside the window
Click, 420, 210 ; ← Adjust slightly if needed (x,y inside the launcher window)
Sleep, 4000

; Step 3: Click "Project File"
Click, 414, 266 ; ✅ your Window-relative position from latest screenshot
Sleep, 2500

; Wait for the file dialog to appear (class #32770 = standard dialog window)
WinWaitActive, ahk_class #32770
Sleep, 1000

; Focus the address bar
Send, ^l
Sleep, 600

; Paste the folder path
Send, C:\Users\c4mlabuser9\Desktop\Testing Folder\NewDoc\Testing
Sleep, 600
Send, {Enter}

; Click the File name input field
Click, 220, 470
Sleep, 600

; Type the filename
Send, Storage_Test_4_25_2025_FromPLC.ACD
Sleep, 600

; Press Enter to open it
Send, {Enter}
Sleep, 32000

WinActivate, ahk_exe LogixDesigner.Exe
Sleep, 1000


; Switch to screen coordinate mode
CoordMode, Mouse, Screen

; Click the "Communications" tab using screen position
Click, 488, 154
Sleep, 1000

; Click "Go Online"
Click, 536, 245
Sleep, 8000

; Click the "Communications" tab again
Click, 488, 154
Sleep, 5000

; Click "Program Mode"
Click, 527, 324
Sleep, 5000

; Click "Yes" if it asks to run in remote mode
Click, 900, 508
Sleep, 5000

; Click "Exit" 
Click, 1534, 130
Sleep, 2500
