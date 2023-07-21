#ifndef __PDIUSB_H__
#define __PDIUSB_H__
#include <8052.h>
#include "types.h"
#include "uart.h"

#define D12_COMMAND_ADDR        1
#define D12_DATA_ADDR           0

#define D12_DATA                P0
#define D12_A0                  P3_5
#define D12_WR                  P3_6
#define D12_RD                  P3_7
#define D12_INT                 P3_2

#define D12_set_command_addr()  (D12_A0 = D12_COMMAND_ADDR)
#define D12_set_data_addr()     (D12_A0 = D12_DATA_ADDR)

#define D12_set_wr()            (D12_WR = 1)
#define D12_clr_wr()            (D12_WR = 0)

#define D12_set_rd()            (D12_RD = 1)
#define D12_clr_rd()            (D12_RD = 0)

#define D12_get_intrrupt()      (D12_INT)

#define D12_get_data()          (D12_DATA)
#define D12_set_data(value)     (D12_DATA = (value))

/* set port to high is instead of port is in */
#define D12_set_port_in()       (D12_DATA = 0xFF)
/* nothing to do when port is out */
#define D12_set_port_out()

/* cmd of read id */
#define D12_CMD_READ_ID         0xFD

#define D12_SET_MODE            0xF3

#define D12_READ_INTERRUPT_REG  0xF4

#define D12_READ_BUFFER         0xF0

#define D12_WRITE_BUFFER         0xF0

/* cmd of endpoint interrupt status */
#define D12_INT_STATUS_EP_BASE  0x40

#define D12_INT_STATUS_EP0_OUT  0x40

#define D12_INT_STATUS_EP0_IN   0x41

#define D12_INT_STATUS_EP1_OUT  0x42

#define D12_INT_STATUS_EP1_IN   0x43

#define D12_INT_STATUS_EP2_OUT  0x44

#define D12_INT_STATUS_EP2_IN   0x45

#define D12_DATA_BUFFER_CLR     0xF2        /* if not clear buffer, setup stage will send NAK. */

#define D12_VALIDATE_BUFFER     0xFA

#define D12_ACKNOWLEDGE_SETUP   0xF1

#define D12_SET_ADDRESS_ENABLE  0xD0

#define D12_SET_ENDPOINT_ENABLE 0xD8

void D12_write_command(uint8);
uint8 D12_read_byte(void);
uint16 D12_read_id(void);
void D12_write_byte(uint8 value);
uint8 D12_read_endpoint_buffer(uint8 endp, uint8 len, uint8 *buf);
void D12_clear_buffer(void);
void D12_Acknowlwdge_setup(void);
uint8 D12_read_endpoint_last_status(uint8 endp);
void D12_validate_buffer(void);
uint8 D12_write_endpoint_buffer(uint8 endp, uint8 len, uint8 *buf);
void D12_set_address(uint8 addr);
void D12_set_endpoint_enable(uint8 enable);

#endif
