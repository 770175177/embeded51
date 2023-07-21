#/bin/bash

sudo stcgal -P stc89 -b 115200 test.hex -p /dev/ttyUSB2 -D

# -P		指定单片机类型
# -b		波特率设置，默认19200
# -p		指定往哪个端口下载
# -D		显示串口交互信息
