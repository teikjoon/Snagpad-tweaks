; vlookup command formula for Excel
F13::SendRaw, =vlookup(

; dd/MM/yyyy
F14::
FormatTime, CurrentDateTime,, dd/MM/yyyy
SendInput %CurrentDateTime%
return

; dd-MM-yyyy
F15::
FormatTime, CurrentDateTime,, dd-MM-yyyy
SendInput %CurrentDateTime%
return

; yyyyMMdd
F16::
FormatTime, CurrentDateTime,, yyyyMMdd
SendInput %CurrentDateTime%
return

; Launch/Switch EXCEL
F17::
IfWinNotExist, ahk_class XLMAIN
	Run, EXCEL.EXE
GroupAdd, kjexcel5, ahk_class XLMAIN ;You have to make a new group for each application, don't use the same one for all of them!
if WinActive("ahk_exe EXCEL.EXE")
	GroupActivate, kjexcel5, r
else
	WinActivate ahk_class XLMAIN ;you have to use WinActivatebottom if you didn't create a window group.
Return

; Launch/Switch Chrome
F18::
IfWinNotExist, ahk_class Chrome_WidgetWin_1
    Run, chrome.exe
GroupAdd, kjchrome5, ahk_class Chrome_WidgetWin_1 ;You have to make a new group for each application, don't use the same one for all of them!
if WinActive("ahk_exe chrome.exe")
    GroupActivate, kjchrome5, r
else
    WinActivate ahk_class Chrome_WidgetWin_1 ;you have to use WinActivatebottom if you didn't create a window group.
Return

; Cycle Chrome Tabs (Ctrl-TAB)
F19::^Tab

; Reverse cycle Chrome Tab
F20::^+Tab

; Launch/Switch Notepad++
F21::
IfWinNotExist, ahk_class Notepad++
    Run, notepad++.exe
GroupAdd, kjnotepadplusplus5, ahk_class Notepad++ ;You have to make a new group for each application, don't use the same one for all of them!
if WinActive("ahk_exe notepad++.exe")
    GroupActivate, kjnotepadplusplus5, r
else
    WinActivate ahk_class Notepad++ ;you have to use WinActivatebottom if you didn't create a window group.
Return

; Snip & Sketch
F22::#+S

; Launch/Switch File Explorer
F23::
IfWinNotExist, ahk_class CabinetWClass
    Run, Explorer.EXE
GroupAdd, kjexplorer5, ahk_class CabinetWClass ;You have to make a new group for each application, don't use the same one for all of them!
if WinActive("ahk_exe Explorer.EXE")
    GroupActivate, kjexplorer5, r
else
    WinActivate ahk_class CabinetWClass ;you have to use WinActivatebottom if you didn't create a window group.
Return

F24::Winset, Alwaysontop, , A

;qmk     |   ahk
;---------------
;KC_INT1 | SC073
;KC_INT2 | SC070
;KC_INT3 | SC07D
;KC_INT4 | SC079

SC073::Send {Volume_Down 2}
SC070::Send KC_INT2
SC07D::Send KC_INT3
SC079::Send KC_INT4

ctrl & F13::Send {Volume_Up 2}
ctrl & F14::Send CTRL_F14
ctrl & F15::Send CTRL_F15
ctrl & F16::Send CTRL_F16
