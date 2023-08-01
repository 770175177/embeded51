#include <8052.h>
#include "uart.h"

volatile uint8 sending = 0;

__code uint8 hex_table[] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
 
/* ***********************************************************************
 *
 * configure serial for 9600 baud, 8 data bits, 1 stop bit. 
 *
 * ***********************************************************************/
void init_uart(void)
{
    EA = 0;
    TMOD &= 0xF0;
    TMOD |= 0x20;       /* timer1 mode 2, auto reload */
    SCON = 0x50;        /* uart mode 1 */
    
    TH1 = UART_BAUD_9600_RELOADE_NUM;
    TL1 = UART_BAUD_9600_RELOADE_NUM;
    PCON |= 0x80;       /* uart baud rate double */
    ES = 1;             /* enable uart interrupt */
    TR1 = 1;            /* start timer1 */
    REN = 1;            /* enable recieve */
    EA = 1;             /* enable all interrupt */
}

/* ***********************************************************************
 *
 * send a char to uart. 
 *
 * ***********************************************************************/
void uart_put_char(uint8 c)
{
    SBUF = c;
    sending = 1;
    while(sending);
}

/* ***********************************************************************
 *
 * send a string to uart. 
 *
 * ***********************************************************************/
void Prints(uint8 *s)
{
    while(*s != '\0') {
        uart_put_char(*s);
        s++;
    }
}

/* ***********************************************************************
 *
 * send a hex to uart. 
 *
 * ***********************************************************************/
void print_short_hex(uint16 x)
{
    int8 i;
    uint8 display_buf[7];

    display_buf[6] = 0;
    display_buf[0] = '0';
    display_buf[1] = 'x';

    for (i = 5; i >= 2; i--) {
        display_buf[i] = hex_table[x & 0xF];
        x >>= 4;
    }

    Prints(display_buf);
}

void print_long_int(uint32 x)
{
    int8 i;
    uint8 display_buf[10];

    display_buf[5] = 0;
    
    for (i = 9; i >= 0; i--) {
        display_buf[i] = '0' + x % 10;
        x /= 10;
    }

    for (i = 0; i < 9; i++)
        if (display_buf[i] != '0')
            break;

    for (; i < 10; i++)
        uart_put_char(display_buf[i]);
}

void printc(uint8 x)
{
    sending = 1;
    SBUF = x;
    while(sending);
}

void print_hex(uint8 x)
{
    printc('0');
    printc('x');
    printc(hex_table[x >> 4]);
    printc(hex_table[x & 0x0F]);
    printc(' ');
}

void dump_hex(uint8 *buf, uint32 len)
{
    uint32 i;

    for (i = 0; i < len; i ++) {
        print_hex(buf[i]);
        if ((i != 0) && (i % 16 == 0))
            Prints("\n");
    }
    Prints("\n");
}
