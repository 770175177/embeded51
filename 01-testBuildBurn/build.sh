#!/bin/bash

# 生成 test.asm 等文件
# sdcc -c test.c

# 生成 test.ihx 等文件
sdcc test.c

# 生成 test.hex 文件
packihx test.ihx > test.hex
