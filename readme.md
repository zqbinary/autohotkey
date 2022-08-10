# 介绍
autohotkey,下面简称 ahk 脚本

项目背景：腱鞘炎越来越严重，尽量减少鼠标的使用

# 编译
运行 ./merge.sh：把src 目录下的 *.ahk，编译打包 到 dist/ahk.ahk

也可以自己选择ahk 文件，分别启用

# 使用方法
为编译好的文件 dist/ahk.ahk 设置快捷方式

cmd+r 运行 shell:startup,把快捷方式放到开机启动文件夹里

# 脚本功能
## checkScreenByKeyboard.ahk  
我有三个屏幕，通过快捷键，快速移动鼠标到对应屏幕的中间

## mockClick.ahk  
alt+c等于鼠标左键，从而激活窗口

## moveMouseByKeyboard.ahk  
把qweasdzx 作为方位，配合alt 键，实现鼠标快速移动

## refreshRightScreen.ahk
调试方便，屏幕置于右侧，这个脚本可以让右侧刷新