#ifndef __UART_H__
#define __UART_H__
#include <8052.h>
#include "types.h"
#include "config.h"

/* 256 - fclk / (baudrate * 12 * 16); */
#define UART_BAUD_9600_RELOADE_NUM    244

extern volatile uint8 sending;

void init_uart(void);
void uart_put_char(uint8 c);
void Prints(uint8 *s);
void print_short_hex(uint16 x);
void print_long_int(uint32 x);
void printc(uint8 x);
void print_hex(uint8 x);
void dump_hex(uint8 *buf, uint32 len);

#endif