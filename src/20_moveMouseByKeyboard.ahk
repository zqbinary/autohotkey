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
!p::
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

!a::
	Send !{Tab}
	sleep 600
	Send, {Left}
	sleep 300
	Send, {Space}
	sleep 600
	Send, !{Tab}
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
; !z::
; 	MouseGetPos, x, y
; 	Mousemove, x-500, y+500
; 	Send {LControl}
; Return

!v::
	Send !{Tab}
	sleep 600
	Send, {Space}
	sleep 600
	Send, !{Tab}
Return


!z::
	Send !{Tab}
	sleep 600
	Send, !t
	sleep 500
	Send, !{Tab}
	sleep 600
	Send, ^v
Return
; 右上
!e::
	MouseGetPos, x, y

	Mousemove, x+500, y-500

Return

; 右下
; !x::
; 	MouseGetPos, x, y
; 	Mousemove, x+500, y+500
; Return

; !F2::
!x::
	CoordMode, Mouse, Screen
	MouseGetPos, xpos, ypos
	x1 := (A_ScreenWidth+120)
	; x1 := -120
	y1 := 100
	MouseMove,x1,y1
	Send, ^!z
	sleep 1500
	MouseMove, xpos, ypos
	Send, ^v
	send, {Tab}
Return
!m::
	Send, {WheelDown 3}
return