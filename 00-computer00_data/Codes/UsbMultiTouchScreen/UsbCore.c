/******************************************************************
   ������ֻ��ѧϰʹ�ã�δ���������ɣ��������������κ���;
			
        ��ӭ�����ҵ�USBר����http://group.ednchina.com/93/
        ��ӭ�����ҵ�blog��   http://www.ednchina.com/blog/computer00
                             http://computer00.21ic.org

        ��лPCB�����̡�������԰�� http://bbs.cepark.com/

UsbCore.c file

���ߣ�����ȦȦ
��������: 2008.06.29
�޸�����: 2012.01.26
�汾��V1.1
��Ȩ���У�����ؾ���
Copyright(C) ����ȦȦ 2008-2018
All rights reserved            
*******************************************************************/

#include "config.h"
#include "pdiusbd12.h"
#include "uart.h"
#include "usbcore.h"

idata uint8 Buffer[16];  //���˵�0�õĻ�����

//USB�豸����ĸ��ֶ�
uint8  bmRequestType;
uint8  bRequest;
uint16 wValue;
uint16 wIndex;
uint16 wLength;
//��ǰ�������ݵ�λ��
uint8 * pSendData;
//��Ҫ�������ݵĳ���
uint16 SendLength;
//�Ƿ���Ҫ����0���ݰ��ı�־����USB���ƴ�������ݹ����У�
//�����ص����ݰ��ֽ�������������ʱ������Ϊ���ݹ��̽�����
//��������ֽ�����ʵ����Ҫ���ص��ֽ���������ʵ�ʷ��ص��ֽ�
//���ָպ��Ƕ˵�0��С��������ʱ������Ҫ����һ��0���ȵ����ݰ�
//���������ݹ��̡������������һ����־������������Ƿ���Ҫ����
//һ��0���ȵ����ݰ���
uint8 NeedZeroPacket;

//��ǰ������ֵ��ֻ�������÷�0���ú�
uint8 ConfigValue;

//�˵�1�����Ƿ�æ�ı�־������������������ʱ���ñ�־Ϊ�档
//���������п���ʱ���ñ�־Ϊ�١�
uint8 Ep1InIsBusy;

//USB�豸�������Ķ���
code uint8 DeviceDescriptor[0x12]=  //�豸������Ϊ18�ֽ�
{
//bLength�ֶΡ��豸�������ĳ���Ϊ18(0x12)�ֽ�
 0x12,
 
//bDescriptorType�ֶΡ��豸�������ı��Ϊ0x01
 0x01,
 
//bcdUSB�ֶΡ��������ð汾ΪUSB1.1����0x0110��
//������С�˽ṹ�����Ե��ֽ����ȣ���0x10��0x01��
 0x10,
 0x01,
 
//bDeviceClass�ֶΡ����ǲ����豸�������ж����豸�࣬
//���ڽӿ��������ж����豸�࣬���Ը��ֶε�ֵΪ0��
 0x00,
 
//bDeviceSubClass�ֶΡ�bDeviceClass�ֶ�Ϊ0ʱ�����ֶ�ҲΪ0��
 0x00,
 
//bDeviceProtocol�ֶΡ�bDeviceClass�ֶ�Ϊ0ʱ�����ֶ�ҲΪ0��
 0x00,
 
//bMaxPacketSize0�ֶΡ�PDIUSBD12�Ķ˵�0��С��16�ֽڡ�
 0x10,
 
//idVender�ֶΡ�����ID�ţ���������ȡ0x8888������ʵ���á�
//ʵ�ʲ�Ʒ�������ʹ�ó���ID�ţ������USBЭ�����볧��ID�š�
//ע��С��ģʽ�����ֽ����ȡ�
 0x88,
 0x88,
 
//idProduct�ֶΡ���ƷID�ţ������ǵڶ���ĵڶ���ʵ�飬��������ȡ0x0102��
//ע��С��ģʽ�����ֽ�Ӧ����ǰ��
 0x02,
 0x01,
 
//bcdDevice�ֶΡ��������USB�������տ�ʼ�����ͽ���1.0��ɣ���0x0100��
//С��ģʽ�����ֽ����ȡ�
 0x00,
 0x01,
 
//iManufacturer�ֶΡ������ַ���������ֵ��Ϊ�˷������͹�����
//�ַ��������ʹ�1��ʼ�ɡ�
 0x01,

//iProduct�ֶΡ���Ʒ�ַ���������ֵ���ո�����1�������ȡ2�ɡ�
//ע���ַ�������ֵ��Ҫʹ����ͬ��ֵ��
 0x02,
 
//iSerialNumber�ֶΡ��豸�����к��ַ�������ֵ��
//����ȡ3�Ϳ����ˡ�
 0x03,

//bNumConfigurations�ֶΡ����豸�����е���������
//����ֻ��Ҫһ�����þ����ˣ���˸�ֵ����Ϊ1��
 0x01
};
//////////////////////////�豸���������//////////////////////////////

//WIN7��㴥���İ�Ƥ���ĵ����ص�ַ��
//http://download.microsoft.com/download/a/d/f/adf1347d-08dc-41a4-9084-623b1194d4b2/DigitizerDrvs_touch.docx

//USB�����������Ķ���
code uint8 ReportDescriptor[]=
{
 /***********************�����ǵ��㴥������������********************/
 //ÿ�п�ʼ�ĵ�һ�ֽ�Ϊ����Ŀ��ǰ׺��ǰ׺�ĸ�ʽΪ��
 //D7~D4��bTag��D3~D2��bType��D1~D0��bSize�����·ֱ��ÿ����Ŀע�͡�
 
 //����һ��ȫ�֣�bTypeΪ1����Ŀ��ѡ����;ҳΪ��ͨ����Generic Desktop Page(0x01)
 //�����һ�ֽ����ݣ�bSizeΪ1����������ֽ����Ͳ�ע���ˣ�
 //�Լ�����bSize���жϡ�
 0x05, 0x01, // USAGE_PAGE (Generic Desktop)
 
 //����һ���ֲ���bTypeΪ2����Ŀ��˵����������Ӧ�ü�����;�������
 0x09, 0x02, // USAGE (Mouse)
 
 //����һ������bTypeΪ0����Ŀ�������ϣ������������0x01��ʾ
 //�ü�����һ��Ӧ�ü��ϡ�����������ǰ������;ҳ����;����Ϊ
 //��ͨ�����õ���ꡣ
 0xa1, 0x01, // COLLECTION (Application)
 
 //ȫ����Ŀ�����嵥�㴥���ı���IDΪREPORTID_STOUCH(usbcore.h�ж���)
 0x85, REPORTID_STOUCH, //   REPORT_ID (Single Touch)
 
 //����һ���ֲ���Ŀ��˵����;Ϊָ�뼯��
 0x09, 0x01, //   USAGE (Pointer)
 
 //����һ������Ŀ�������ϣ������������0x00��ʾ�ü�����һ��
 //�������ϣ���;��ǰ��ľֲ���Ŀ����Ϊָ�뼯�ϡ�
 0xa1, 0x00, //   COLLECTION (Physical)
 
 //����һ��ȫ����Ŀ��ѡ����;ҳΪ������Button Page(0x09)��
 0x05, 0x09, //     USAGE_PAGE (Button)
 
 //����һ���ֲ���Ŀ��˵����;����СֵΪ1��ʵ��������������
 0x19, 0x01, //     USAGE_MINIMUM (Button 1)
 
 //����һ���ֲ���Ŀ��˵����;�����ֵΪ3��ʵ����������м���
 0x29, 0x03, //     USAGE_MAXIMUM (Button 3)
 
 //����һ��ȫ����Ŀ��˵�����ص����ݵ��߼�ֵ���������Ƿ��ص��������ֵ����
 //��СΪ0����Ϊ����������Bit����ʾһ�������������СΪ0�����Ϊ1��
 0x15, 0x00, //     LOGICAL_MINIMUM (0)
 
 //����һ��ȫ����Ŀ��˵���߼�ֵ���Ϊ1��
 0x25, 0x01, //     LOGICAL_MAXIMUM (1)
 
 //����һ��ȫ����Ŀ��˵�������������Ϊ������
 0x95, 0x03, //     REPORT_COUNT (3)
 
 //����һ��ȫ����Ŀ��˵��ÿ��������ĳ���Ϊ1��bit��
 0x75, 0x01, //     REPORT_SIZE (1)
 
 //����һ������Ŀ��˵����3������Ϊ1bit�������������ͳ���
 //��ǰ�������ȫ����Ŀ�����壩������Ϊ���룬
 //����Ϊ��Data,Var,Abs��Data��ʾ��Щ���ݿ��Ա䶯��Var��ʾ
 //��Щ�������Ƕ����ģ�ÿ�����ʾһ����˼��Abs��ʾ����ֵ��
 //��������Ľ�����ǣ���һ��������bit0��ʾ����1��������Ƿ��£�
 //�ڶ���������bit1��ʾ����2���Ҽ����Ƿ��£�������������bit2��ʾ
 //����3���м����Ƿ��¡�
 0x81, 0x02, //     INPUT (Data,Var,Abs)
 
 //����һ��ȫ����Ŀ��˵������������Ϊ1��
 0x95, 0x01, //     REPORT_COUNT (1)
 
 //����һ��ȫ����Ŀ��˵��ÿ��������ĳ���Ϊ5bit��
 0x75, 0x05, //     REPORT_SIZE (5)
 
 //����һ������Ŀ�������ã���ǰ������ȫ����Ŀ��֪������Ϊ5bit��
 //����Ϊ1������������Ϊ�����������ص�����һֱ��0����
 //���ֻ��Ϊ�˴���һ���ֽڣ�ǰ������3��bit��������һЩ����
 //���ѣ���������û��ʵ����;�ġ�
 0x81, 0x03, //     INPUT (Cnst,Var,Abs)
  
 //����һ��ȫ����Ŀ��ѡ����;ҳΪ��ͨ����Generic Desktop Page(0x01)
 0x05, 0x01, //     USAGE_PAGE (Generic Desktop)
 
 //����һ���ֲ���Ŀ��˵����;ΪX��
 0x09, 0x30, //     USAGE (X)
 
 //����һ���ֲ���Ŀ��˵����;ΪY��
 0x09, 0x31, //     USAGE (Y)

 //��������Ϊȫ����Ŀ��˵�����ص��߼���С�����ֵ��
 //���ﶨ��X��Y����߼���СֵΪ0��������ԭ��
 //X��Y����߼����ֵΪ4096������Ļ���·�������Ϊ��4096��4096����
 //����4096������һ�ֽڵķ�Χ��������Ҫ��2�ֽڵĸ�ʽ��ʾ���ֵ
 0x15, 0x00, //     LOGICAL_MINIMUM (0)
 0x26, 0x00, 0x10, //     LOGICAL_MAXIMUM (4096)

 //��������Ϊȫ����Ŀ��˵�����ص�������С�����ֵ��
 //���ﶨ��X��Y���������СֵΪ0��������ԭ��
 //X��Y����������ֵΪ4096������Ļ���·�������Ϊ��4096��4096����
 //����4096������һ�ֽڵķ�Χ��������Ҫ��2�ֽڵĸ�ʽ��ʾ���ֵ
 0x35, 0x00,    //Physical Minimum (0)
 0x46, 0x00, 0x10, //Physical Maximum(4096)

 //����һ��ȫ����Ŀ��˵��������ĳ���Ϊ16bit��
 0x75, 0x10, //     REPORT_SIZE (16)
 
 //����һ��ȫ����Ŀ��˵��������ĸ���Ϊ2����
 0x95, 0x02, //     REPORT_COUNT (2)
 
 //����һ������Ŀ����˵��������16bit���������������õģ�
 //����Ϊ��Data,Var,Abs��Data˵�������ǿ��Ա�ģ�Var˵��
 //��Щ�������Ƕ����ģ�Abs��ʾ��Щֵ�Ǿ���ֵ��
 0x81, 0x02, //     INPUT (Data,Var,Abs)
 
 //��������������Ŀ�����ر�ǰ��ļ����á�
 //���ǿ����������ϣ�����Ҫ�����Ρ�bSizeΪ0�����Ժ���û���ݡ�
 0xc0,       //   END_COLLECTION
 0xc0,       // END_COLLECTION
 /***********************���㴥���������***************************/

 /***********************�����Ƕ�㴥����������*********************/
 //����һ��ȫ����Ŀ��ѡ����;ҳΪDigitizers
 0x05, 0x0d,  // USAGE_PAGE (Digitizers)

 //����һ���ֲ���Ŀ��˵����������Ӧ�ü�����;����Touch Screen
 0x09, 0x04,  // USAGE (Touch Screen)

 //����һ������Ŀ�������ϣ������������0x01��ʾ�ü�����һ��Ӧ�ü��ϡ�
 //����������ǰ������;ҳ����;����ΪDigitizers��Touch Screen��
 0xa1, 0x01,  // COLLECTION (Application)
 
 //ȫ����Ŀ�������㴥���ı���IDΪREPORTID_MTOUCH(usbcore.h�ж���)
 0x85, REPORTID_MTOUCH,  //   REPORT_ID (Touch)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪDigitizersҳ�е�Finger
 0x09, 0x22,  //   USAGE (Finger)
 
 //����һ������Ŀ�������ϣ������������0x02��ʾ�ü�����һ���߼����ϡ�
 //����������ǰ������;ҳ����;����ΪDigitizers��Finger��
 0xa1, 0x02,  //     COLLECTION (Logical)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪDigitizersҳ�е�Tip Switch��
 //����������ʾ�������Ƿ�Ӵ�����Ļ������������ʾ�Ƿ�����ָ������
 0x09, 0x42,  //       USAGE (Tip Switch)
 
 //����һ��ȫ����Ŀ��˵�����ص����ݵ��߼���СֵΪ0��
 0x15, 0x00,  //       LOGICAL_MINIMUM (0)
 
 //����һ��ȫ����Ŀ��˵�����ص����ݵ��߼����ֵΪ1��
 0x25, 0x01,  //       LOGICAL_MAXIMUM (1)
 
 //����һ��ȫ����Ŀ��˵��ÿ��������ĳ���Ϊ1��bit��
 0x75, 0x01,  //       REPORT_SIZE (1)
 
 //����һ��ȫ����Ŀ��˵�������������Ϊ1����
 0x95, 0x01,  //       REPORT_COUNT (1)
 
 //����һ������Ŀ��˵����1������Ϊ1bit���������������롣
 //ͨ��ǰ����������ǿ���֪�������bit��������ʾ�Ƿ����ģ�
 //0��ʾû�д�����1��ʾ������
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪDigitizersҳ�е�In Range��
 //������ʾ�����������Ƿ���Ч��
 0x09, 0x32,  //       USAGE (In Range)
 
 //����һ������Ŀ��˵����1������Ϊ1bit���������������롣
 //ͨ��ǰ����������ǿ���֪�������bit��������ʾ���������Ƿ���Ч�ģ�
 //0��ʾ��Ч��1��ʾ��Ч��
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪDigitizersҳ�е�Touch Valid��
 //������ʾ�����Ƿ���Ч��
 0x09, 0x47,  //       USAGE (Touch Valid)
 
 //����һ������Ŀ��˵����1������Ϊ1bit���������������롣
 //ͨ��ǰ����������ǿ���֪�������bit��������ʾ�����Ƿ���Ч�ģ�
 //0��ʾ��Ч��1��ʾ��Ч��
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 
 //����һ��ȫ����Ŀ��˵�������������Ϊ5����
 0x95, 0x05,  //       REPORT_COUNT (5)
 
 //����һ������Ŀ�������ã���ǰ������ȫ����Ŀ��֪������Ϊ1bit��
 //����Ϊ5������������Ϊ�����������ص�����һֱ��0����
 //���ֻ��Ϊ�˴���һ���ֽڣ�ǰ������3��bit��������һЩ����
 //���ѣ���������û��ʵ����;�ġ�
 0x81, 0x03,  //       INPUT (Cnst,Ary,Abs)
 
 //����һ��ȫ����Ŀ��˵�����ص����ݵ��߼����ֵΪMAX_TOUCH_POINT��
 0x25, MAX_TOUCH_POINT,  // LOGICAL_MAXIMUM (MAX_TOUCH_POINT)
 
 //����һ��ȫ����Ŀ��˵��ÿ��������ĳ���Ϊ8��bit��
 0x75, 0x08,  //       REPORT_SIZE (8)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪDigitizersҳ�е�Contact Identifier��
 //������ʾ������ID�š�
 0x09, 0x51,  //       USAGE (Contact Identifier)
 
 //����һ��ȫ����Ŀ��˵�������������Ϊ1����
 0x95, 0x01,  //       REPORT_COUNT (1)
 
 //����һ������Ŀ��˵����1������Ϊ8bit���������������롣
 //ͨ��ǰ����������ǿ���֪�������8bit��������ʾ����ID�ŵģ�
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 
 //����һ��ȫ����Ŀ��ѡ����;ҳΪGeneric Desktop
 0x05, 0x01,  //       USAGE_PAGE (Generic Desktop)
 
 //����һ��ȫ����Ŀ��˵�����ص����ݵ��߼����ֵΪ4096��
 0x26, 0x00, 0x10,  //       LOGICAL_MAXIMUM (4096)
 
 //����һ��ȫ����Ŀ��˵��ÿ��������ĳ���Ϊ16��bit��
 0x75, 0x10,  //       REPORT_SIZE (16)
 
 //����һ��ȫ����Ŀ��˵��������λ��ָ��Ϊ0
 0x55, 0x00,  //       UNIT_EXPONENT (0)
 
 //����һ��ȫ����Ŀ��˵��û��������λ
 0x65, 0x00,  //       UNIT (None)
 
 //����һ���ֲ���Ŀ��ѡ����;Ϊͨ�������е�X��
 0x09, 0x30,  //       USAGE (X)
 
 //����һ��ȫ����Ŀ��˵��������СֵΪ0�����������ò���������С��
 //���ֵ�����Խ�������С�����ֵ������0��������λ�������ޡ�
 0x35, 0x00,  //       PHYSICAL_MINIMUM (0)
 
 //����һ��ȫ����Ŀ��˵���������ֵΪ0��
 0x46, 0x00, 0x00,  //       PHYSICAL_MAXIMUM (0)
 
 //����һ������Ŀ����˵�����16bit���������������õģ�
 //����Ϊ��Data,Var,Abs��Data˵�������ǿ��Ա�ģ�Var˵��
 //��Щ�������Ƕ����ģ�Abs��ʾ��Щֵ�Ǿ���ֵ������ʵ����
 //����Ҫ���ص�X�������ݡ�
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 
 //����һ���ֲ���Ŀ��ѡ����;Ϊͨ�������е�Y��
 0x09, 0x31,  //       USAGE (Y)
 
 //����һ��ȫ����Ŀ��˵���������ֵΪ0��
 0x46, 0x00, 0x00,  //       PHYSICAL_MAXIMUM (0)
 
 //����һ������Ŀ����˵�����16bit���������������õģ�
 //����Ϊ��Data,Var,Abs��Data˵�������ǿ��Ա�ģ�Var˵��
 //��Щ�������Ƕ����ģ�Abs��ʾ��Щֵ�Ǿ���ֵ������ʵ����
 //����Ҫ���ص�Y�������ݡ�
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 
 //����һ������Ŀ���ر�ǰ�濪���߼�����
 0xc0,        //    END_COLLECTION
 
 //������һֱ�������END_COLLECTION������������һ���߼����ϵ��ظ���
 //����Ͳ��ٸ���ע���ˣ���������з�����
 0xa1, 0x02,  //    COLLECTION (Logical)
 0x05, 0x0d,  //     USAGE_PAGE (Digitizers)
 0x09, 0x42,  //       USAGE (Tip Switch)
 0x15, 0x00,  //       LOGICAL_MINIMUM (0)
 0x25, 0x01,  //       LOGICAL_MAXIMUM (1)
 0x75, 0x01,  //       REPORT_SIZE (1)
 0x95, 0x01,  //       REPORT_COUNT (1)
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 0x09, 0x32,  //       USAGE (In Range)
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 0x09, 0x47,  //       USAGE (Touch Valid)
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 0x95, 0x05,  //       REPORT_COUNT (5)
 0x81, 0x03,  //       INPUT (Cnst,Ary,Abs)
 0x25, MAX_TOUCH_POINT,  // LOGICAL_MAXIMUM (MAX_TOUCH_POINT)
 0x75, 0x08,  //       REPORT_SIZE (8)
 0x09, 0x51,  //       USAGE ( Contact Identifier)
 0x95, 0x01,  //       REPORT_COUNT (1)
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 0x05, 0x01,  //       USAGE_PAGE (Generic Desk..
 0x26, 0x00, 0x10,  //       LOGICAL_MAXIMUM (4096)
 0x75, 0x10,  //       REPORT_SIZE (16)
 0x55, 0x00,  //       UNIT_EXPONENT (0)
 0x65, 0x00,  //       UNIT (None)
 0x09, 0x30,  //       USAGE (X)
 0x35, 0x00,  //       PHYSICAL_MINIMUM (0)
 0x46, 0x00, 0x00,  //       PHYSICAL_MAXIMUM (0)
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 0x09, 0x31,  //       USAGE (Y)
 0x46, 0x00, 0x00,  //       PHYSICAL_MAXIMUM (0)
 0x81, 0x02,  //       INPUT (Data,Var,Abs)
 0xc0,        //    END_COLLECTION
 
 //����һ��ȫ����Ŀ��ѡ����;ҳΪDigitizers
 0x05, 0x0d,  //    USAGE_PAGE (Digitizers)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪContact Count������ǰ�ж��ٵ㴥��
 0x09, 0x54,  //    USAGE (Contact Count)
 
 //����һ��ȫ����Ŀ��˵�������������Ϊ1����
 0x95, 0x01,  //    REPORT_COUNT (1)
 
 //����һ��ȫ����Ŀ��˵��ÿ��������ĳ���Ϊ8��bit��
 0x75, 0x08,  //    REPORT_SIZE (8)
 
 //����һ��ȫ����Ŀ��˵�����ص����ݵ��߼���СֵΪ0��
 0x15, 0x00,  //    LOGICAL_MINIMUM (0)
 
 //����һ��ȫ����Ŀ��˵�����ص����ݵ��߼����ֵΪMAX_TOUCH_POINT��
 0x25, MAX_TOUCH_POINT,  //    LOGICAL_MAXIMUM (MAX_TOUCH_POINT)
 
 //����һ������Ŀ��˵����1������Ϊ8bit���������������롣
 //ͨ��ǰ����������ǿ���֪�������8bit��������ʾ��ǰ�м����㴥����
 //0��ʾû�д�����1��ʾ����1���㴥����2��ʾ2���㴥���ȵȡ�
 0x81, 0x02,  //    INPUT (Data,Var,Abs)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪContact Count Maximum��
 //��ʾ���֧�ֶ��ٵ�ͬʱ������
 0x09, 0x55,  //    USAGE(Contact Count Maximum)
 
 //����һ������Ŀ��˵����1������Ϊ8bit���������������Ա��档
 //ͨ��ǰ����������ǿ���֪�������8bit��������ʾ���֧�ּ����㴥����
 0xb1, 0x02,  //    FEATURE (Data,Var,Abs)
 
 //����һ������Ŀ���ؼ���
 0xc0,        // END_COLLECTION
 /***********************��㴥���������***************************/
 
 /*****************�����������豸�����Ա���������*******************/
 //����һ��ȫ����Ŀ��ѡ����;ҳΪDigitizers
 0x05, 0x0d,  //    USAGE_PAGE (Digitizers)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪDevice Configuration
 0x09, 0x0E,  // USAGE (Device Configuration)
 
 //����һ������Ŀ�������ϣ������������0x01��ʾ�ü�����һ��Ӧ�ü��ϡ�
 //����������ǰ������;ҳ����;����ΪDigitizers��Device Configuration��
 0xa1, 0x01,  // COLLECTION (Application)
 
 //ȫ����Ŀ���������Ա���IDΪREPORTID_FEATURE(usbcore.h�ж���)
 0x85, REPORTID_FEATURE,  //   REPORT_ID (Configuration)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪDevice Settings
 0x09, 0x23,  //   USAGE (Device Settings)
 
 //����һ������Ŀ�������ϣ������������0x02��ʾ�ü�����һ���߼����ϡ�
 0xa1, 0x02,  //   COLLECTION (logical)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪDevice Mode
 0x09, 0x52,  //    USAGE (Device Mode)
 
 //����һ���ֲ���Ŀ��ѡ����;ΪDevice Identifier
 0x09, 0x53,  //    USAGE (Device Identifier)
 
 //����һ��ȫ����Ŀ��˵�����ص����ݵ��߼���СֵΪ0��
 0x15, 0x00,  //    LOGICAL_MINIMUM (0)
 
 //����һ��ȫ����Ŀ��˵�����ص����ݵ��߼����ֵΪ10��
 0x25, 0x0a,  //    LOGICAL_MAXIMUM (10)
 
 //����һ��ȫ����Ŀ��˵��ÿ��������ĳ���Ϊ8��bit��
 0x75, 0x08,  //    REPORT_SIZE (8)
 
 //����һ��ȫ����Ŀ��˵�������������Ϊ2����
 0x95, 0x02,  //    REPORT_COUNT (2)
 
 //����һ������Ŀ��˵����2������Ϊ8bit���������������Ա��档
 //ͨ��ǰ����������ǿ���֪������2��8bit�ֱ�������ʾDevice Mode��
 //Device Identifier��
 0xb1, 0x02,  //   FEATURE (Data,Var,Abs)
 0xc0,        //   END_COLLECTION
 0xc0        // END_COLLECTION
 /***********************���Ա����������***************************/
};
//ͨ������ı����������Ķ��壬����֪���ܹ��������������档
/////////////////////////////////////////////////////////////////////
//��һ������Ϊ���㴥���ı��棬��һ�ֽ�Ϊ����ID��ֵΪREPORTID_STOUCH��
//�ڶ��ֽڵĵ�3λ������ʾ�����Ƿ��µģ���5λΪ����0�����á�
//���������ֽڱ�ʾX��ľ������꣬���塢���ֽڱ�ʾY��ľ������ꡣ
/////////////////////////////////////////////////////////////////////
//�ڶ�������Ϊ��㴥���ı��棬��һ�ֽ�Ϊ����ID��ֵΪREPORTID_MTOUCH��
//�ڶ��ֽڵĵ�3λ������ʾ��һ��״̬�ģ���5λΪ����0�����á�
//�����ֽڱ�ʾ��һ�㴥����ID�š�
//���ġ����ֽڱ�ʾ��һ��X��ľ������꣬���������ֽڱ�ʾ��һ��Y��ľ������ꡣ
//�ڰ��ֽڵĵ�3λ������ʾ�ڶ���״̬�ģ���5λΪ����0�����á�
//�ھ��ֽڱ�ʾ�ڶ��㴥����ID�š�
//��ʮ��ʮһ�ֽڱ�ʾ�ڶ���X��ľ������꣬��ʮ����ʮ���ڱ�ʾ�ڶ���Y��ľ������ꡣ
//��ʮ���ֽڱ�ʾ��ǰ�ж��ٵ㴥����
//���⻹��һ�����ֽڵ����Ա��棬��һ�ֽ�Ϊ����ID��ֵΪREPORTID_MTOUCH��
//�ڶ��ֽ�Ϊ�豸֧�ֵ������������������ͨ��GET_REPORT��������ȡ����
/////////////////////////////////////////////////////////////////////
//����������Ϊ���Ա��棬��һ�ֽ�Ϊ����ID��ֵΪREPORTID_FEATURE��
//�ڶ��ֽڱ�ʾDevice Mode�������ֽڱ�ʾDevice Identifier��
/////////////////////////////////////////////////////////////////////
///////////////////////////�������������////////////////////////////

//���֧�ֵĵ����ı��棬����̶�ΪMAX_TOUCH_POINT��
//�����ֻ��ͬʱ֧��MAX_TOUCH_POINT�㴥��
code uint8 MaxContactCountReport[2] =
{
 REPORTID_MTOUCH, //����ID
 MAX_TOUCH_POINT  //���ͬʱ֧��MAX_TOUCH_POINT�㴥��
};

//USB�������������ϵĶ���
//�����������ܳ���Ϊ9+9+9+7�ֽ�
code uint8 ConfigurationDescriptor[9+9+9+7]=
{
 /***************����������***********************/
 //bLength�ֶΡ������������ĳ���Ϊ9�ֽڡ�
 0x09,
 
 //bDescriptorType�ֶΡ��������������Ϊ0x02��
 0x02,
 
 //wTotalLength�ֶΡ��������������ϵ��ܳ��ȣ�
 //���������������������ӿ��������������������˵��������ȡ�
 sizeof(ConfigurationDescriptor)&0xFF, //���ֽ�
 (sizeof(ConfigurationDescriptor)>>8)&0xFF, //���ֽ�
 
 //bNumInterfaces�ֶΡ������ð����Ľӿ�����ֻ��һ���ӿڡ�
 0x01,
 
 //bConfiguration�ֶΡ������õ�ֵΪ1��
 0x01,
 
 //iConfigurationz�ֶΣ������õ��ַ�������������û�У�Ϊ0��
 0x00,
 
 //bmAttributes�ֶΣ����豸�����ԡ��������ǵİ��������߹���ģ�
 //�������ǲ���ʵ��Զ�̻��ѵĹ��ܣ����Ը��ֶε�ֵΪ0x80��
 0x80,
 
 //bMaxPower�ֶΣ����豸��Ҫ�������������������ǵİ���
 //��Ҫ�ĵ�������100mA�����������������Ϊ100mA������ÿ��λ
 //����Ϊ2mA��������������Ϊ50(0x32)��
 0x32,
 
 /*******************�ӿ�������*********************/
 //bLength�ֶΡ��ӿ��������ĳ���Ϊ9�ֽڡ�
 0x09,
 
 //bDescriptorType�ֶΡ��ӿ��������ı��Ϊ0x04��
 0x04,
 
 //bInterfaceNumber�ֶΡ��ýӿڵı�ţ���һ���ӿڣ����Ϊ0��
 0x00,
 
 //bAlternateSetting�ֶΡ��ýӿڵı��ñ�ţ�Ϊ0��
 0x00,
 
 //bNumEndpoints�ֶΡ���0�˵����Ŀ������USB������ֻ��Ҫһ��
 //�ж�����˵㣬��˸�ֵΪ1��
 0x01,
 
 //bInterfaceClass�ֶΡ��ýӿ���ʹ�õ��ࡣUSB��������HID�࣬
 //HID��ı���Ϊ0x03��
 0x03,
 
 //bInterfaceSubClass�ֶΡ��ýӿ���ʹ�õ����ࡣ��HID1.1Э���У�
 //ֻ�涨��һ�����ࣺ֧��BIOS�������������ࡣ
 //USB���̡�������ڸ����࣬�������Ϊ0x01��
 0x00,
 
 //bInterfaceProtocol�ֶΡ��������Ϊ֧���������������࣬
 //��Э���ѡ�����ͼ��̡����̴���Ϊ0x01��������Ϊ0x02��
 0x00,
 
 //iConfiguration�ֶΡ��ýӿڵ��ַ�������ֵ������û�У�Ϊ0��
 0x00,
 
 /******************HID������************************/
 //bLength�ֶΡ���HID��������ֻ��һ���¼������������Գ���Ϊ9�ֽڡ�
 0x09,
 
 //bDescriptorType�ֶΡ�HID�������ı��Ϊ0x21��
 0x21,
 
 //bcdHID�ֶΡ���Э��ʹ�õ�HID1.1Э�顣ע����ֽ����ȡ�
 0x10,
 0x01,
 
 //bCountyCode�ֶΡ��豸���õĹ��Ҵ��룬����ѡ��Ϊ����������0x21��
 0x21,
 
 //bNumDescriptors�ֶΡ��¼�����������Ŀ������ֻ��һ��������������
 0x01,
 
 //bDescritporType�ֶΡ��¼������������ͣ�Ϊ���������������Ϊ0x22��
 0x22,
 
 //bDescriptorLength�ֶΡ��¼��������ĳ��ȡ��¼�������Ϊ������������
 sizeof(ReportDescriptor)&0xFF,
 (sizeof(ReportDescriptor)>>8)&0xFF,
 
 /**********************�˵�������***********************/
 //bLength�ֶΡ��˵�����������Ϊ7�ֽڡ�
 0x07,
 
 //bDescriptorType�ֶΡ��˵����������Ϊ0x05��
 0x05,
 
 //bEndpointAddress�ֶΡ��˵�ĵ�ַ������ʹ��D12������˵�1��
 //D7λ��ʾ���ݷ�������˵�D7Ϊ1����������˵�1�ĵ�ַΪ0x81��
 0x81,
 
 //bmAttributes�ֶΡ�D1~D0Ϊ�˵㴫������ѡ��
 //�ö˵�Ϊ�ж϶˵㡣�ж϶˵�ı��Ϊ3������λ����Ϊ0��
 0x03,
 
 //wMaxPacketSize�ֶΡ��ö˵�����������˵�1��������Ϊ16�ֽڡ�
 //ע����ֽ����ȡ�
 0x10,
 0x00,
 
 //bInterval�ֶΡ��˵��ѯ��ʱ�䣬��������Ϊ10��֡ʱ�䣬��10ms��
 0x0a
};
////////////////////////�����������������//////////////////////////

/************************����ID�Ķ���********************/
code uint8 LanguageId[4]=
{
 0x04, //���������ĳ���
 0x03, //�ַ���������
 //0x0409Ϊ��ʽӢ���ID
 0x09,
 0x04
};
////////////////////////����ID���//////////////////////////////////

/**************************************************/
/*********        ��ת���������         **********/
/********* Http://computer00.21ic.org    **********/
/*********        ����: ����ȦȦ         **********/
/*********         ��ӭ���ʹ��          **********/
/*********    ��Ȩ���У�������д������   **********/
/**************************************************/

//http://computer00.21ic.org/user1/2198/archives/2007/42769.html
//�ַ���������ȦȦ��USBר�� Http://group.ednchina.com/93/����Unicode����
//8λС�˸�ʽ
code uint8 ManufacturerStringDescriptor[82]={
82,         //���������ĳ���Ϊ82�ֽ�
0x03,       //�ַ��������������ͱ���Ϊ0x03
0x35, 0x75, //��
0x11, 0x81, //��
0x08, 0x57, //Ȧ
0x08, 0x57, //Ȧ
0x84, 0x76, //��
0x55, 0x00, //U
0x53, 0x00, //S
0x42, 0x00, //B
0x13, 0x4e, //ר
0x3a, 0x53, //��
0x20, 0x00, // 
0x48, 0x00, //H
0x74, 0x00, //t
0x74, 0x00, //t
0x70, 0x00, //p
0x3a, 0x00, //:
0x2f, 0x00, ///
0x2f, 0x00, ///
0x67, 0x00, //g
0x72, 0x00, //r
0x6f, 0x00, //o
0x75, 0x00, //u
0x70, 0x00, //p
0x2e, 0x00, //.
0x65, 0x00, //e
0x64, 0x00, //d
0x6e, 0x00, //n
0x63, 0x00, //c
0x68, 0x00, //h
0x69, 0x00, //i
0x6e, 0x00, //n
0x61, 0x00, //a
0x2e, 0x00, //.
0x63, 0x00, //c
0x6f, 0x00, //o
0x6d, 0x00, //m
0x2f, 0x00, ///
0x39, 0x00, //9
0x33, 0x00, //3
0x2f, 0x00  ///
};
/////////////////////////�����ַ�������/////////////////////////////

//�ַ�������ȦȦ������USB��֮USB��㴥�����豸����Unicode����
//8λС�˸�ʽ
code uint8 ProductStringDescriptor[44]={
44,         //���������ĳ���Ϊ44�ֽ�
0x03,       //�ַ��������������ͱ���Ϊ0x03
0x0a, 0x30, //��
0x08, 0x57, //Ȧ
0x08, 0x57, //Ȧ
0x59, 0x65, //��
0x60, 0x4f, //��
0xa9, 0x73, //��
0x55, 0x00, //U
0x53, 0x00, //S
0x42, 0x00, //B
0x0b, 0x30, //��
0x4b, 0x4e, //֮
0x55, 0x00, //U
0x53, 0x00, //S
0x42, 0x00, //B
0x1a, 0x59, //��
0xb9, 0x70, //��
0xe6, 0x89, //��
0x78, 0x64, //��
0x4f, 0x5c, //��
0xbe, 0x8b, //��
0x07, 0x59  //��
};
////////////////////////��Ʒ�ַ�������////////////////////////////

//�ַ�����2012-01-25����Unicode����
//8λС�˸�ʽ
code uint8 SerialNumberStringDescriptor[22]={
22,         //���������ĳ���Ϊ22�ֽ�
0x03,       //�ַ��������������ͱ���Ϊ0x03
0x32, 0x00, //2
0x30, 0x00, //0
0x31, 0x00, //1
0x32, 0x00, //2
0x2d, 0x00, //-
0x30, 0x00, //0
0x31, 0x00, //1
0x2d, 0x00, //-
0x32, 0x00, //2
0x35, 0x00  //5
};
//////////////////////��Ʒ���к��ַ�������/////////////////////////

/********************************************************************
�������ܣ���ʱx���뺯����
��ڲ�����x����ʱ�ĺ�������
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void DelayXms(uint16 x)                
{
 uint16 i;
 uint16 j;
 for(i=0;i<x;i++)
 for(j=0;j<227;j++); //ѭ�������ʱ
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ�USB�Ͽ����Ӻ�����
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbDisconnect(void)
{
#ifdef DEBUG0
 Prints("�Ͽ�USB���ӡ�\r\n");
#endif
 D12WriteCommand(D12_SET_MODE);  //д����ģʽ����
 D12WriteByte(0x06); //����ģʽ�ĵ�һ�ֽ�
 D12WriteByte(0x47); //����ģʽ�ĵڶ��ֽ�
 DelayXms(1000);  //�ӳ�1��
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ�USB���Ӻ�����
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbConnect(void)
{
#ifdef DEBUG0
 Prints("����USB��\r\n");
#endif
 D12WriteCommand(D12_SET_MODE);  //д����ģʽ����
 D12WriteByte(0x16); //����ģʽ�ĵ�һ�ֽ�
 D12WriteByte(0x47); //����ģʽ�ĵڶ��ֽ�
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ����߹����жϴ���������
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbBusSuspend(void)
{
#ifdef DEBUG0
 Prints("USB���߹���\r\n");
#endif
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ����߸�λ�жϴ���������
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbBusReset(void)
{
#ifdef DEBUG0
 Prints("USB���߸�λ��\r\n");
#endif
 Ep1InIsBusy=0; //��λ��˵�1���뻺�������С�
 TouchMode = MOUSE_MODE; //Ĭ��Ϊ���ģʽ
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ�����pData��SendLength�����ݷ��͵��˵�0�ĺ�����
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbEp0SendData(void)
{
 //������д���˵���ȥ׼������
 //д֮ǰҪ���ж�һ����Ҫ���͵������Ƿ�ȶ˵�0
 //��󳤶ȴ���������˵��С����һ��ֻ�ܷ���
 //�����������ݡ��˵�0����������DeviceDescriptor[7]
 if(SendLength>DeviceDescriptor[7])
 {
  //���������ȷ���
  D12WriteEndpointBuffer(1,DeviceDescriptor[7],pSendData);
  //���ͺ�ʣ���ֽ�������������
  SendLength-=DeviceDescriptor[7];
  //����һ�κ�ָ��λ��Ҫ����
  pSendData+= DeviceDescriptor[7];
 }
 else
 {
  if(SendLength!=0)
  {
   //����������������ֱ�ӷ���
   D12WriteEndpointBuffer(1,SendLength,pSendData);
   //������Ϻ�SendLength���ȱ�Ϊ0
   SendLength=0;
  }
  else //���Ҫ���͵����ݰ�����Ϊ0
  {
   if(NeedZeroPacket==1) //�����Ҫ����0��������
   {
    D12WriteEndpointBuffer(1,0,pSendData); //����0�������ݰ�
    NeedZeroPacket=0; //����Ҫ����0�������ݰ���־
   }
  }
 }
}
////////////////////////End of function//////////////////////////////

uint8 TouchMode = MOUSE_MODE; //Ĭ��Ϊ���ģʽ
/********************************************************************
�������ܣ�USB�˵�0���ݹ������ݴ���������
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ú�����������0�˵���ƴ�������ݻ�״̬���̡�
********************************************************************/
void UsbEp0DataOut(void)
{
 //���ڱ�������ֻ��һ������������ݣ����Կ���ֱ��ʹ��if����ж�������
 //����кܶ�����Ļ���ʹ��if���Ͳ������ˣ���Ӧ��ʹ��switch���ɢת��
 if((bmRequestType == 0x21) && //��������
    (bRequest == SET_REPORT) && //������������SET_REPORT
    ((wValue & 0xFF00) == (0x03 << 8)) && //�ұ�������Ϊ3(Feature)
     ((wValue & 0xFF) == REPORTID_FEATURE) && //�ұ���IDΪREPORTID_FEATURE
     (wIndex == 0) && (wLength == 3)) //��wIndexΪ0��wLengthΪ3
 {
  uint8 ReportBuf[3];
  uint8 Length;
  //���ض˵�0�е�����
  Length=D12ReadEndpointBuffer(0,3,ReportBuf);
  D12ClearBuffer(); //���������
  #ifdef DEBUG0
   Prints("�������Ա���(Device Mode��Device Identifier).\r\n");
  #endif
  
  if(Length == wLength) //�����ȡ���ݵĳ�����ȷ
  {
   if(ReportBuf[0] == REPORTID_FEATURE) //����ID��ȷ
   {
    TouchMode = ReportBuf[1];
    switch(TouchMode)
    {
     case MOUSE_MODE:
     #ifdef DEBUG0
      Prints("���ģʽ.\r\n");
     #endif
     break;
     
     case SINGLE_TOUCH_MODE:
     #ifdef DEBUG0
      Prints("���㴥��ģʽ.\r\n");
     #endif
     break;
     
     case MULTI_TOUCH_MODE:
     #ifdef DEBUG0
      Prints("��㴥��ģʽ.\r\n");
     #endif
     break;
     
     default:
     #ifdef DEBUG0
      Prints("δ֪ģʽ.\r\n");
     #endif
     break;
    }
   }
  }
  //����0���ȵ�״̬���ݰ���
  D12WriteEndpointBuffer(1,0,0);
 }
 else  //������������ݹ��̻���״̬����
 {
  D12ReadEndpointBuffer(0,16,Buffer);
  D12ClearBuffer();
 }
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ��˵�0����жϴ���������
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbEp0Out(void)
{
#ifdef DEBUG0
 Prints("USB�˵�0����жϡ�\r\n");
#endif
 //��ȡ�˵�0��������״̬���ò�������жϱ�־
 //���жϵ�5λ�Ƿ�Ϊ1������ǣ���˵���ǽ�����
 if(D12ReadEndpointLastStatus(0)&0x20)
 {
  D12ReadEndpointBuffer(0,16,Buffer); //��������������
  D12AcknowledgeSetup(); //Ӧ������
  D12ClearBuffer(); //�建����
  //������������豸����ĸ��ֶ���
  bmRequestType=Buffer[0];
  bRequest=Buffer[1];
  wValue=Buffer[2]+(((uint16)Buffer[3])<<8);
  wIndex=Buffer[4]+(((uint16)Buffer[5])<<8);
  wLength=Buffer[6]+(((uint16)Buffer[7])<<8);
  //����Ĵ����жϾ�������󣬲����ݲ�ͬ�����������ز���
  //���D7λΪ1����˵������������
  if((bmRequestType&0x80)==0x80)
  {
   //����bmRequestType��D6~5λɢת��D6~5λ��ʾ���������
   //0Ϊ��׼����1Ϊ������2Ϊ��������
   switch((bmRequestType>>5)&0x03)
   {
    case 0:  //��׼����
     #ifdef DEBUG0
      Prints("USB��׼��������");
     #endif
     //USBЭ�鶨���˼�����׼������������ʵ����Щ��׼���󼴿�
     //����Ĵ�����bRequest�У��Բ�ͬ������������ɢת
     //��ʵ�ϣ����ǻ���Ҫ�Խ����߽���ɢת����Ϊ��ͬ�����������
     //�ǲ�һ���ġ���������bmRequestType��D4~D0λ�ж��塣
     //��������Ϊ�˼򻯲�������Щ��ʡ���˶Խ����ߵ��жϡ�
     //�����ȡ������������ֻ����������������������
     switch(bRequest)
     {
      case GET_CONFIGURATION: //��ȡ����
       #ifdef DEBUG0
        Prints("��ȡ���á�\r\n");
       #endif
      break;
      
      case GET_DESCRIPTOR:  //��ȡ������
       #ifdef DEBUG0
        Prints("��ȡ����������");
       #endif
       //�����������ͽ���ɢת������ȫ���豸��
       //��׼����ֻ֧�ַ��͵��豸���豸�����á��ַ�������������
       switch((wValue>>8)&0xFF)
        {
         case DEVICE_DESCRIPTOR: //�豸������
          #ifdef DEBUG0
           Prints("�豸��������\r\n");
          #endif
          pSendData=DeviceDescriptor;  //��Ҫ���͵�����
          //�ж�������ֽ����Ƿ��ʵ����Ҫ���͵��ֽ�����
          //������������豸��������������ݳ��Ⱦ���
          //DeviceDescriptor[0]���������ı�ʵ�ʵĳ���
          //��ôֻ����ʵ�ʳ��ȵ�����
          if(wLength>DeviceDescriptor[0])
          {
           SendLength=DeviceDescriptor[0];
           if(SendLength%DeviceDescriptor[7]==0) //���Ҹպ������������ݰ�ʱ
           {
            NeedZeroPacket=1; //��Ҫ����0���ȵ����ݰ�
           }
          }
          else
          {
           SendLength=wLength;
          }
          //������ͨ��EP0����
          UsbEp0SendData();
         break;
         
         case CONFIGURATION_DESCRIPTOR:  //����������
          #ifdef DEBUG0
           Prints("������������\r\n");
          #endif
          pSendData=ConfigurationDescriptor; //��Ҫ���͵�����Ϊ����������
          //�ж�������ֽ����Ƿ��ʵ����Ҫ���͵��ֽ�����
          //������������������������ϣ�������ݳ��Ⱦ���
          //ConfigurationDescriptor[3]*256+ConfigurationDescriptor[2]��
          //�������ı�ʵ�ʵĳ�����ôֻ����ʵ�ʳ��ȵ�����
          SendLength=ConfigurationDescriptor[3];
          SendLength=SendLength*256+ConfigurationDescriptor[2];
          if(wLength>SendLength)
          {
           if(SendLength%DeviceDescriptor[7]==0) //���Ҹպ������������ݰ�ʱ
           {
            NeedZeroPacket=1; //��Ҫ����0���ȵ����ݰ�
           }
          }
          else
          {
           SendLength=wLength;
          }
          //������ͨ��EP0����
          UsbEp0SendData();
         break;
         
         case STRING_DESCRIPTOR:  //�ַ���������
          #ifdef DEBUG0
           Prints("�ַ���������");
          #endif
          switch(wValue&0xFF)  //����wValue�ĵ��ֽڣ�����ֵ��ɢת
          {
           case 0:  //��ȡ����ID
            #ifdef DEBUG0
             Prints("(����ID)��\r\n");
            #endif
            pSendData=LanguageId;
            SendLength=LanguageId[0];
           break;
           
           case 1:  //�����ַ���������ֵΪ1����������Ϊ�����ַ���
           #ifdef DEBUG0
             Prints("(��������)��\r\n");
            #endif
            pSendData=ManufacturerStringDescriptor;
            SendLength=ManufacturerStringDescriptor[0];
           break;
           
           case 2:  //��Ʒ�ַ���������ֵΪ2����������Ϊ��Ʒ�ַ���
           #ifdef DEBUG0
             Prints("(��Ʒ����)��\r\n");
            #endif
            pSendData=ProductStringDescriptor;
            SendLength=ProductStringDescriptor[0];
           break;
           
           case 3:  //��Ʒ���кŵ�����ֵΪ3����������Ϊ���к�
           #ifdef DEBUG0
             Prints("(��Ʒ���к�)��\r\n");
            #endif
            pSendData=SerialNumberStringDescriptor;
            SendLength=SerialNumberStringDescriptor[0];
           break;
           
           default :
            #ifdef DEBUG0
             Prints("(δ֪������ֵ)��\r\n");
            #endif
            //����δ֪����ֵ�����󣬷���һ��0���ȵİ�
            SendLength=0;
            NeedZeroPacket=1;
           break;
          }
          //�ж�������ֽ����Ƿ��ʵ����Ҫ���͵��ֽ�����
          //�������ı�ʵ�ʵĳ�����ôֻ����ʵ�ʳ��ȵ�����
          if(wLength>SendLength)
          {
           if(SendLength%DeviceDescriptor[7]==0) //���Ҹպ������������ݰ�ʱ
           {
            NeedZeroPacket=1; //��Ҫ����0���ȵ����ݰ�
           }
          }
          else
          {
           SendLength=wLength;
          }
          //������ͨ��EP0����
          UsbEp0SendData();         
         break;

         case REPORT_DESCRIPTOR:  //����������
          #ifdef DEBUG0
           Prints("������������\r\n");
          #endif
          pSendData=ReportDescriptor; //��Ҫ���͵�����Ϊ����������
          SendLength=sizeof(ReportDescriptor); //��Ҫ���ص����ݳ���         
          //�ж�������ֽ����Ƿ��ʵ����Ҫ���͵��ֽ�����
          //�������ı�ʵ�ʵĳ�����ôֻ����ʵ�ʳ��ȵ�����
          if(wLength>SendLength)
          {
           if(SendLength%DeviceDescriptor[7]==0) //���Ҹպ������������ݰ�ʱ
           {
            NeedZeroPacket=1; //��Ҫ����0���ȵ����ݰ�
           }
          }
          else
          {
           SendLength=wLength;
          }
          //������ͨ��EP0����
          UsbEp0SendData();
         break;
                 
         default:  //����������
          #ifdef DEBUG0
           Prints("���������������������룺");
           PrintHex((wValue>>8)&0xFF);
           Prints("\r\n");
          #endif
         break;
        }
       break;
      
      case GET_INTERFACE: //��ȡ�ӿ�
       #ifdef DEBUG0
        Prints("��ȡ�ӿڡ�\r\n");
       #endif
      break;
      
      case GET_STATUS: //��ȡ״̬
       #ifdef DEBUG0
        Prints("��ȡ״̬��\r\n");
       #endif
      break;
      
      case SYNCH_FRAME: //ͬ��֡
       #ifdef DEBUG0
        Prints("ͬ��֡��\r\n");
       #endif
      break;
      
      default:  //δ����ı�׼����
       #ifdef DEBUG0
        Prints("����δ����ı�׼��������\r\n");
       #endif       
      break;
     }
    break;
    
    case 1:  //������
     #ifdef DEBUG0
      Prints("USB����������\r\n");
     #endif
     switch(bRequest)
     {
      case GET_REPORT:
      #ifdef DEBUG0
       Prints("��ȡ����......\r\n");
      #endif
      //��������Ϊ3(Feature)�ұ���IDΪREPORTID_MTOUCH
      if(wValue == ((0x03 << 8) | REPORTID_MTOUCH))
      {
       if((wIndex == 0) && (wLength == 2)) //wIndexΪ0��wLengthΪ2
       {
        //ͨ���˵�0�������ǵ����Ա��棬������Ա�����������ڶ�㴥��
        //�����������У�����������Ǹ�Contact Count Maximum����ϵͳҪ
        //��ȡ�ܹ�֧�����Ĵ����������������ﷵ��һ���̶���ֵ��
        //֮���������������2�ֽڣ�����Ϊ��һ�ֽڵı���ID��
        pSendData=MaxContactCountReport; //��Ҫ���͵�����
        SendLength=wLength; //��Ҫ���ص����ݳ���
        //������ͨ��EP0����
        UsbEp0SendData();
       }
      }
      break;
      
      default:
      #ifdef DEBUG0
       Prints("δ֪USB����������\r\n");
      #endif
      break;
     }
    break;
    
    case 2:  //��������
     #ifdef DEBUG0
      Prints("USB������������\r\n");
     #endif
    break;
    
    default: //δ�������������ֻ��ʾһ��������Ϣ��
     #ifdef DEBUG0
      Prints("����δ�������������\r\n");
     #endif
    break;
   }
  }
  //����˵�����������
  else //if(bmRequestType&0x80==0x80)֮else
  {
   //����bmRequestType��D6~5λɢת��D6~5λ��ʾ���������
   //0Ϊ��׼����1Ϊ������2Ϊ��������
   switch((bmRequestType>>5)&0x03)
   {
    case 0:  //��׼����
     #ifdef DEBUG0
      Prints("USB��׼�������");
     #endif
     //USBЭ�鶨���˼�����׼�����������ʵ����Щ��׼���󼴿�
     //����Ĵ�����bRequest�У��Բ�ͬ������������ɢת
     switch(bRequest)
     {
      case CLEAR_FEATURE: //�������
       #ifdef DEBUG0
        Prints("������ԡ�\r\n");
       #endif
      break;
      
      case SET_ADDRESS:  //���õ�ַ
       #ifdef DEBUG0
        Prints("���õ�ַ����ַΪ��");
        PrintHex(wValue&0xFF); //��ʾ�����õĵ�ַ
        Prints("\r\n");
       #endif
       D12SetAddress(wValue&0xFF); //wValue�еĵ��ֽ������õĵ�ֵַ
       //���õ�ַû�����ݹ��̣�ֱ�ӽ��뵽״̬���̣�����һ��0���ȵ����ݰ�
       SendLength=0;
       NeedZeroPacket=1;
       //������ͨ��EP0����
       UsbEp0SendData();
      break;
      
      case SET_CONFIGURATION: //��������
       #ifdef DEBUG0
        Prints("�������á�\r\n");
       #endif
       //ʹ�ܷ�0�˵㡣��0�˵�ֻ��������Ϊ��0�����ú����ʹ�ܡ�
       //wValue�ĵ��ֽ�Ϊ���õ�ֵ�������ֵΪ��0������ʹ�ܷ�0�˵㡣
       //���浱ǰ����ֵ
       ConfigValue=wValue&0xFF;
       D12SetEndpointEnable(ConfigValue);
       //����һ��0���ȵ�״̬���ݰ�
       SendLength=0;
       NeedZeroPacket=1;
       //������ͨ��EP0����
       UsbEp0SendData();
      break;
      
      case SET_DESCRIPTOR: //����������
       #ifdef DEBUG0
        Prints("������������\r\n");
       #endif
      break;
      
      case SET_FEATURE: //��������
       #ifdef DEBUG0
        Prints("�������ԡ�\r\n");
       #endif
      break;

      case SET_INTERFACE: //���ýӿ�
       #ifdef DEBUG0
        Prints("���ýӿڡ�\r\n");
       #endif
      break;      
      
      default:  //δ����ı�׼����
       #ifdef DEBUG0
        Prints("����δ����ı�׼�������\r\n");
       #endif       
      break;
     }
    break;
    
    case 1:  //������
     #ifdef DEBUG0
      Prints("USB���������");
     #endif
     switch(bRequest)
     {
      case SET_IDLE:
       #ifdef DEBUG0
        Prints("���ÿ��С�\r\n");
       #endif
       //ֻ��Ҫ����һ��0���ȵ����ݰ�����
       SendLength=0;
       NeedZeroPacket=1;
       //������ͨ��EP0����
       UsbEp0SendData();
      break;
      
      case SET_REPORT:
       #ifdef DEBUG0
        Prints("���ñ��档\r\n");
       #endif
       //������Ϊ���ñ��棬����ʵ�ʵ����ݲ��������ù��̷�����
       //������֮������ݹ��̷��������ﲻ�����κδ����������ݹ���
       //��ɺ󷵻�0���ȵ�״̬����
      break;
      
      default:
       #ifdef DEBUG0
        Prints("δ֪����\r\n");
       #endif
      break;
     }
    break;
    
    case 2:  //��������
     #ifdef DEBUG0
      Prints("USB�����������\r\n");
     #endif
    break;
    
    default: //δ�������������ֻ��ʾһ��������Ϣ��
     #ifdef DEBUG0
      Prints("����δ������������\r\n");
     #endif
    break;
   }
  }
 }
 //��ͨ�������
 else //if(D12ReadEndpointLastStatus(0)&0x20)֮else
 {
  UsbEp0DataOut();
 }
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ��˵�0�����жϴ���������
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbEp0In(void)
{
#ifdef DEBUG0
 Prints("USB�˵�0�����жϡ�\r\n");
#endif
 //�������״̬���⽫����˵�0���жϱ�־λ
 D12ReadEndpointLastStatus(1);
 //����ʣ����ֽ���
 UsbEp0SendData();
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ��˵�1����жϴ���������
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbEp1Out(void)
{
#ifdef DEBUG0
 Prints("USB�˵�1����жϡ�\r\n");
#endif
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ��˵�1�����жϴ���������
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbEp1In(void)
{
#ifdef DEBUG0
 Prints("USB�˵�1�����жϡ�\r\n");
#endif
 //�������״̬���⽫����˵�1������жϱ�־λ
 D12ReadEndpointLastStatus(3);
 //�˵�1���봦�ڿ���״̬
 Ep1InIsBusy=0;
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ��˵�2����жϴ���������
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbEp2Out(void)
{
#ifdef DEBUG0
 Prints("USB�˵�2����жϡ�\r\n");
#endif
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ��˵�2�����жϴ���������
��ڲ������ޡ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void UsbEp2In(void)
{
#ifdef DEBUG0
 Prints("USB�˵�2�����жϡ�\r\n");
#endif
}
////////////////////////End of function//////////////////////////////