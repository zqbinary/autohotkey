; name: qweasdzx 方案
; description: 用alt+键盘，做快速移动

; 下移
!s::
	MouseGetPos, x, y
	Mousemove, x, y+500
	Send {LControl}
Return

; 上移
!w::
	MouseGetPos, x, y
	Mousemove, x, y-500
	Send {LControl}
Return

; 左移
!a::
	MouseGetPos, x, y
	Mousemove, x-625, y
	KeyWait a
	;a长按不松，鼠标左键点击
	if(A_TimeSinceThisHotkey >300 and A_TimeSinceThisHotkey<800)
	{
		Sleep 150 
		MouseClick, Left
	}
	Send {LControl}
Return

; 右移
!d::
	MouseGetPos, x, y
	Mousemove, x+700, y
	KeyWait d
	;长按不松，鼠标左键点击
	if(A_TimeSinceThisHotkey >300 and A_TimeSinceThisHotkey<800) 
	{
		Sleep 150 
		MouseClick, Left
	}
	Send {LControl}
Return

; 左上
!q::
	MouseGetPos, x, y
	Mousemove, x-500, y-500
	Send {LControl}
Return

; 左下
!z::
	MouseGetPos, x, y
	Mousemove, x-500, y+500
	Send {LControl}
Return

; 右上
!e::
	MouseGetPos, x, y
	Mousemove, x+500, y-500
Return

; 右下
!x::
	MouseGetPos, x, y
	Mousemove, x+500, y+500
Return