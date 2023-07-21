CC=sdcc
OBJ_NAME=mouse
OUT_DIR_NAME=out
CFLAGS=
USB_SERIAL=/dev/$(shell sudo dmesg | grep ch341-uart | grep 'usb 2' | grep ttyUSB | tail -n 1 | rev | cut -d ' ' -f1 | rev)

SRC=$(wildcard src/*.c)
DIRS=$(patsubst %.c,$(OUT_DIR_NAME)/%, $(SRC))
OBJS=$(foreach dir, $(DIRS), $(dir)/$(notdir $(dir)).rel)

INCLUDE:=inc

$(shell for dir in $(DIRS); do if [ ! -d $$dir ]; then mkdir -p $$dir; fi done)

$(OBJ_NAME): target
	@echo "link all..."
	@$(CC) $(OBJS) -I$(INCLUDE) -o $(OUT_DIR_NAME)/$@.ihx
	@echo "complete build $@.ihx"
	@packihx $(OUT_DIR_NAME)/$@.ihx > $@.hex
	@echo "complete generate $@.hex"

target:
	@$(foreach obj, $(DIRS), \
		echo "compile src/$(notdir $(obj)).c..."; \
		$(CC) -I$(INCLUDE) -c src/$(notdir $(obj)).c -o $(obj)/; \
	)

.PHONY: clean
clean:
	@rm $(OBJ_NAME).hex
	@rm -rf $(OUT_DIR_NAME)

.PHONY: burn
burn:
	sudo stcgal -P stc89 -b 115200 $(OBJ_NAME).hex -p $(USB_SERIAL) -D

#	-P		指定单片机类型
#	-b		波特率设置，默认19200
#	-p		指定往哪个端口下载
#	-D		显示串口交互信息	
