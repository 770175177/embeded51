#include "timer.h"

void init_timer0(void)
{
    TMOD &= 0xF0;
    TMOD |= 0x01;   /* ?4??????0???16?????? */
    ET0 = 1;        /* ?????0?? */
    TR0 = 1;        /* ?????0 */
}

/* ???0?1??? */
void timer0_ISR(void) interrupt 1
{
    TH0 = (65536 - Fclk/1000/12 * 5 +15) / 256;
    TL0 = (65536 - Fclk/1000/12 * 5 +15) % 256;

    if (!KeyCanChange)  /* ????????????? */
        return;

    KeyCurrent = GetKeyValue();
}
