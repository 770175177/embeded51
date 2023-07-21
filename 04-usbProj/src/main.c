#include <8052.h>
#include "led.h"
#include "key.h"
#include "delay.h"
#include "uart.h"
#include "pdiusb.h"

void main()
{
	int ret = 0;
	int i = 0;
	int8 key = 0;
	uint16 id = 0;

	init_key_board();
	init_uart();

	id = D12_read_id();
	Prints("read pdiusb12 id is: ");
	print_short_hex(id);
	Prints("\n");

	while(1) {
		Prints("hello world!\n");
		delay_ms(3000);
	}
}

void timer0_ISR(void) __interrupt (1)
{
	static uint32 i = 0;

	TH0 = (65536 - TIMER0_RELOAD_NUM) / 256;
	TL0 = (65536 - TIMER0_RELOAD_NUM) % 256;

	i++;
	if (i > 200) {
		i = 0;
		LED8 = !LED8;
	}
	
	if (!KeyCanChange)
        return;

	KeyCurrent = GetKeyValue();

	if (KeyCurrent != KeyOld) {
        KeyNoChangedTime = 0;
        KeyOld = KeyCurrent;
        return;
    }
    else {
        KeyNoChangedTime++;
        if (KeyNoChangedTime >= 1) {
            KeyNoChangedTime = 1;
            KeyPress = KeyOld;
            KeyDown |= (~KeyLast) & (KeyPress);
            KeyUp |= KeyLast & (KeyPress);
            KeyLast = KeyPress;
        }
    }
}

void uart_ISR(void)	__interrupt (4)
{
	if (RI) {
		RI = 0;			/* clear recieve interrupt */
	} else {
		TI = 0;
		sending = 0;
	}
}
