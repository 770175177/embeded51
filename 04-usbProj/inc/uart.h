#ifndef __UART_H__
#define __UART_H__
#include <8052.h>
#include "types.h"
#include "config.h"

extern volatile uint8 sending;

void init_uart(void);
void uart_put_char(uint8 c);
void Prints(uint8 *s);
void print_short_hex(uint16 x);

#endif