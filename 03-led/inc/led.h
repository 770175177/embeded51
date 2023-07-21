#ifndef __LED_H__
#define __LED_H__

#include <8052.h>
#include <stdbool.h>
#include "types.h"

#define LED_NUM 8
#define LED     P2
#if 0
typedef enum __led {
    #define LED0    P2_0
    #define LED1    P2_1
    #define LED2    P2_2
    #define LED3    P2_3
    #define LED4    P2_4
    #define LED5    P2_5
    #define LED6    P2_6
    #define LED7    P2_7
} ELED;
#endif

int led_light_on(uint8 index, bool on);
bool led_light_is_on(uint8 index);

#endif