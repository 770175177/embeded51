#ifndef __KEY_H__
#define __KEY_H__
#include <8052.h>
#include "types.h"
#include "delay.h"
#include "timer.h"

#define KeyIO           P1
#define GetKeyValue()   (~KeyIO)

#define KEY1            0x01    /* mouse pointer move left */
#define KEY2            0x02    /* mouse pointer move right */
#define KEY3            0x04    /* mouse pointer move top */
#define KEY4            0x08    /* mouse pointer move botton */
#define KEY5            0x10    /* mouse wheel move botton */
#define KEY6            0x20    /* mouse wheel move top */
#define KEY7            0x40    /* mouse left button */
#define KEY8            0x80    /* mouse right button */

extern volatile __idata uint8 KeyCurrent, KeyOld, KeyNoChangedTime;
extern volatile __idata uint8 KeyPress;
extern volatile __idata uint8 KeyDown, KeyUp, KeyLast;
extern volatile __idata uint8 KeyCanChange;

#define KEY             P1
#define KEY_IDLE        0xFF
#define KEY_MAX_NUM     8

#define KEY_PRESS0      0x01
#define KEY_PRESS1      0x02
#define KEY_PRESS2      0x04
#define KEY_PRESS3      0x08
#define KEY_PRESS4      0x10
#define KEY_PRESS5      0x20
#define KEY_PRESS6      0x40
#define KEY_PRESS7      0x80

void init_key_board(void);
uint8 key_scan(void);
int8 key_scan_once(void);

#endif