#include <string.h>
#include "usbcore.h"

#define DEBUG0

/* USB request */
uint8   bmRequestType;
uint8   bRequest;
uint16  wValue;
uint16  wIndex;
uint16  wLength;
/* current send data posion */
uint8   *pSendData;
/* current send data length */
uint16  SendLength;
/* in control transfer, when return data length shorter than max data packate, the transfer is complete */
uint8   NeedZeroPacket;

uint8 Ep1InIsBusy;

uint8 ConfigValue;

__code uint8 DeviceDescriptor[0x12] = {      /* desciptor length is 18 bytes */
    0x12,   /* bLength, 18 bytes */
    0x01,   /* bDescriptorType, Device descriptor */
    0x10,   
    0x01,   /* bcdUSB, version is USB1.1 */
    0x00,   /* bDeviceClass, not set device class in this, it wil set in interface descriptor */
    0x00,   /* bDeviceSubClass */
    0x00,   /* bDevice Protocol */
    0x10,   /* bMaxPacketSize0, PDIUSB12 endpoint 0 size is 16 bytes */
    0x88,
    0x88,   /* idVendor, 0x8888 */
    0x01,
    0x00,   /* idProduct, 0x0001 */
    0x00,
    0x01,   /* bcdDevice, device version set to 1.0 */
    0x01,   /* iManufacturer, vendor string index */
    0x02,   /* iProduct, product string index */
    0x03,   /* iSerialNumber, device serial number index */
    0x01    /* bNumConfigurations, number of device configurations */
};

__code uint8 ConfigurationDescriptor[9 + 9 + 9 + 7] = {      /* desciptor length is 34 bytes */
    /************* configuration descriptor *************/
    0x09,   /* bLength */
    0x02,   /* bDescriptorType */
    sizeof(ConfigurationDescriptor) & 0xFF,         /* wTotalLength, low */
    (sizeof(ConfigurationDescriptor) >> 8) & 0xFF,  /* wTotalLength, high */
    0x01,   /* bNumInterfaces, has 1 interface */
    0x01,   /* bConfiguration, this configuration value is 1 */
    0x00,   /* iConfiguration, has no string */
    0x80,   /* bmAttributes, powered by USB bus, no remote wake up */
    0x32,   /* bMaxPower, set max is 100 mA */

    /************* interface descriptor *****************/
    0x09,   /* bLength */
    0x04,   /* bDescriptorType */
    0x00,   /* bInterfaceNumber, this is the first one interface number */
    0x00,   /* bAlternateSetting */
    0x01,   /* bNumEndpoints, number of endpoints number except 0 endpoint, mouse has a interrupt endpoint */
    0x03,   /* bInterfaceClass, mouse is HID class, HID class is 0x03 */
    0x01,   /* bInterfaceSubClass, HID1.1 has only one sub class support BOIS, mouse and keyboard belongs to it */
    0x02,   /* bInterfaceProtocol, if sub class support loader, mouse = 0x2, keyboard=0x1 */
    0x00,   /* iConfiguration, has no string */

    /************* HID descriptor ***********************/
    0x09,   /* bLength */
    0x21,   /* bDescriptorType, HID is 0x21 */
    0x10,   /* bcdHID, HID1.1 is low is the first */
    0x01,   /* bcdHID, HID1.1 high */
    0x21,   /* bCountryCode, 0x21 is America */
    0x01,   /* bNumDescriptors, the following descriptor number */
    0x22,   /* bDescriptorType, the following descriptor 0x22 is report descriptor */
    sizeof(ReportDescriptor) & 0xFF,        /* length of the following descriptor */
    (sizeof(ReportDescriptor) >> 8) & 0xFF,

    /************* endpoint descriptor ******************/
    0x07,   /* bLength */
    0x05,   /* bDescriptorType, endpoint descriptor type */
    0x81,   /* bEndpointAddress, input endpoint is 1, D7 indicate data transfer direction, 1 = IN */
    0x03,   /* bmAttribute, D1~D0 is transfer type */
    0x10,   /* wMaxPacketSize, the endpoint max packet length is 16 bytes, low is the first */
    0x00,
    0x0A    /* bInterval, the endpoint query time, 10 frame is 10 ms */
};

__code uint8 languageId[4] = {
    0x04,   /* length */
    0x03,   /* string descriptor */
    0x09,   /* 0x0409 is Ameracan Engliash ID */
    0x04
};

__code uint8 ManufacturerStringDescriptor[] = {
    sizeof(ManufacturerStringDescriptor),    /* length */
    0x03,    /* string descriptor type is 0x03 */
    'C', 0x00,
    'o', 0x00,
    'n', 0x00,
    't', 0x00,
    'a', 0x00,
    'c', 0x00,
    't', 0x00,
    ' ', 0x00,
    'a', 0x00,
    'u', 0x00,
    't', 0x00,
    'h', 0x00,
    'o', 0x00,
    'r', 0x00,
    ' ', 0x00,
    'H', 0x00,
    'e', 0x00,
    'n', 0x00,
    'g', 0x00,
    ' ', 0x00,
    'V', 0x00,
    'i', 0x00,
    'a', 0x00,
    ' ', 0x00,
    'e', 0x00,
    'm', 0x00,
    'a', 0x00,
    'i', 0x00,
    'l', 0x00,
    ' ', 0x00,
    '7', 0x00,
    '7', 0x00,
    '0', 0x00,
    '1', 0x00,
    '7', 0x00,
    '5', 0x00,
    '1', 0x00,
    '7', 0x00,
    '7', 0x00,
    '@', 0x00,
    'q', 0x00,
    'q', 0x00,
    '.', 0x00,
    'c', 0x00,
    'o', 0x00,
    'm', 0x00
};

__code uint8 ProductStringDescriptor[] = {
    sizeof(ProductStringDescriptor),    /* length */
    0x03,   /* string descriptor type is 0x03 */
    'H', 0x00,
    'e', 0x00,
    'n', 0x00,
    'g', 0x00,
    '\'', 0x00,
    's', 0x00,
    ' ', 0x00,
    'M', 0x00,
    'o', 0x00,
    'u', 0x00,
    's', 0x00,
    'e', 0x00
};

__code uint8 SerialNumberStringDescriptor[] = {
    sizeof(SerialNumberStringDescriptor),   /* length */
    0x03,   /* string descriptor type is 0x03 */
    '2', 0x00,
    '0', 0x00,
    '2', 0x00,
    '3', 0x00,
    '-', 0x00,
    '0', 0x00,
    '7', 0x00,
    '-', 0x00,
    '1', 0x00,
    '8', 0x00
};

__code uint8 ReportDescriptor[] = {
    /* the first byte of a line is the item prefix: */
    /* D7:D4 - btag */
    /* D3:D2 - bType */
    /* D1:D0 - bSize */
    /* item1: global item(bType is 1), bSize is 1. this is a generic desktop page(0x1) */
    0x05, 0x01,
    /* item2: local item(bType is 2), this usage is mouse(0x02) */
    0x09, 0x02,
    /* item3: main item(bType is 0), this application usage for mouse */
    0xa1, 0x01,
    /* item4: local item, this is pointer collection */
    0x09, 0x01,
    /* item5: main item, this is a physical collection(0x00) */
    0xa1, 0x00,
    /* item6: global item, this usage is button(0x09) */
    0x05, 0x09,
    /* item7: local item, usage min is 1, this is left button of mouse */
    0x19, 0x01,
    /* item8: local item, usage max is 3, this is middule button of mouse */
    0x29, 0x03,
    /* item9: global item, this returned logical number min is 0 */
    0x15, 0x00,
    /* item10: global item, this logical max is 1 */
    0x25, 0x01,
    /* item11: global item, data items number is 3 */
    0x95, 0x03,
    /* item12: global item, data length is 1 */
    0x75, 0x01,
    /* item13: main item, has 3 data, each length is 1, as input(data, Var, Abs) */
    /* data 1 bit 0 instead of left button, data2 bit 1 instead of right button, data3 bit 2 instead of middule button */
    0x81, 0x02,
    /* item14: global item, data num is 1 */
    0x95, 0x01,
    /* item15: global item, data length is 5 */
    0x75, 0x05,
    /* item16: main item, for input */
    0x81, 0x03,
    /* item17: global item, generic desktop */
    0x05, 0x01,
    /* item18: local, x aray */
    0x09, 0x30,
    /* item19: local, y aray */
    0x09, 0x31,
    /* item20: local, wheel */
    0x09, 0x38,
    /* item21-item22: main, this absolute value */
    0x15, 0x81,
    0x25, 0x7F,
    /* item23: global, data length is 8 */
    0x75, 0x08,
    /* item24: global, data num is 3 */
    0x95, 0x03,
    /* item25: main, 3 data is for input(Data, Var, Rel) */
    /* data instead data is variable, Var instead data is isoland, Rel instead data is absolute */
    /* 1st 8 bit instead x aray, 2nd 8 bit instead Y aray, 3rd 8 bit instead wheel */
    0x81, 0x06,
    /* item26: close item above */
    0xC0,
    0xC0
};

/******************************************************************
 *  set mode -->  write byte1  -->  write byte2
 *  mode = 0xF3
 *  byte1: 7 6 5 4 3 2 1 0
 *         | | | | | | | |__ reserved, = 0  
 *         | | | | | | |____ lazy clkout, = 1, not lazy clkout; = 0, after 1ms of suspend change to high, switch to lazy clkout
 *         | | | | | |______ = 1, inner clk and PLL is on when suspend; = 0, inner clk and PLL will off.
 *         | | | | |________ interrupt mode, = 1, all error and NAK generates interrupt; = 0, send and recieved generate interrup
 *         | | | |__________ soft link, = 1, when Vbus valid, pull-up R connect; = 0, pull-up R disconnect
 *         | | |____________ reserve, = 0
 *         |_\______________ endpoint, = 0, no isochronous endpoint, endpoint 1&2 are normal endpoint, they are work in bulk endpoint.
 * 
 *  byte2: 7 6 5 4 3 2 1 0
 *         | | | | \_\_\_\__ clk division, clkout = 48MHz / (N + 1)
 *         | | |_\__________ reserve, = 0
 *         | |______________ = 1
 *         |________________ = 1, only SOF generate interrupt
 *       
 ******************************************************************/
void usb_disconnect(void)
{
#ifdef DEBUG0
    Prints("usb disconnect\n");
#endif
    D12_write_command(D12_SET_MODE);    /* set mode */
    D12_write_byte(0x06);               /* byte1, pull-up R disconnect, indicate usb disconnet */
    D12_write_byte(0x47);               /* byte2 */
    delay_ms(1000);
}

void usb_connect(void)
{
#ifdef DEBUG0
    Prints("usb connect\n");
#endif
    D12_write_command(D12_SET_MODE);    /* set mode */
    D12_write_byte(0x16);               /* byte1, pull-up R connect, indicate usb connet */
    D12_write_byte(0x47);               /* byte2 */
}

void usb_bus_isr_suspend()
{
#ifdef DEBUG0
    Prints("usb core isr suspend\n");
#endif
}

void usb_bus_isr_reset()
{
#ifdef DEBUG0
    Prints("usb core isr reset\n");
#endif
    Ep1InIsBusy = 0;
}

/******************************************************************
 *  interrupt status
 *  command: 0x40 ~ 0x45, ep0~ep2 out/in
 *  status: 7 6 5 4 3 2 1 0
 *          | | | | | | | |__ data recieve or transfer success.  
 *          | | | |_\_\_\____ error code.
 *          | | |____________ packet is stablishing.
 *          | |______________ DATA 0/1 packet; 0 is DATA 0 packet, 1 is DATA 1 packet.
 *          |________________ last status not read.
 * 
 ******************************************************************/
void usb_bus_isr_ep0_out()
{
    uint8 buffer[16];
#ifdef DEBUG0
    Prints("usb isr ep0 out\n");
#endif
    memset(buffer, 0, sizeof(buffer));
    /* read ep0 out status */
    /* if bit 5 is 1, indicating the packet is setting up. */
    if (D12_read_endpoint_last_status(0) & 0x20) {
        D12_read_endpoint_buffer(0, 16, buffer);
        D12_Acknowlwdge_setup();
        D12_clear_buffer();
        // dump_hex(buffer, 8);
        bmRequestType = buffer[0];
        bRequest = buffer[1];
        wValue = buffer[2] | (((uint16)buffer[3]) << 8);
        wIndex = buffer[4] | (((uint16)buffer[5]) << 8);
        wLength = buffer[6] | (((uint16)buffer[7]) << 8);
        /* bit7 is 1, indicate this is input request */
        if ((bmRequestType & 0x80) == 0x80) {   /* input request */
            /* bit6-bit5, indicate request type */ 
            /* 0 is stand request, 1 is class request, 2 is vendor request */
            switch ((bmRequestType >> 5) & 0x3) {
            case 0:                             /* stander request */
#ifdef DEBUG0
                Prints("USB stand input request: ");
#endif
                switch (bRequest) {
                case GET_CONFIGURATION:         /* get configuration */
#ifdef DEBUG0
                    Prints("Get configuration\n");
#endif
                    break;
                case GET_DESCRIPTOR:
#ifdef DEBUG0
                    Prints("Get descriptor -- ");
#endif
                    /* full speed device: stander request only support */
                    /* device/configuration/string descriptor */
                    switch ((wValue >> 8) & 0xFF) {
                    case DEVICE_DESCRIPTOR:
#ifdef DEBUG0
                        Prints("device descriptor\n");
#endif
                        pSendData = (uint8 *)DeviceDescriptor;
                        if (wLength > DeviceDescriptor[0]) {
                            SendLength = DeviceDescriptor[0];
                            if (SendLength % DeviceDescriptor[7] == 0)
                                NeedZeroPacket = 1;
                        } else {
                            SendLength = wLength;
                        }
                        usb_bus_ep0_send_data();
                        break;
                    case CONFIGURATION_DESCRIPTOR:
#ifdef DEBUG0
                        Prints("configuration descriptor\n");
#endif
                        pSendData = (uint8 *)ConfigurationDescriptor;
                        SendLength = ConfigurationDescriptor[3] * 256 + ConfigurationDescriptor[2];
                        if (wLength > SendLength) {
                            if (SendLength % DeviceDescriptor[7] == 0)
                                NeedZeroPacket = 1;
                        } else {
                            SendLength = wLength;
                        }
                        usb_bus_ep0_send_data();
                        break;
                    case STRING_DESCRIPTOR:
#ifdef DEBUG0
                        Prints("string descriptor -- ");
#endif
                        switch (wValue & 0xFF) {
                        case 0:         /* get language ID */
#ifdef DEBUG0
                            Prints("language ID\n");
#endif
                            pSendData = (uint8 *)languageId;
                            SendLength = languageId[0];
                            break;
                        case 1:         /* Vendor string id is 1  */
#ifdef DEBUG0
                            Prints("manufacture string\n");
#endif
                            pSendData = (uint8 *)ManufacturerStringDescriptor;
                            SendLength = ManufacturerStringDescriptor[0];
                            break;
                        case 2:         /* Vendor string id is 1  */
#ifdef DEBUG0
                            Prints("product string\n");
#endif
                            pSendData = (uint8 *)ProductStringDescriptor;
                            SendLength = ProductStringDescriptor[0];
                            break;
                        case 3:         /* Vendor string id is 1  */
#ifdef DEBUG0
                            Prints("serial string\n");
#endif
                            pSendData = (uint8 *)SerialNumberStringDescriptor;
                            SendLength = SerialNumberStringDescriptor[0];
                            break;
                        default:         /* Vendor string id is 1  */
#ifdef DEBUG0
                            Prints("unknown string\n");
#endif
                            SendLength = 0;
                            NeedZeroPacket = 1;
                            break;
                        }
                        if ((wLength > SendLength) &&
                            (SendLength % DeviceDescriptor[7] == 0))
                                NeedZeroPacket = 1;
                        else
                            SendLength = wLength;
                        usb_bus_ep0_send_data(); 
                        break;
                    case REPORT_DESCRIPTOR:
#ifdef DEBUG0
                        Prints("Report descriptor: ");
#endif
                        pSendData = (uint8 *)ReportDescriptor;
                        SendLength = sizeof(ReportDescriptor);
                        if ((wLength > SendLength) && (SendLength % DeviceDescriptor[7] == 0))
                            NeedZeroPacket = 1;
                        else
                            NeedZeroPacket = 0;
                        usb_bus_ep0_send_data();
                        break;
                    default:
#ifdef DEBUG0
                        Prints("other descriptor: ");
#endif
                        print_hex((wValue >> 8) & 0xFF);
                        Prints("\n");
                        break;
                    }
                    break;
                case GET_INTERFACE:
#ifdef DEBUG0
                    Prints("Get interface\n");
#endif
                    break;
                case GET_STATUS:
#ifdef DEBUG0
                    Prints("Get status\n");
#endif
                    break;
                case SYNCH_FRAME:
#ifdef DEBUG0
                    Prints("Synch frame\n");
#endif
                    break;
                default:
#ifdef DEBUG0
                    Prints("Error: undefined stander request\n");
#endif
                    break;
                }
                break;
            case 1:                            /* class request */
#ifdef DEBUG0
                Prints("USB class input request:\n");
#endif
                break;
            case 2:
#ifdef DEBUG0
                Prints("USB vendor input request:\n");
#endif
                break;
             default:
#ifdef DEBUG0
                Prints("Error: undefined input request:\n");
#endif
                break;
            }
        } else { /* else (bmRequestType & 0x80), output request */
            /* bmRequestType bit6-5, these are request type */
            /* 0 is stander request, 1 is class request, 2 is vendor request */
            switch ((bmRequestType >> 5) & 0x3) {
            case 0:
#ifdef DEBUG0
                Prints("USB stander output request: ");
#endif
                switch (bRequest) {
                case CLEAR_FEATURE:
#ifdef DEBUG0
                    Prints("clear feature\n");                   
#endif
                    break;
                case SET_ADDRESS:
#ifdef DEBUG0
                    Prints("set address, the address is: ");
                    print_hex(wValue & 0xFF);
                    Prints("\n");                
#endif
                    D12_set_address(wValue & 0xFF);
                    SendLength = 0;
                    NeedZeroPacket = 1;
                    usb_bus_ep0_send_data();
                    break;
                case SET_CONFIGURATION:
#ifdef DEBUG0
                    Prints("set configuration\n");                   
#endif
                    ConfigValue = wValue & 0xFF;
                    D12_set_endpoint_enable(wValue & 0xFF);
                    /* return a 0 length status packet */
                    SendLength = 0;
                    NeedZeroPacket = 1;
                    usb_bus_ep0_send_data();
                    break;
                case SET_DESCRIPTOR:
#ifdef DEBUG0
                    Prints("set descriptor\n");                   
#endif
                    break;
                case SET_FEATURE:
#ifdef DEBUG0
                    Prints("set feature\n");                   
#endif
                    break;
                case SET_INTERFACE:
#ifdef DEBUG0
                    Prints("set interface\n");                   
#endif
                    break;
                default:
#ifdef DEBUG0
                    Prints("Error: undefined stander request\n");                   
#endif
                    break;
                }
                break;
            case 1:
#ifdef DEBUG0
                Prints("USB class output request:\n");                   
#endif 
                switch (bRequest) {
                case SET_IDLE:
#ifdef DEBUG0
                    Prints("set idle\n");
#endif
                    SendLength = 1;
                    NeedZeroPacket = 1;
                    /* return date via ep0 */
                    usb_bus_ep0_send_data();
                    break;
                default:
#ifdef DEBUG0
                    Prints("unknown request\n");                   
#endif
                    break;
                }
                break;
            case 2:
#ifdef DEBUG0
                Prints("USB vendor output request:\n");                   
#endif
                break;
            default:
#ifdef DEBUG0
                Prints("Error: undefined output request.\n");                   
#endif
                break;
            }
        }
    } else {    /* else D12_read_endpoint_last_status(0) & 0x20 */
        D12_read_endpoint_buffer(0, 16, buffer);
        D12_clear_buffer();
        dump_hex(buffer, 8);
    }
}

void usb_bus_isr_ep0_in()
{
#ifdef DEBUG0
    Prints("usb isr ep0 in\n");
#endif
    D12_read_endpoint_last_status(1);
    usb_bus_ep0_send_data();
}

void usb_bus_isr_ep1_out()
{
#ifdef DEBUG0
    Prints("usb core ep1 out\n");
#endif
}

void usb_bus_isr_ep1_in()
{
#ifdef DEBUG0
    Prints("usb core ep1 in\n");
#endif
    D12_read_endpoint_last_status(3);
    Ep1InIsBusy = 0;
}

void usb_bus_isr_ep2_out()
{
#ifdef DEBUG0
    Prints("usb core ep2 out\n");
#endif
}

void usb_bus_isr_ep2_in()
{
#ifdef DEBUG0
    Prints("usb core ep2 in\n");
#endif
}

void usb_bus_ep0_send_data(void)
{
    if (SendLength > DeviceDescriptor[7]) {
        D12_write_endpoint_buffer(1, DeviceDescriptor[7], pSendData);
        SendLength -= DeviceDescriptor[7];
        pSendData += DeviceDescriptor[7];
    } else {
        if (SendLength != 0) {
            D12_write_endpoint_buffer(1, SendLength, pSendData);
            SendLength = 0;
        } else {
            if (NeedZeroPacket == 1) {
                D12_write_endpoint_buffer(1, 0, pSendData);
                NeedZeroPacket = 0;
            }
        }
    }
}
