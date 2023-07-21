#include "led.h"

int led_light_on(uint8 index, bool on)
{
	if (index >= LED_NUM)
		return -1;
	
	if (on)
		LED &= ~(0x1 << index);
	else
		LED |= (0x1 << index);

	return 0;
}

bool led_light_is_on(uint8 index)
{
	uint8 value = 0;

	if (index >= LED_NUM)
		return false;

	value = LED;
	
	if ((value >> index) & 0x1)
		return false;
	else
		return true;
}
