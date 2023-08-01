#include "timer.h"
#include "led.h"

void init_timer0(void)
{
    TH0 = (65536 - TIMER0_RELOAD_NUM) / 256;
    TL0 = (65536 - TIMER0_RELOAD_NUM) % 256;
    TMOD &= 0xF0;
    TMOD |= 0x01;
    EA = 1;
    ET0 = 1;
    TF0 = 0;
    TR0 = 1;
}
