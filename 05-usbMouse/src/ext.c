#include "ext.h"

void init_EXT0(uint8 mode)
{
    EA = 0;
    if (mode == EXT_TRIGGER_MODE_FALLING)   /* 1:falling trigger, 0:low trigger*/
        IT0 = 1;
    else
        IT0 = 0;
    EX0 = 1;                               /* enable ext0 interrupt */
    EA = 1;
}