#ifndef __PDIUSB_H__
#define __PDIUSB_H__
#include <8052.h>
#include "types.h"

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

void D12_write_command(uint8);
uint8 D12_read_byte(void);
uint16 D12_read_id(void);

#endif
