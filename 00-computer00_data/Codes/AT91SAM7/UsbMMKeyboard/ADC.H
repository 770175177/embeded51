/******************************************************************
   ������ֻ��ѧϰʹ�ã�δ���������ɣ��������������κ���;
   
    ��ӭ�����ҵ�USBר����http://group.ednchina.com/93/
    ��ӭ�����ҵ�blog��   http://www.ednchina.com/blog/computer00
                         http://computer00.21ic.org
          
ADC.h  file
         
���ߣ�Computer-lov
��������: 2009-03-06
�޸�����: 2009-03-06
�汾��V1.0
��Ȩ���У�����ؾ���
Copyright(C) Computer-lov 2009-2019
All rights reserved
*******************************************************************/

#ifndef __ADC_H__
#define __ADC_H__

#define AdcReset()            *AT91C_ADC_CR=1
#define AdcStartConversion()  *AT91C_ADC_CR=(1<<1)

void AdcInit(void);
int AdcRead(void);
void AdcSetupDma(short int *Addr, int Count);
void AdcWaitDmaFinish(void);

#endif