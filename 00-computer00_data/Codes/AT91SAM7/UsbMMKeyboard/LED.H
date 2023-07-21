/******************************************************************
   ������ֻ��ѧϰʹ�ã�δ���������ɣ��������������κ���;
   
        ��ӭ�����ҵ�USBר����http://group.ednchina.com/93/
        ��ӭ�����ҵ�blog��   http://www.ednchina.com/blog/computer00
                             http://computer00.21ic.org
        
LED.h  file

���ߣ�Computer-lov
��������: 2009-03-04
�޸�����: 2009-03-04
�汾��V1.0
��Ȩ���У�����ؾ���
Copyright(C) Computer-lov 2009-2019
All rights reserved
*******************************************************************/


#ifndef __LED_H__
#define __LED_H__

#include <AT91SAM7S64.H>

#define OnLed2() *AT91C_PIOA_CODR=(1<<2)
#define OnLed3() *AT91C_PIOA_CODR=(1<<1)
#define OnLed4() *AT91C_PIOA_CODR=(1<<0)

#define OffLed2() *AT91C_PIOA_SODR=(1<<2)
#define OffLed3() *AT91C_PIOA_SODR=(1<<1)
#define OffLed4() *AT91C_PIOA_SODR=(1<<0)

void LedInit(void);
void DelayXms(unsigned long int x);

#endif