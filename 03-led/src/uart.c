#include <8052.h>
#include "uart.h"
 
// configure serial for 9600 baud, 8 data bits, 1 stop bit.
void serial_init(void) {
    TMOD = 0x21;
    SCON = 0x40;
    TH1 = 0xFD;   // TH1 = 256 - 11.0592 * 1000 * 1000 / 12 / 32 / 9600;
    TCON |= 0x40; // start the timer1
    SCON |= 0x02; // tell putchar() the serial is ready to send
}
