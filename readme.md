# 介绍
autohotkey,下面简称 ahk 脚本

项目背景：腱鞘炎越来越严重，尽量减少鼠标的使用

# 编译
运行 ./merge.sh：把src 目录下的 *.ahk，编译打包 到 dist/ahk.ahk

也可以自己选择ahk 文件，分别启用

文件前面表示合并的顺序，数字小的在文件前面

# 使用方法
为编译好的文件 dist/ahk.ahk 设置快捷方式

cmd+r 运行 shell:startup,把快捷方式放到开机启动文件夹里

下次只需要 在cmd 下运行 run run.bat, 实现合并替换原来的旧脚本
# 脚本功能
## toggleScreenByKeyboard.ahk  
我有三个屏幕，通过快捷键，快速移动鼠标到对应屏幕的中间

双击快捷键，鼠标左键也会被触发

## mockClick.ahk  
win+alt等于鼠标左键，从而激活窗口

双击alt也是模拟鼠标左键

alt+c 等于鼠标右键
## moveMouseByKeyboard.ahk  
alt键，配合qweasdzx 作为方向，实现鼠标快速移动

对alt+a 左移，alt+d 右移，实现长按不松，鼠标左键点击

## refreshRightScreen.ahk
调试方便，屏幕置于右侧，这个脚本可以让右侧刷新