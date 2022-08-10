;description ： 双击alt，等于鼠标左键

~LAlt::
intInterval := 500 ; 若两次连击在这个时间间隔中，则视为双击。
if (A_PriorHotkey <> "~LAlt" or A_TimeSincePriorHotkey > intInterval)
{
    KeyWait, LAlt 
    return
}
MouseClick, left
return