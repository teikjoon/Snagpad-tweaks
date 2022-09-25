F13::Send F13

F14::
FormatTime, CurrentDateTime,, dd/MM/yyyy
SendInput %CurrentDateTime%
return

F15::
FormatTime, CurrentDateTime,, dd-MM-yyyy
SendInput %CurrentDateTime%
return

F16::
FormatTime, CurrentDateTime,, yyyyMMdd
SendInput %CurrentDateTime%
return

F17::Send F17

F18::
IfWinNotExist, ahk_class Chrome_WidgetWin_1
    Run, chrome.exe
GroupAdd, kjexplorers5, ahk_class Chrome_WidgetWin_1 ;You have to make a new group for each application, don't use the same one for all of them!
if WinActive("ahk_exe chrome.exe")
    GroupActivate, kjexplorers5, r
else
    WinActivate ahk_class Chrome_WidgetWin_1 ;you have to use WinActivatebottom if you didn't create a window group.
Return

F19::Send, F19
F20::Send, F20
F21::Send, F21
F22::Send, F22
F23::Send, F23
F24::Send, F24

;qmk     |   ahk
;---------------
;KC_INT1 | SC073
;KC_INT2 | SC070
;KC_INT3 | SC07D
;KC_INT4 | SC079

SC073::Send KC_INT1
SC070::Send KC_INT2
SC07D::Send KC_INT3
SC079::Send KC_INT4

ctrl & F13::Send {Volume_Up 2}
ctrl & F14::Send CTRL_F14
ctrl & F15::Send CTRL_F15
ctrl & F16::Send CTRL_F16
