/******************************************************************
   ������ֻ��ѧϰʹ�ã�δ���������ɣ��������������κ���;

        ��ӭ�����ҵ�USBר����http://group.ednchina.com/93/
        ��ӭ�����ҵ�blog��   http://www.ednchina.com/blog/computer00
                             http://computer00.21ic.org

        ��лPCB�����̡�������԰�� http://bbs.cepark.com/

PDIUSBD12.C  file

���ߣ�����ȦȦ
��������: 2008.06.27
�޸�����: 2008.06.27
�汾��V1.1
��Ȩ���У�����ؾ���
Copyright(C) ����ȦȦ 2008-2018
All rights reserved            
*******************************************************************/

#include <AT89x52.H>
#include "MyType.h"
#include "PDIUSBD12.H"


/********************************************************************
�������ܣ�D12д���
��ڲ�����Command��һ�ֽ����
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void D12WriteCommand(uint8 Command)
{
 D12SetCommandAddr();  //����Ϊ�����ַ
 D12ClrWr(); //WR�õ�
 D12SetPortOut(); //�����ݿ�����Ϊ���״̬��ע������Ϊ�պ꣬��ֲʱ�������ã�
 D12SetData(Command);  //���������ݿ���
 D12SetWr(); //WR�ø�
 D12SetPortIn(); //�����ݿ�����Ϊ����״̬���Ա���������ʹ��
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ���һ�ֽ�D12���ݡ�
��ڲ������ޡ�
��    �أ����ص�һ�ֽڡ�
��    ע���ޡ�
********************************************************************/
uint8 D12ReadByte(void)
{
 uint8 temp;
 D12SetDataAddr(); //����Ϊ���ݵ�ַ
 D12ClrRd(); //RD�õ�
 temp=D12GetData(); //��������
 D12SetRd(); //RD�ø�
 return temp; //���ض�������
}
////////////////////////End of function//////////////////////////////

/********************************************************************
�������ܣ���D12��ID��
��ڲ������ޡ�
��    �أ�D12��ID��
��    ע���ޡ�
********************************************************************/
uint16 D12ReadID(void)
{
 uint16 id;
 D12WriteCommand(Read_ID); //д��ID����
 id=D12ReadByte(); //����ID�ŵ��ֽ�
 id|=((uint16)D12ReadByte())<<8; //����ID�Ÿ��ֽ�
 return id;
}
////////////////////////End of function//////////////////////////////
