#ifndef __LED_H__
#define __LED_H__

#include <8052.h>
#include <stdbool.h>
#include "types.h"

#define LED_NUM     8
#define LED         P2

#define LED1        P2_0
#define LED2        P2_1
#define LED3        P2_2
#define LED4        P2_3
#define LED5        P2_4
#define LED6        P2_5
#define LED7        P2_6
#define LED8        P2_7

#define OnLed1()    (LED1 = 0)
#define OnLed2()    (LED2 = 0)
#define OnLed3()    (LED3 = 0)
#define OnLed4()    (LED4 = 0)
#define OnLed5()    (LED5 = 0)
#define OnLed6()    (LED6 = 0)
#define OnLed7()    (LED7 = 0)
#define OnLed8()    (LED8 = 0)

#define OffLed1()    (LED1 = 1)
#define OffLed2()    (LED2 = 1)
#define OffLed3()    (LED3 = 1)
#define OffLed4()    (LED4 = 1)
#define OffLed5()    (LED5 = 1)
#define OffLed6()    (LED6 = 1)
#define OffLed7()    (LED7 = 1)
#define OffLed8()    (LED8 = 1)

int led_light_on(uint8 index, bool on);
bool led_light_is_on(uint8 index);

#endif