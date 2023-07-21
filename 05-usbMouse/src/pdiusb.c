#include "pdiusb.h"

#define DEBUG1

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

void D12_write_byte(uint8 value)
{
    D12_set_data_addr();
    D12_clr_wr();
    D12_set_port_out();
    D12_set_data(value);
    D12_set_wr();
    D12_set_port_in();
}

uint8 D12_read_endpoint_last_status(uint8 endp)
{
    D12_write_command(D12_INT_STATUS_EP_BASE + endp);
    return D12_read_byte();
}

void D12_select_endpoint(uint8 endp)
{
    D12_write_command(0x00 + endp);
}

uint8 D12_read_endpoint_buffer(uint8 endp, uint8 len, uint8 *buf)
{
    uint8 i, j;

    D12_select_endpoint(endp);
    D12_write_command(D12_READ_BUFFER);
    D12_read_byte();                    /* dispart the first byte */
    j = D12_read_byte();                /* actual recieved data bytes bums */
    if (j > len)                        /* when recieved data lagger than len */
        j = len;                        /* only read len of data */
#ifdef DEBUG1
    Prints("read endpoint ");
    print_long_int(endp / 2);
    Prints(" buffer ");
    print_long_int(j);
    Prints(" bytes\n");
#endif
    for (i = 0; i < j; i++) {
        D12_clr_rd();
        *(buf + i) = D12_get_data();    /* read 1 byte */
        D12_set_rd();                   /* RD = 1 */
#ifdef DEBUG1
        print_hex(*(buf + i));
        if(((i + 1) % 16) == 0)
            Prints("\n");
#endif
    }
#ifdef DEBUG1
    if ((j % 16) != 0)
        Prints("\n");
#endif

    return j;
}

void D12_clear_buffer(void)
{
    D12_write_command(D12_DATA_BUFFER_CLR);
}

void D12_Acknowlwdge_setup(void)
{
    D12_select_endpoint(1);             /* select endpoint 0 input */
    D12_write_command(D12_ACKNOWLEDGE_SETUP);
    D12_select_endpoint(0);             /* select endpoint 1 output */
    D12_write_command(D12_ACKNOWLEDGE_SETUP);
}

void D12_validate_buffer(void)
{
    D12_write_command(D12_VALIDATE_BUFFER);
}

/* write data to endpoint buffer */
uint8 D12_write_endpoint_buffer(uint8 endp, uint8 len, uint8 *buf)
{
    uint8 i;

    D12_select_endpoint(endp);
    D12_write_command(D12_WRITE_BUFFER);
    D12_write_byte(0);              /* before write buffer, must write a byte 0 */
    D12_write_byte(len);

#ifdef DEBUG1
    Prints("write endpoint ");
    print_long_int(endp / 2);
    Prints(" buffer ");
    print_long_int(len);
    Prints(" bytes\n");
#endif

    D12_set_port_out();

    for(i = 0; i < len; i++) {
        D12_clr_wr();               /* WR is low */
        D12_set_data(*(buf + i));   /* put date to data line */
        D12_set_wr();               /* WR is high, complete 1 byte write */
#ifdef DEBUG1
        print_hex(*(buf + i));
        if (((i + 1) % 16) == 0)
            Prints("\n");
#endif
    }
#ifdef DEBUG1
    if ((len % 16) != 0)
        Prints("\n");
#endif
    D12_set_port_in();              /* data direction switch to in */
    D12_validate_buffer();

    return len;
}

void D12_set_address(uint8 addr)
{
    D12_write_command(D12_SET_ADDRESS_ENABLE);
    D12_write_byte(0x80 | addr);
}

void D12_set_endpoint_enable(uint8 enable)
{
    D12_write_command(D12_SET_ENDPOINT_ENABLE);
    if (enable != 0)
        D12_write_byte(0x01);
    else
        D12_write_byte(0x00);
}
