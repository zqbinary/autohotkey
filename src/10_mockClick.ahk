; description:win+alt，等于鼠标左键
; 这里有个bug 第一行注释下面必须有个换行

; alt+c
!c::
	MouseClick, Left
Return

; win+alt
#Alt::
	MouseClick, Left
Return

;description:双击alt，等于鼠标左键

~LAlt::

	IniWrite, start %A_PriorHotkey%, log.txt, s1, s1
	if (A_PriorHotkey = "" or A_PriorHotkey= ~LAlt or A_TimeSincePriorHotkey > 800)
	{
		IniWrite, wait %A_PriorHotkey%, log.txt, s2, s2
		KeyWait, LAlt 
		return
	}
	IniWrite, wait %A_PriorHotkey%, log.txt, s3, s3
	MouseClick, left
return
