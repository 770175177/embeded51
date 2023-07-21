#ifndef __KEY_H__
#define __KEY_H__
#include <8052.h>
#include "types.h"
#include "delay.h"
#include "timer.h"

#define KEY_IO      P1

extern volatile uint8 idata KeyCurrent, KeyOld, KeyNoChangedTime;
extern volatile uint8 idata KeyPress;
extern volatile uint8 idata KeyDown, KeyUp, KeyLast;
extern volatile uint8 idata KeyCanChange;

#define KEY         P1
#define KEY_IDLE    0xFF
#define KEY_MAX_NUM 8

#define KEY_PRESS0  0x01
#define KEY_PRESS1  0x02
#define KEY_PRESS2  0x04
#define KEY_PRESS3  0x08
#define KEY_PRESS4  0x10
#define KEY_PRESS5  0x20
#define KEY_PRESS6  0x40
#define KEY_PRESS7  0x80

uint8 key_scan(void);
int8 key_scan_once(void);

#endif