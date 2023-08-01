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
			if (!Ep1InIsBusy) {
				KeyCanChange = 0;
				if (KeyUp || KeyDown)
					SendReport();
				KeyCanChange = 1;
			}
		}
	}
}

void SendReport(void)
{
 //?????9?????????????ID???8?????
 //???????4??????????ID??5???9?????
 
 int8 Buf[9]={0,0,0,0,0,0,0,0,0}; 
 
 //??????????????????????????????
 //????ID???????????????????????
 uint8 i=3; 
 
 //???KEY1???????7??????????????
 //?KEY1??????7?????????7????????
 //???????KEY1??????7??????????????
 //KEY2??????KEY3??????KEY4??????KEY5??????
 //KEY6??????KEY7??????KEY8??????
 
 //?????????????
 
 if(KeyPress & KEY1) //??KEY1?????????
 {
  Buf[0]=0x01;  //???????ID?????ID?1?
  if(KeyPress & KEY2) //??KEY2??
  {
   Buf[1]|=0x02;  //KEY2??Shift??
  }
  if(KeyPress & KEY3) //??KEY3??
  {
   Buf[1]|=0x04;  //KEY3??Alt?
  }
  if(KeyPress & KEY4) //??KEY4??
  {
   Buf[i]=0x59;  //KEY4??????1??
   i++;  //????????
  }
  if(KeyPress & KEY5)  //??KEY5??
  {
   Buf[i]=0x5A;  //KEY5?????2??
   i++;  //????????
  }
  if(KeyPress & KEY6)  //??KEY6??
  {
   Buf[i]=0x5B;  //KEY6??????3??
   i++;  //????????
  }
  if(KeyPress & KEY7)  //??KEY7??
  {
   Buf[i]=0x39;  //KEY7??/??????
   i++;  //????????
  }
  if(KeyPress & KEY8)  //??KEY8??
  {
   Buf[i]=0x53;  //KEY8????????????
  }
  //???????????1??????9???
  D12_write_endpoint_buffer(3, 9, Buf);
 }
 else  //KEY1????????
 {
  Buf[0]=0x02;  //???????ID?????ID?2?
  if(KeyDown & KEY2) //??KEY2??
  {
   Buf[2]=-10;  //KEY2???????????10????
  }
  if(KeyDown & KEY3) //??KEY3??
  {
   Buf[2]=10;  //KEY3???????????10????
  }
  if(KeyDown & KEY4) //??KEY4??
  {
   Buf[3]=-10;  //KEY4???????????10????
  }
  if(KeyDown & KEY5)  //??KEY5??
  {
   Buf[3]=10;  //KEY5???????????10????
  }
  if(KeyPress & KEY6)  //??KEY6??
  {
   Buf[1]|=0x01;  //KEY6??????
  }
  if(KeyPress & KEY7)  //??KEY7??
  {
   Buf[1]|=0x04;  //KEY7??????
  }
  if(KeyPress & KEY8)  //??KEY8??
  {
   Buf[1]|=0x02;  //KEY8??????
  }
  //???????????1??????5???
  D12_write_endpoint_buffer(3, 5, Buf);
 }
 Ep1InIsBusy=1;  //????????
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