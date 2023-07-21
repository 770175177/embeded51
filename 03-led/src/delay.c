#include "delay.h"

void delay_ms(uint32 ms) {
    uint32 x, y;

    for (x = ms; x > 0; x--)
        for (y = 230; y > 0; y--)
            ;

    return;
}