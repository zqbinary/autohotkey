; description: 移动鼠标到不同屏幕，不同配置需要自己配置
; 另外我键盘自带映射，所以可以用三个键分别映射alt+1,alt+2,alt+3
; 也可以再加一个几个按键的键盘专门处理

!1::
	CoordMode, Mouse, Screen
	MouseMove, (-960), (540)
	Send {LControl}
	KeyWait LAlt
	;实现双击，鼠标激活
	if(A_TimeSincePriorHotkey >300 and A_TimeSincePriorHotkey<800) 
		MouseClick,Left
return

!2::
	CoordMode, Mouse, Screen
	MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
	Send {LControl}
	KeyWait LAlt
	if(A_TimeSincePriorHotkey >300 and A_TimeSincePriorHotkey<800) 
		MouseClick,Left
return

!3::
	CoordMode, Mouse, Screen
	; MouseMove, (A_ScreenWidth + 720), (450)
	MouseMove, (A_ScreenWidth + 960), (450)
	Send {LControl}
	if(A_TimeSincePriorHotkey >300 and A_TimeSincePriorHotkey<800) 
		MouseClick,Left
return