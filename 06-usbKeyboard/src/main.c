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
 //?????8???????
 //???????????HID????????Buf[0]?D0??Ctrl??
 //D1??Shift??D2??Alt??D3??GUI??Window???
 //D4??Ctrl?D5??Shift?D6??Alt?D7??GUI??
 //Buf[1]?????0?Buf[2]~Buf[7]?????????6??
 //?????????????5????????6??
 //????????????????????6?????0xFF?
 //????????????????
 
 uint8 Buf[8]={0,0,0,0,0,0,0,0};
 //??????????????????????????????
 uint8 i=2;
 
 //?????????????
 if(KeyPress & KEY1) //??KEY1??
 {
  Buf[0]|=0x01;  //KEY1??Ctrl??
 }
 if(KeyPress & KEY2) //??KEY2??
 {
  Buf[0]|=0x02;  //KEY2??Shift??
 }
 if(KeyPress & KEY3) //??KEY3??
 {
  Buf[0]|=0x04;  //KEY3??Alt?
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
 //???????????1??????8???
 D12_write_endpoint_buffer(3, 8, Buf);
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
