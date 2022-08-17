; description:win+alt，等于鼠标左键
; 这里有个bug 第一行注释下面必须有个换行

; alt+c 等于右键
!c::
	MouseClick, right
Return

; win+alt
#Alt::
	MouseClick, Left
Return

; description:双击alt，等于鼠标左键

~LAlt::
	if (A_PriorHotkey = "" or A_PriorHotkey= ~LAlt or A_TimeSincePriorHotkey > 800)
	{
		KeyWait, LAlt 
		return
	}
	MouseClick, left
return
