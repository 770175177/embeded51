#include "pdiusb.h"

void D12_write_command(uint8 command)
{
    D12_set_command_addr();
    D12_clr_wr();
    D12_set_port_out();
    D12_set_data(command);
    D12_set_wr();
    D12_set_port_in();
}

uint8 D12_read_byte(void)
{
    uint8 tmp = 0;

    D12_set_data_addr();
    D12_clr_rd();
    tmp = D12_get_data();
    D12_set_rd();
    D12_set_rd();

    return tmp;
}

uint16 D12_read_id(void)
{
    uint16 id = 0;

    D12_write_command(D12_CMD_READ_ID);
    id = D12_read_byte();
    id |= ((uint16)D12_read_byte()) << 8;

    return id;
}