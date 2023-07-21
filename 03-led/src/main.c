#include <8052.h>
#include "led.h"
#include "key.h"
#include "delay.h"

int main()
{
	int ret = 0;
	int i = 0;
	int8 key = 0;

	for (i = 0; i < LED_NUM; i ++) {
		led_light_on(i, true);
		delay_ms(500);
	}

	for (i = 0; i < LED_NUM; i ++) {
		led_light_on(i, false);
		delay_ms(500);
	}

	while(1) {
		key = key_scan();
		for (i = 0; i < KEY_MAX_NUM; i++) {
			if (key & (0x1 << i))
				led_light_on(i, true);
			else
				led_light_on(i, false);
		}
	}

	return 0;
}
