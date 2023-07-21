#include "key.h"

volatile uint8 __idata KeyCurrent, KeyOld, KeyNoChangedTime;
volatile uint8 __idata KeyPress;
volatile uint8 __idata KeyDown, KeyUp, KeyLast;
volatile uint8 __idata KeyCanChange;

void init_key_board(void)
{
    KeyIO = 0xFF;
    KeyPress = 0;
    KeyNoChangedTime = 0;
    KeyOld = 0;
    KeyCurrent = 0;
    KeyLast = 0;
    KeyDown = 0;
    KeyUp = 0;
    init_timer0();
    KeyCanChange = 1;
}








static int8 key = 0;

uint8 key_scan(void)
{
	uint8 value = 0;

    if (KEY != KEY_IDLE) {
        delay_ms(10);
        if (KEY != KEY_IDLE) {
            if (!(KEY & KEY_PRESS0))
                value |= KEY_PRESS0;
            if (!(KEY & KEY_PRESS1))
                value |= KEY_PRESS1;
            if (!(KEY & KEY_PRESS2))
                value |= KEY_PRESS2;
            if (!(KEY & KEY_PRESS3))
                value |= KEY_PRESS3;
            if (!(KEY & KEY_PRESS4))
                value |= KEY_PRESS4;
            if (!(KEY & KEY_PRESS5))
                value |= KEY_PRESS5;
            if (!(KEY & KEY_PRESS6))
                value |= KEY_PRESS6;
            if (!(KEY & KEY_PRESS7))
                value |= KEY_PRESS7;
        }
    }

    return value;
}

int8 key_scan_once(void)
{
    int i = 0;
    uint8 value = 0;

    if (KEY != KEY_IDLE) {
        delay_ms(10);
        if (KEY != KEY_IDLE) {
            value = KEY;
            for (i = 0; i < KEY_MAX_NUM; i++) {
                if (!((value >> i) & 0x1) && (i != key))
                    key = i; 
            }
        }
    }

    return key;
}