;description: 移动鼠标到不同屏幕，不同配置需要自己配置
!1::
CoordMode, Mouse, Screen
MouseMove, (-960), (540)
Send {LControl}
return
!2::
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
Send {LControl}
return

!3::
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth + 720), (450)
Send {LControl}
return
