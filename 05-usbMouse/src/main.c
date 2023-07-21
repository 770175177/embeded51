#include <8052.h>
#include "led.h"
#include "key.h"
#include "delay.h"
#include "uart.h"
#include "pdiusb.h"
#include "usbcore.h"
#include "ext.h"

void SendReport(void);

void main()
{
	int ret = 0;
	int i = 0;
	int8 key = 0;
	uint16 id = 0;
	uint8 status = 0;

	init_key_board();
	init_uart();
	// init_EXT0(EXT_TRIGGER_MODE_FALLING);

	id = D12_read_id();
	Prints("read pdiusb12 id is: ");
	print_short_hex(id);
	Prints("\n");

	usb_disconnect();
	usb_connect();
	ConfigValue=0;

	while(1) {
		//Prints("hello world!\n");
		//delay_ms(3000);
#if 1
		if(D12_get_intrrupt() == 0) {
			D12_write_command(D12_READ_INTERRUPT_REG);
			status = D12_read_byte();
			if(status & 0x80)
				usb_bus_isr_suspend();
			if(status & 0x40)
				usb_bus_isr_reset();
			if(status & 0x01)
				usb_bus_isr_ep0_out();
			if(status & 0x02)
				usb_bus_isr_ep0_in();
			if(status & 0x04)
				usb_bus_isr_ep1_out();
			if(status & 0x08)
				usb_bus_isr_ep1_in();
			if(status & 0x10)
				usb_bus_isr_ep2_out();
			if(status & 0x20)
				usb_bus_isr_ep2_in();
		}
#endif
		if (ConfigValue != 0) {
			LED = ~KeyPress;
			if (!Ep1InIsBusy) {
				KeyCanChange = 0;
				if (KeyUp || KeyDown || KeyPress)
					SendReport();
				KeyCanChange = 1;
			}
		}
	}
}

void SendReport(void)
{
 //?????4???????
 //Buf[0]?D0?????D1?????D2??????????
 //Buf[1]?X??Buf[2]?Y??Buf[3]???
 int8 Buf[4]={0,0,0,0};
 
 //?????KEY1~KEY6???????????????0
 KeyUp &=~(KEY1|KEY2|KEY3|KEY4|KEY5|KEY6);
 KeyDown &=~(KEY1|KEY2|KEY3|KEY4|KEY5|KEY6);
 
 //????????????KEY7?KEY8??????
 //??KEY7?KEY8??????????????????
 if((KeyPress&(~(KEY7|KEY8)))||KeyUp||KeyDown)
 {
  if(KeyPress & KEY1) //??KEY1????????????X?????
  {
   Buf[1]=-1;  //?????????????
  }
  if(KeyPress & KEY2) //??KEY2????????????X?????
  {
   Buf[1]=1;   //?????????????
  }
  if(KeyPress & KEY3) //??KEY3????????????Y?????
  {
   Buf[2]=-1;   //?????????????
  }
  if(KeyPress & KEY4)  //??KEY4????????????Y?????
  {
   Buf[2]=1;  //?????????????
  }
  if(KeyPress & KEY5)  //??KEY5????????????????
  {
   Buf[3]=-1;  //?????????????
  }
  if(KeyPress & KEY6)  //??KEY6???????????????
  {
   Buf[3]=1;   //?????????????
  }
  if(KeyPress & KEY7)  //????
  {
   Buf[0]|=0x01;  //D0?????
  }
  if(KeyPress & KEY8)  //????
  {
   Buf[0]|=0x02;  //D1?????
  }
  //???????????1??????4???
  D12_write_endpoint_buffer(3, 4, Buf);
  Ep1InIsBusy=1;  //????????
 }
 //????KeyUp?KeyDown
 KeyUp=0;
 KeyDown=0;
}

void ext0_ISR(void) __interrupt (0)
{
	uint8 status = 0;

	D12_write_command(D12_READ_INTERRUPT_REG);
	status = D12_read_byte();
	if(status & 0x80)
		usb_bus_isr_suspend();
	if(status & 0x40)
		usb_bus_isr_reset();
	if(status & 0x01)
		usb_bus_isr_ep0_out();
	if(status & 0x02)
		usb_bus_isr_ep0_in();
	if(status & 0x04)
		usb_bus_isr_ep1_out();
	if(status & 0x08)
		usb_bus_isr_ep1_in();
	if(status & 0x10)
		usb_bus_isr_ep2_out();
	if(status & 0x20)
		usb_bus_isr_ep2_in();
}

void timer0_ISR(void) __interrupt (1)
{
	static uint32 i = 0;

	TH0 = (65536 - TIMER0_RELOAD_NUM) / 256;
	TL0 = (65536 - TIMER0_RELOAD_NUM) % 256;

	i++;
	if (i > 200) {
		i = 0;
		// LED8 = !LED8;
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
