# ONScripter-GameCase
在Jh的基础上为GameCase（3.2 inch）进行了按键适配。
源代码需要在树莓派上本地编译（没关系，非常快），编译时需要SDL全家桶。
对于其他设备的SDL手柄而言，你需要修改Onscripter-event.cpp。

## 关于一般按键：
找到“GBA-CM3”字段，下面有一个map。从上到下为Button0-ButtonX（我没数过有多少个）对应的功能。
自行修改他们的顺序即可实现按键适配。
这部分代码的机理是将SDL_Button逐个映射为键盘输入。

## 关于方向键/摇杆：
程序支持Axis（摇杆）的控制功能，默认配置Axis0/1。代码看上去很不直观，不过我相信对于大部分手柄或树莓派掌机的摇杆，这部分代码都是无需修改的。
程序不支持Hat（很多手柄的十字键为Hat）控制。如果你的手柄或树莓派掌机没有摇杆，你可能需要自行处理这部分问题。

键盘用户无需按键适配。

## 编译：
sudo apt-get install build-essential libsdl1.2-dev libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsdl-gfx1.2-dev

make



## ONScripter-Jh

ONScripter是一个开源的NScripter脚本解释工具，主要由Ogapee开发维护
原版的Readme请查看Readme.old。

这是一个修改版的ONScripter源码，在GPLv2协议下发布，使用时请遵守。

修改目标：
	提供比原版ONScripter更好的性能，适当增加一些功能
	添加中文支持
	尽可能的兼容原版ONS脚本
