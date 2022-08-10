;移动到右边屏幕，刷新

;移动到右边屏幕，刷新，返回原位
!F5::
    CoordMode, Mouse, Screen
    MouseGetPos, xpos, ypos 
    ;MsgBox, The cursor is at X%xpos% Y%ypos% win%name%.
    MouseMove, (A_ScreenWidth + 720), (450)
    MouseClick, Left
    Send, {F5}
    MouseMove, xpos, ypos
    Send, {Control}
    MouseClick, Left
    Return
;移动到右边屏幕，刷新
!+F5::
    CoordMode, Mouse, Screen
    MouseGetPos, xpos, ypos 
    ;MsgBox, The cursor is at X%xpos% Y%ypos% win%name%.
    MouseMove, (A_ScreenWidth + 720), (450)
    MouseClick, Left
    Send, {F5}
    Send, {Control}
    Return
