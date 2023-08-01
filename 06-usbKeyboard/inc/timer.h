#ifndef __TIMER_H__
#define __TIMER_H__
#include <8052.h>
#include "config.h"
#include "key.h"

/* *****************************************************
 * timer_clk = SYSCLK / 12
 * peroid = (1 / timer_clk)
 * 1us --> 1MHz
 * 1ms --> 1kHz
 * 
 * SYSCLK = 22.1184MHz
 * timer_clk = SYSCLK / 12 = 1.8432MHz = 1843.2 kHz
 * 1ms --> 1843.2 * peroid
 * 5ms --> 1843.2 * peroid * 5 = 9216
 * *****************************************************/
#define TIMER0_RELOAD_NUM       9216

void init_timer0(void);

#endif