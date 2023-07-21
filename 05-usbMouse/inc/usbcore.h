#ifndef __USB_CORE_H__
#define __USB_CORE_H__
#include "uart.h"
#include "pdiusb.h"
#include "delay.h"

#define GET_STATUS         0
#define CLEAR_FEATURE      1
#define SET_FEATURE        3
#define SET_ADDRESS        5
#define GET_DESCRIPTOR     6
#define SET_DESCRIPTOR     7
#define GET_CONFIGURATION  8
#define SET_CONFIGURATION  9
#define GET_INTERFACE      10
#define SET_INTERFACE      11
#define SYNCH_FRAME        12

#define DEVICE_DESCRIPTOR         1
#define CONFIGURATION_DESCRIPTOR  2
#define STRING_DESCRIPTOR         3
#define INTERFACE_DESCRIPTOR      4
#define ENDPOINT_DESCRIPTOR       5
#define REPORT_DESCRIPTOR         0x22

#define SET_IDLE            0x0A

extern uint8 ConfigValue;
extern uint8 Ep1InIsBusy;

void usb_disconnect(void);
void usb_connect(void);

void usb_bus_isr_suspend();
void usb_bus_isr_reset();
void usb_bus_isr_ep0_out();
void usb_bus_isr_ep0_in();
void usb_bus_isr_ep1_out();
void usb_bus_isr_ep1_in();
void usb_bus_isr_ep2_out();
void usb_bus_isr_ep2_in();

void usb_bus_ep0_send_data(void);

#endif