/******************************************************************
   ������ֻ��ѧϰʹ�ã�δ���������ɣ��������������κ���;
   
        ��ӭ�����ҵ�USBר����http://group.ednchina.com/93/
				��ӭ�����ҵ�blog��   http://www.ednchina.com/blog/computer00
				                     http://computer00.21ic.org
									 
PWM.c  file
								 
���ߣ�Computer-lov
��������: 2009-05-15
�޸�����: 2009-05-15
�汾��V1.0
��Ȩ���У�����ؾ���
Copyright(C) Computer-lov 2009-2019
All rights reserved
*******************************************************************/

#include <AT91SAM7S64.H>

/********************************************************************
�������ܣ�PWM��ʼ����
��ڲ������ޣ�
��    �أ��ޡ�
��    ע���ޡ�
********************************************************************/
void PwmInit(void)
{
 //��PA0���ӵ�����A����PWM0
 //PIOģ��
 *AT91C_PIOA_PDR=(1<<0);    //PA0
 *AT91C_PIOA_IDR=(1<<0);    //��ֹPA0�ж�
 *AT91C_PIOA_PPUER=(1<<0);  //ʹ��PA0��������
 *AT91C_PIOA_ASR=(1<<0);    //���ӵ�A���裨��PWM0��
 
 //PWMģ��
 *AT91C_PWMC_MR=0x00;  //��ʹ��CLKA��CLKB
 *AT91C_PWMC_IDR=0x0F;  //��ֹ����PWM�ж�
 *AT91C_PWMC_CH0_CMR = (0x00<<0)    //ʱ��ѡ��ΪMCK
                      |(0x00<<8)    //CALGCALG: Channel Alignment�������
                      |(0x01<<9)    //CPOL: Channel Polarity,
                                    //��ʼ���Ϊ�ߵ�ƽ
                      |(0x00<<10);  //CPD: Channel Update Period,
                                    //PWM_CUPDx�Ĵ���������ռ�ձ�
 *AT91C_PWMC_CH0_CDTYR = 0x00;  //ռ�ձ�����Ϊ0
 *AT91C_PWMC_CH0_CPRDR = 0xFF;  //Ƶ������Ϊ48MHz/256=187.5kHz
 *AT91C_PWMC_ENA=0x01;  //ʹ��PWM0
}
/////////////////////////End of function/////////////////////////////
