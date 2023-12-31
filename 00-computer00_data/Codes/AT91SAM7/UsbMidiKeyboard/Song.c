/******************************************************************
   本程序只供学习使用，未经作者许可，不得用于其它任何用途
			
        欢迎访问我的USB专区：http://group.ednchina.com/93/
        欢迎访问我的blog：   http://www.ednchina.com/blog/computer00
                             http://computer00.21ic.org

song.c file

作者：电脑圈圈
建立日期: 2008.08.12
修改日期: 2009.03.14
版本：V1.1
版权所有，盗版必究。
Copyright(C) 电脑圈圈 2008-2018
All rights reserved            
*******************************************************************/

#include "MyType.h"
#include "AT91SAMxUSB.H"
#include "Key.h"
#include "config.h"
#include "LED.h"

//  5    6    7    1    2    3    4    5    6     7     1
// 55   57    59   60   62  64    65   67   69    71    72

//C  48 55 60 64
//Em 40 55 59 64
//Am 45 57 60 64
//D  50 57 62 66
//Dm 50 57 62 65
//F  41 57 60 65
//G  43 55 59 67

//《容易受伤的女人》，4/4拍，78拍每分，每个4分音符时值约为769ms，实际取768ms。
// 可以分解为32*24。
//结构说明：
//第一行为歌曲的总长度（行数）
//接下来的每一行第一个元素表示本行内有多少个音符，如果是两个数字相加的，则前一个
//表示该行中通道0（旋律乐器）的音符个数，后一个表示通道9（打击乐）的音符个数
//后面每两个分别为音高和力度，一行有多少个音符，就重复多少个音高和力度。当遇到
//一个0xFF时，表示通道切换（仅有一个通道0和一个通道9）。
//每行最后一个表示该行演奏完后，停顿多久才演奏下一行。
#define BT1 32,24

#ifndef DEBUG0

const uint8 SongTable[]=
{
 373/256, 373%256,

//引子
 1, 83,70, BT1/2, //7
 2, 83,0, 84,90, BT1/2, //1
 2, 84,0, 86,90, BT1/2, //2
 2, 86,0, 91,90, BT1/2, //5
 2, 91,0, 89,90, BT1/2, //4
 2, 89,0, 81,90, BT1/2, //6
 2, 81,0, 79,90, BT1/2, //5
 2, 79,0, 88,90, BT1/2, //3 

 2, 88,0, 86,90, BT1/2, //2
 2, 86,0, 79,90, BT1/2, //5
 2, 79,0, 77,90, BT1/2, //4
 2, 77,0, 84,90, BT1/2, //1
 2, 84,0, 83,90, BT1/2, //7
 2, 83,0, 76,90, BT1/2, //3
 2, 76,0, 79,90, BT1/2, //5
 2, 79,0, 86,90, BT1/2, //2
 
 3, 0xFF, 58,120, 0xFF, 86,0, 91,90, BT1*4, //5

//第一小节
//C和弦
 2, 91,0, 48,70,BT1/2,
 1, 55,70,BT1/2,
 2, 55,0, 60,70,BT1/2,
 2, 60,0, 64,70,BT1/2,
//C和弦 
 1, 64,70,BT1/2,
 1, 55,70,BT1/2,
 4, 48,0, 55,0,  60,70, 55,100,BT1/2,   //5
 4, 60,0, 55,0,  64,70, 57,100,BT1/2,  //6

//第二小节
//C和弦
 4, 64,0, 57,0, 48,101, 60,100,BT1/2,  //1
 3, 60,0, 55,70,  60,100,BT1/2,  //1
 4, 55,0, 60,0,   60,70,  60,100,BT1/2,   //1
 5, 48,0, 60,0,   60,0, 64,70, 62,100,BT1/4, //2
 2, 62,0, 64,100,BT1/4,    //3
//Em和弦
 1+1, 0xFF, 74,90, 0xFF, 40,101,BT1/2,   //
 1+1, 0xFF, 64,90, 0xFF, 55,70,BT1/2,
 2+1, 0xFF, 63,90, 0xFF, 55,0, 59,70,BT1/2,  //0
 4+1, 0xFF, 64,90, 0xFF, 40,0, 59,0, 64,70,  64,100,BT1/4, //3
 1, 67,100,BT1/4,   //5   

//第三小节
//Am和弦
 4, 64,0, 67,0,  45,101, 69,100, BT1/2,  //6
 2, 57,70, 69,100,BT1/2,    //6
 4, 57,0, 69,0, 60,70, 71,100,BT1/3, //7
 2, 71,0, 69,100,BT1/6, //6
 3, 45,0, 60,0, 64,70,BT1/6,
 2, 69,0, 67,100,BT1/3,//5
//Em和弦 
 4+1, 0xFF, 74,90, 0xFF, 64,0, 67,0, 40,101, 64,100,BT1/2,  //3
 1, 55,70,BT1/2,
 3, 55,0, 64,0, 59,70,BT1/2, //0
 4, 40,0, 59,0, 64,70, 64,100,BT1/2, //3
 
//第四小节
//Dm和弦
 3, 64,0,  50,101, 62,100, BT1/2,  //2
 1, 57,70,BT1/2,
 4, 57,0,  62,0, 62,70, 62,100, BT1/4, //2
 1, 60,100,BT1/4,  //1
 5, 62,0, 60,0, 50,0, 65,70, 57,100, BT1/4, //6 	 
 2, 57,0, 55,100,BT1/4,  //5
//Am和弦
 4+1, 0xFF, 74,90, 0xFF, 65,0, 55,0, 45,101, 57,100,BT1/2,  //6
 1+1, 0xFF, 64,90, 0xFF, 57,70,BT1/2,
 2+1, 0xFF, 63,90, 0xFF, 57,0, 60,70,BT1/2,
 3+1, 0xFF, 64,90, 0xFF, 45,0, 60,0, 64,70,BT1/4,  //0
 1, 55,100,BT1/4,     //5
 
//第五小节
//F和弦
 4, 64,0, 55,0, 41,101, 60,100, BT1/2,  //1
 1, 57,70, BT1/2,
 3, 57,0, 60,70,  60,100,BT1/2,  //1
 4, 41,0, 60,0, 64,70, 60,100,BT1/2,  //1
//G和弦
 4+1, 0xFF, 74,90, 0xFF, 64,0, 60,0, 43,101, 62,100,BT1/2,  //2
 1, 55,70,BT1/2,
 2, 55,0, 59,70,BT1/2,  //0
 4, 59,0, 43,0, 67,70, 55,100,BT1/4, //5
 2, 55,0, 57,100,BT1/4,  //6

//第六小节
//C和弦
 4, 67,0, 57,0, 48,101, 60,100,BT1/2,  //1
 3, 60,0, 55,70,  60,100,BT1/2,  //1
 4, 55,0, 60,0,   60,70,  60,100,BT1/2,   //1
 5, 48,0, 60,0,   60,0, 64,70, 62,100,BT1/4, //2
 2, 62,0, 64,100,BT1/4,    //3
//Em和弦
 1+1, 0xFF, 74,90, 0xFF, 40,101,BT1/2,   //
 1+1, 0xFF, 64,90, 0xFF, 55,70,BT1/2,
 2+1, 0xFF, 63,90, 0xFF, 55,0, 59,70,BT1/2,  //0
 4+1, 0xFF, 64,90, 0xFF, 40,0, 59,0, 64,70,  64,100,BT1/4, //3
 1, 67,100,BT1/4,   //5   

//第七小节
//Am和弦
 4, 64,0, 67,0,  45,101, 69,100, BT1/2,  //6
 2, 57,70, 69,100,BT1/2,    //6
 4, 57,0, 69,0, 60,70, 71,100,BT1/3, //7
 2, 71,0, 69,100,BT1/6, //6
 3, 45,0, 60,0, 64,70,BT1/6,
 2, 69,0, 67,100,BT1/3,//5
//Em和弦 
 4+1, 0xFF, 74,90, 0xFF, 64,0, 67,0, 40,101, 64,100,BT1/2,  //3
 1, 55,70,BT1/2,
 3, 55,0, 64,0, 59,70,BT1/2, //0
 4, 40,0, 59,0, 64,70, 64,100,BT1/2, //3
 
//第八小节
//Dm和弦
 3, 64,0,  50,101, 62,100, BT1/2,  //2
 1, 57,70,BT1/2,
 4, 57,0,  62,0, 62,70, 62,100, BT1/4, //2
 1, 60,100,BT1/4,  //1
 5, 62,0, 60,0, 50,0, 65,70, 57,100, BT1/4, //6 	 
 2, 57,0, 55,100,BT1/4,  //5
//Am和弦
 4+1, 0xFF, 74,90, 0xFF, 65,0, 55,0, 45,101, 57,100,BT1/2,  //6
 1+1, 0xFF, 64,90, 0xFF, 57,70,BT1/2,
 2+1, 0xFF, 63,90, 0xFF, 57,0, 60,70,BT1/2,
 3+1, 0xFF, 64,90, 0xFF, 45,0, 60,100, 64,70,BT1/2,  //1

//第九小节
//Em和弦
 4, 60,0, 64,0, 40,101, 59,100,BT1/2,  //7
 1, 55,70,BT1/2,  
 4, 55,0, 59,0, 59,70, 57,100, BT1/2,  //6
 5, 40,0, 59,0, 57,0, 64,70, 55,100, BT1/2,  //5
//Am和弦
 4+1, 0xFF, 74,90, 0xFF, 64,0, 55,0, 45,101, 57,100, BT1/2, //6
 1+1, 0xFF, 64,90, 0xFF, 57,70,BT1/2,
 3+1, 0xFF, 63,90, 0xFF, 57,0, 60,70, 60,100,BT1/2,  //1
 4+1, 0xFF, 64,90, 0xFF, 60,0, 45,0,  64,70, 62,100,BT1/2,  //2

//第十小节
//C和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 62,0, 48,101, 64,100, BT1/2,  //3
 3+1, 0xFF, 75,90, 0xFF, 64,0, 55,70, 67,100,BT1/2,   //5
 4+2, 0xFF, 37,90, 42,90, 0xFF, 55,0, 67,0, 60,70, 64,100,BT1/4,  //3
 2, 64,0, 62,100,BT1/4, //2
 5, 48,0, 60,0, 62,0, 64,70, 60,100,BT1/4,  //1
 2, 60,0, 62,100,BT1/4,  //2
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 62,0, 45,101, 64,100, BT1/2,  //3
 3+1, 0xFF, 35,90, 0xFF, 64,0, 57,70, 69,100,BT1/2,  //6
 4+2, 0xFF, 37,90, 42,90, 0xFF, 57,0, 69,0, 60,70, 64,100,BT1/4,  //3
 2, 64,0, 62,100,BT1/4, //2
 5, 45,0, 60,0, 62,0, 64,70, 60,100,BT1/4,  //1
 2, 60,0, 62,100,BT1/4,  //2 

//第十一小节
//Em和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 62,0, 64,0, 40,101, 64,100, BT1/2, //3
 3+1, 0xFF, 75,90, 0xFF, 64,0, 55,70, 71,100, BT1/2,  //7
 4+2, 0xFF, 37,90, 42,90, 0xFF, 55,0, 71,0,  59,70,  71,100,BT1/2,  //7
 5, 40,0, 59,0, 71,0, 64,70, 67,100,BT1/2, //5
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 67,0, 45,101, 69,100, BT1/2,  //6
 1+1, 0xFF, 35,90, 0xFF, 57,70,BT1/2,
 3+2, 0xFF, 37,90, 42,90,0xFF, 57,0, 60,70, 69,100,BT1/2, //6
 5, 45,0, 60,0, 69,0, 64,70, 67,100,BT1/2,  //5
  
//第十二小节
//F和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 69,0, 41,101, 69,100, BT1/2,  //6
 3+1, 0xFF, 75,90, 0xFF, 69,0, 57,70, 67,100,BT1/2,  //5
 4+2, 0xFF, 37,90, 42,90, 0xFF, 57,0, 67,0, 60,70, 69,100,BT1/4,  //6
 2, 69,0, 67,100, BT1/4, //5
 5, 41,0, 60,0, 67,0, 65,70, 64,100,BT1/4, //3
 2, 64,0, 62,100,BT1/4,  //2
//C和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 65,0, 62,0, 48,101, 64,100, BT1/2, //3
 3+1, 0xFF, 35,90, 0xFF, 64,0, 55,70, 67,100, BT1/2, //5
 4+2, 0xFF, 37,90, 42,90, 0xFF, 55,0, 67,0, 60,70, 64,100,BT1/2, //3
 5, 48,0, 60,0, 64,0, 64,70, 64,100, BT1/2, //3

//第十三小节
//Dm和弦
 3+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 50,101, 62,100,BT1/2, //2
 1+1, 0xFF, 75,90, 0xFF, 57,70,BT1/2,
 3+2, 0xFF, 37,90, 42,90, 0xFF, 57,0, 62,70, 60,100,BT1/2, //1
 5, 50,0, 62,0, 60,0, 65,70, 62,100,BT1/2,  //2
//Em和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 65,0, 62,0, 40,101, 64,100, BT1/2, //3
 1+1, 0xFF, 35,90, 0xFF, 55,70, BT1/2,
 3+2, 0xFF, 37,90, 42,90, 0xFF, 55,0, 59,70, 60,100,BT1/2, //1
 5, 40,0, 59,0, 60,0, 64,70, 62,100,BT1/2, //2

//第十四小节
//C和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 62,0, 48,101, 64,100, BT1/2,  //3
 3+1, 0xFF, 75,90, 0xFF, 64,0, 55,70, 67,100,BT1/2,   //5
 4+2, 0xFF, 37,90, 42,90, 0xFF, 55,0, 67,0, 60,70, 64,100,BT1/4,  //3
 2, 64,0, 62,100,BT1/4, //2
 5, 48,0, 60,0, 62,0, 64,70, 60,100,BT1/4,  //1
 2, 60,0, 62,100,BT1/4,  //2
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 62,0, 45,101, 64,100, BT1/2,  //3
 3+1, 0xFF, 35,90, 0xFF, 64,0, 57,70, 69,100,BT1/2,  //6
 4+2, 0xFF, 37,90, 42,90, 0xFF, 57,0, 69,0, 60,70, 64,100,BT1/4,  //3
 2, 64,0, 62,100,BT1/4, //2
 5, 45,0, 60,0, 62,0, 64,70, 60,100,BT1/4,  //1
 2, 60,0, 62,100,BT1/4,  //2 

//第十五小节
//Em和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 62,0, 64,0, 40,101, 64,100, BT1/2, //3
 3+1, 0xFF, 75,90, 0xFF, 64,0, 55,70, 71,100, BT1/2,  //7
 4+2, 0xFF, 37,90, 42,90, 0xFF, 55,0, 71,0,  59,70,  71,100,BT1/2,  //7
 5, 40,0, 59,0, 71,0, 64,70, 67,100,BT1/2, //5
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 67,0, 45,101, 69,100, BT1/2,  //6
 1+1, 0xFF, 35,90, 0xFF, 57,70,BT1/2,
 3+2, 0xFF, 37,90, 42,90, 0xFF, 57,0, 60,70, 69,100,BT1/2, //6
 5, 45,0, 60,0, 69,0, 64,70, 67,100,BT1/4,  //5
 2, 67,0, 69,100,BT1/4,  //6

//第十六小节
//D和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 59,0, 50,101, 69,100,BT1/2, //6
 1+1, 0xFF, 75,90, 0xFF, 57,70, BT1/2,
 2+2, 0xFF, 37,90, 42,90, 0xFF, 57,0, 62,70, BT1/2, 
 5, 50,0, 62,0, 69,0, 66,70, 67,100, BT1/2, //5
//D和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 66,0, 67,0, 50,101, 69,100,BT1/2, //6
 3+1, 0xFF, 35,90, 0xFF, 69,0, 57,70, 72,100, BT1/2,  //1
 2+2, 0xFF, 37,90, 42,90, 0xFF, 57,0, 62,70, BT1/2,
 5, 50,0, 62,0, 72,0, 66,70, 69,100,BT1/2,  //6

//第十七小节
//G和弦
 4+1, 0xFF, 35,90, 0xFF, 66,0, 69,0, 43,101, 64,100, BT1/2, //3
 3+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 55,70, 67,100, BT1/2, //5
 2+1, 0xFF, 45,90, 0xFF, 55,0, 59,70, BT1/2, 
 3+2, 0xFF, 43,90, 46,90, 0xFF, 43,0, 59,0, 67,70,BT1/2,
//G和弦
 1+1, 0xFF, 42,90, 0xFF, 43,60,BT1/2, 
 1+1, 0xFF, 46,90, 0xFF, 55,50,BT1/2,
 3+1, 0xFF, 42,90, 0xFF, 55,0, 67,0, 59,50,BT1/4,
 1, 0xFF, 46,90, BT1/4,
 4+1, 42,90, 0xFF, 43,0, 59,0, 67,60, 55,100, BT1/4, //5
 2+2, 0xFF, 42,90, 46,90, 0xFF, 55,0, 57,100, BT1/4,  //6   

//第十八小节
//C和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 67,0, 57,0, 48,101, 60,100,BT1/2,  //1
 3+1, 0xFF, 42,90, 0xFF, 60,0, 55,70,  60,100,BT1/2,  //1
 4+2, 0xFF, 38,90, 46,90, 0xFF, 55,0, 60,0,   60,70,  60,100,BT1/2,   //1
 5+1, 0xFF, 42,90, 0xFF, 48,0, 60,0,   60,0, 64,70, 62,100,BT1/4, //2
 2, 62,0, 64,100,BT1/4,    //3
//Em和弦
 1+2, 0xFF, 35,90, 42,90, 0xFF, 40,101,BT1/2,   //
 1+2, 0xFF, 35,90, 42,90, 0xFF, 55,70,BT1/2,
 2+2, 0xFF, 38,90, 46,90, 0xFF, 55,0, 59,70,BT1/2,  //0
 4+2, 0xFF, 35,90, 42,90, 0xFF, 40,0, 59,0, 64,70,  64,100,BT1/4, //3
 1, 67,100,BT1/4,   //5   

//第十九小节
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 67,0,  45,101, 69,100, BT1/2,  //6
 2+1, 0xFF, 42,90, 0xFF, 57,70, 69,100,BT1/2,    //6
 4+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 69,0, 60,70, 71,100,BT1/3, //7
 2, 71,0, 69,100,BT1/6, //6
 3+1, 0xFF, 42,90, 0xFF, 45,0, 60,0, 64,70,BT1/6,
 2, 69,0, 67,100,BT1/3,//5
//Em和弦 
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 67,0, 40,101, 64,100,BT1/2,  //3
 1+2, 0xFF, 35,90, 42,90, 0xFF, 55,70,BT1/2,
 3+2, 0xFF, 38,90, 46,90, 0xFF, 55,0, 64,0, 59,70,BT1/2, //0
 4+2, 0xFF, 35,90, 42,90, 0xFF, 40,0, 59,0, 64,70, 64,100,BT1/2, //3
 
//第二十小节
//Dm和弦
 3+2, 0xFF, 35,90, 42,90, 0xFF, 64,0,  50,101, 62,100, BT1/2,  //2
 1+1, 0xFF, 42,90, 0xFF, 57,70,BT1/2,
 4+2, 0xFF, 38,90, 46,90, 0xFF, 57,0,  62,0, 62,70, 62,100, BT1/4, //2
 1, 60,100,BT1/4,  //1
 5+1, 0xFF, 42,90, 0xFF, 62,0, 60,0, 50,0, 65,70, 57,100, BT1/4, //6 	 
 2, 57,0, 55,100,BT1/4,  //5
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 65,0, 55,0, 45,101, 57,100,BT1/2,  //6
 1+2, 0xFF, 35,90, 42,90, 0xFF, 57,70,BT1/2,
 2+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 60,70,BT1/2,
 3+2, 0xFF, 35,90, 42,90, 0xFF, 45,0, 60,100, 64,70,BT1/2,  //1

//第二十一小节
//Em和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 60,0, 64,0, 40,101, 59,100,BT1/2,  //7
 1+1, 0xFF, 42,90, 0xFF, 55,70,BT1/2,  
 4+2, 0xFF, 38,90, 46,90, 0xFF, 55,0, 59,0, 59,70, 57,100, BT1/2,  //6
 5+1, 0xFF, 42,90, 0xFF, 40,0, 59,0, 57,0, 64,70, 55,100, BT1/2,  //5
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 55,0, 45,101, 57,100, BT1/2, //6
 1+2, 0xFF, 35,90, 42,90, 0xFF, 57,70,BT1/2,
 3+2, 0xFF, 46,90, 47,90, 0xFF, 57,0, 60,70, 60,100,BT1/4,  //1
 1,   0xFF, 47,90, BT1/4,
 4+2, 42,90, 43,90, 0xFF, 60,0, 45,0,  64,70, 62,100,BT1/2,  //2

//第二十二小节
//C和弦
 4+4, 0xFF, 38,90,57,90, 35,90, 42,90, 0xFF, 64,0, 62,0, 48,101, 64,100, BT1/2,  //3
 3+1, 0xFF, 42,90, 0xFF, 64,0, 55,70, 67,100,BT1/2,   //5
 4+2, 0xFF, 38,90, 46,90, 0xFF, 55,0, 67,0, 60,70, 64,100,BT1/4,  //3
 2, 64,0, 62,100,BT1/4, //2
 5+1, 0xFF, 42,90, 0xFF, 48,0, 60,0, 62,0, 64,70, 60,100,BT1/4,  //1
 2, 60,0, 62,100,BT1/4,  //2
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 62,0, 45,101, 64,100, BT1/2,  //3
 3+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 57,70, 69,100,BT1/2,  //6
 4+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 69,0, 60,70, 64,100,BT1/4,  //3
 2, 64,0, 62,100,BT1/4, //2
 5+2, 0xFF, 35,90, 42,90, 0xFF, 45,0, 60,0, 62,0, 64,70, 60,100,BT1/4,  //1
 2, 60,0, 62,100,BT1/4,  //2 

//第二十三小节
//Em和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 62,0, 64,0, 40,101, 64,100, BT1/2, //3
 3+1, 0xFF, 42,90, 0xFF, 64,0, 55,70, 71,100, BT1/2,  //7
 4+2, 0xFF, 38,90, 46,90, 0xFF, 55,0, 71,0,  59,70,  71,100,BT1/2,  //7
 5+1, 0xFF, 42,90, 0xFF, 40,0, 59,0, 71,0, 64,70, 67,100,BT1/2, //5
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 67,0, 45,101, 69,100, BT1/2,  //6
 1+2, 0xFF, 35,90, 42,90, 0xFF, 57,70,BT1/2,
 3+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 60,70, 69,100,BT1/2, //6
 5+2, 0xFF, 35,90, 42,90, 0xFF, 45,0, 60,0, 69,0, 64,70, 67,100,BT1/2,  //5
  
//第二十四小节
//F和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 69,0, 41,101, 69,100, BT1/2,  //6
 3+1, 0xFF, 42,90, 0xFF, 69,0, 57,70, 67,100,BT1/2,  //5
 4+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 67,0, 60,70, 69,100,BT1/4,  //6
 2, 69,0, 67,100, BT1/4, //5
 5+1, 0xFF, 42,90, 0xFF, 41,0, 60,0, 67,0, 65,70, 64,100,BT1/4, //3
 2, 64,0, 62,100,BT1/4,  //2
//C和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 65,0, 62,0, 48,101, 64,100, BT1/2, //3
 3+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 55,70, 67,100, BT1/2, //5
 4+2, 0xFF, 38,90, 46,90, 0xFF, 55,0, 67,0, 60,70, 64,100,BT1/2, //3
 5+2, 0xFF, 35,90, 42,90, 0xFF, 48,0, 60,0, 64,0, 64,70, 64,100, BT1/2, //3

//第二十五小节
//Dm和弦
 3+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 50,101, 62,100,BT1/2, //2
 1+1, 0xFF, 42,90, 0xFF, 57,70,BT1/2,
 3+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 62,70, 60,100,BT1/2, //1
 5+1, 0xFF, 42,90, 0xFF, 50,0, 62,0, 60,0, 65,70, 62,100,BT1/2,  //2
//Em和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 65,0, 62,0, 40,101, 64,100, BT1/2, //3
 1+2, 0xFF, 35,90, 42,90, 0xFF, 55,70, BT1/2,
 3+2, 0xFF, 46,90, 47,90, 0xFF, 55,0, 59,70, 60,100,BT1/4, //1
 1,   0xFF, 47,90, BT1/4, 
 5+2, 42,90, 43,90, 0xFF, 40,0, 59,0, 60,0, 64,70, 62,100,BT1/2, //2

//第二十六小节
//C和弦
 4+4, 0xFF, 38,90, 57,90, 35,90, 42,90, 0xFF, 64,0, 62,0, 48,101, 64,100, BT1/2,  //3
 3+1, 0xFF, 42,90, 0xFF, 64,0, 55,70, 67,100,BT1/2,   //5
 4+2, 0xFF, 38,90, 46,90, 0xFF, 55,0, 67,0, 60,70, 64,100,BT1/4,  //3
 2, 64,0, 62,100,BT1/4, //2
 5+1, 0xFF, 42,90, 0xFF, 48,0, 60,0, 62,0, 64,70, 60,100,BT1/4,  //1
 2, 60,0, 62,100,BT1/4,  //2
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 62,0, 45,101, 64,100, BT1/2,  //3
 3+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 57,70, 69,100,BT1/2,  //6
 4+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 69,0, 60,70, 64,100,BT1/4,  //3
 2, 64,0, 62,100,BT1/4, //2
 5+2, 0xFF, 35,90, 42,90, 0xFF, 45,0, 60,0, 62,0, 64,70, 60,100,BT1/4,  //1
 2, 60,0, 62,100,BT1/4,  //2 

//第二十七小节
//Em和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 62,0, 64,0, 40,101, 64,100, BT1/2, //3
 3+1, 0xFF, 42,90, 0xFF, 64,0, 55,70, 71,100, BT1/2,  //7
 4+2, 0xFF, 38,90, 46,90, 0xFF, 55,0, 71,0,  59,70,  71,100,BT1/2,  //7
 5+1, 0xFF, 42,90, 0xFF, 40,0, 59,0, 71,0, 64,70, 67,100,BT1/2, //5
//Am和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 67,0, 45,101, 69,100, BT1/2,  //6
 1+2, 0xFF, 35,90, 42,90, 0xFF, 57,70,BT1/2,
 3+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 60,70, 69,100,BT1/2, //6
 5+2, 0xFF, 35,90, 42,90, 0xFF, 45,0, 60,0, 69,0, 64,70, 67,100,BT1/4,  //5
 2, 67,0, 69,100,BT1/4,  //6

//第二十八小节
//D和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 64,0, 59,0, 50,101, 69,100,BT1/2, //6
 1+1, 0xFF, 42,90, 0xFF, 57,70, BT1/2,
 2+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 62,70, BT1/2, 
 5+1, 0xFF, 42,90, 0xFF, 50,0, 62,0, 69,0, 66,70, 67,100, BT1/2, //5
//D和弦
 4+2, 0xFF, 35,90, 42,90, 0xFF, 66,0, 67,0, 50,101, 69,100,BT1/2, //6
 3+2, 0xFF, 35,90, 42,90, 0xFF, 69,0, 57,70, 72,100, BT1/2,  //1
 2+2, 0xFF, 38,90, 46,90, 0xFF, 57,0, 62,70, BT1/2,
 5+2, 0xFF, 35,90, 42,90, 0xFF, 50,0, 62,0, 72,0, 66,70, 69,100,BT1/2,  //6

//第二十九小节
//G和弦
 4+4, 0xFF, 38,90, 35,90, 42,90, 57,90, 0xFF, 66,0, 69,0, 43,101, 64,100, BT1/2, //3
 3+1, 0xFF, 42,90, 0xFF, 64,0, 55,70, 67,100, BT1/4, //5
 1,   0xFF, 35,90, BT1/4,
 2+2, 42,90, 47,90, 0xFF, 55,0, 59,70, BT1/2,
 3+3, 0xFF, 46,90, 42,90, 57,90, 0xFF, 43,0, 59,0, 67,70,BT1/2,
//G和弦
 1, 43,60,BT1/2, 
 1, 55,50,BT1/2,
 3, 55,0, 67,0, 59,50,BT1/2,
 4, 43,0, 59,0, 67,60, 55,100, BT1/4, //5
 2, 55,0, 57,100, BT1/4,  //6   

//第三十小节
//C和弦
 4, 67,0, 57,0, 48,101, 60,100,BT1/2,  //1
 3, 60,0, 55,70,  60,100,BT1/2,  //1
 4, 55,0, 60,0,   60,70,  60,100,BT1/2,   //1
 5, 48,0, 60,0,   60,0, 64,70, 62,100,BT1/4, //2
 2, 62,0, 64,100,BT1/4,    //3
//Em和弦
 1, 40,101,BT1/2,   //
 1, 55,70,BT1/2,
 2, 55,0, 59,70,BT1/2,  //0
 4, 40,0, 59,0, 64,70,  64,100,BT1/4, //3
 1, 67,100,BT1/4,   //5   

//第三十一小节
//Am和弦
 4, 64,0, 67,0,  45,101, 69,100, BT1/2,  //6
 2, 57,70, 69,100,BT1/2,    //6
 4, 57,0, 69,0, 60,70, 71,100,BT1/3, //7
 2, 71,0, 69,100,BT1/6, //6
 3, 45,0, 60,0, 64,70,BT1/6,
 2, 69,0, 67,100,BT1/3,//5
//Em和弦 
 4, 64,0, 67,0, 40,101, 64,100,BT1/2,  //3
 1, 55,70,BT1/2,
 3, 55,0, 64,0, 59,70,BT1/2, //0
 4, 40,0, 59,0, 64,70, 64,100,BT1/2, //3
 
//第三十二小节
//Dm和弦
 3, 64,0,  50,101, 62,100, BT1/2,  //2
 1, 57,70,BT1/2,
 4, 57,0,  62,0, 62,70, 62,100, BT1/4, //2
 1, 60,100,BT1/4,  //1
 5, 62,0, 60,0, 50,0, 65,70, 57,100, BT1/4, //6 	 
 2, 57,0, 55,100,BT1/4,  //5
//Am和弦
 4, 65,0, 55,0, 45,101, 57,100,BT1/2,  //6
 1, 57,70,BT1/2,
 2, 57,0, 60,70,BT1/2,
 3, 45,0, 60,100, 64,70,BT1/2,  //1

//第三十三小节
//Em和弦
 4, 60,0, 64,0, 40,101, 59,100,BT1/2,  //7
 1, 55,70,BT1/2,  
 4, 55,0, 59,0, 59,70, 57,100, BT1/2,  //6
 5, 40,0, 59,0, 57,0, 64,70, 55,100, BT1/2,  //5
//Am和弦
 4, 64,0, 55,0, 45,101, 57,100, BT1/2, //6
 1, 57,70,BT1/2,
 2, 57,0, 60,70,BT1/2,
 4, 60,0, 45,0, 64,70, 57,0,BT1/2,

//第三十四小节
//Dm和弦
 3, 64,0,  50,101, 62,100, BT1/2,  //2
 1, 57,70,BT1/2,
 4, 57,0,  62,0, 62,70, 62,100, BT1/4, //2
 1, 60,100,BT1/4,  //1
 5, 62,0, 60,0, 50,0, 65,70, 57,100, BT1/4, //6 	 
 2, 57,0, 55,100,BT1/4,  //5
//Am和弦
 4, 65,0, 55,0, 45,101, 57,100,BT1/2,  //6
 1, 57,70,BT1/2,
 2, 57,0, 60,70,BT1/2,
 3, 45,0, 60,100, 64,70,BT1/2,  //1

//第三十五小节
//Em和弦
 4, 60,0, 64,0, 40,101, 59,100,BT1/2,  //7
 1, 55,70,BT1/2,  
 4, 55,0, 59,0, 59,70, 57,100, BT1/2,  //6
 5, 40,0, 59,0, 57,0, 64,70, 55,100, BT1/2,  //5
//Am和弦
 4, 64,0, 55,0, 45,101, 57,100, BT1/2, //6
 1, 57,70,BT1/2,
 2, 57,0, 60,70,BT1/2,
 4, 60,0, 45,0, 64,70, 57,0,BT1/2,
 //第三十六小节
 
//Dm和弦
 3, 64,0,  50,101, 62,100, BT1/2,  //2
 1, 57,70,BT1/2,
 4, 57,0,  62,0, 62,70, 62,100, BT1/4, //2
 1, 60,100,BT1/4,  //1
 5, 62,0, 60,0, 50,0, 65,70, 57,100, BT1/4, //6 	 
 2, 57,0, 55,100,BT1/4,  //5
//Am和弦
 4, 65,0, 55,0, 45,101, 57,100,BT1/2,  //6
 1, 57,70,BT1/2,
 2, 57,0, 60,70,BT1/2,
//后面不直接用BT1表示，做渐慢处理
 3, 45,0, 60,100, 64,70,  36,24/2,  //1

//第三十七小节
//Em和弦
 4, 60,0, 64,0, 40,101, 59,100, 40,24/2,  //7
 1, 55,70,   44,24/2,  
 4, 55,0, 59,0, 59,70, 57,100,  48,24/2,  //6
 5, 40,0, 59,0, 57,0, 64,70, 55,100, 52,24/2,  //5
//Am和弦
 4, 64,0, 55,0, 45,101, 57,100, 56,18, //6
 
 3, 45,0, 56,0, 76-12,70,BT1/4,
 1, 69,70,BT1/4,
 1, 72,70,BT1/4,
 1, 88,70,BT1,
 4, 76,0, 81,0, 84,0, 100,0, BT1
};

#else

const uint8 SongTable[]=
{
 0,8,
 //引子
 1, 83,70, BT1/2, //7
 2, 83,0, 84,90, BT1/2, //1
 2, 84,0, 86,90, BT1/2, //2
 2, 86,0, 91,90, BT1/2, //5
 2, 91,0, 89,90, BT1/2, //4
 2, 89,0, 81,90, BT1/2, //6
 2, 81,0, 79,90, BT1/2, //5
 2, 79,0, 88,90, BT1/2, //3
};

#endif


/***********************自动播放歌曲*******************************/
void PlaySong(void)
{
 uint16 i,k,t;
 uint8 j,n;
 uint8 *p;
 
 uint8 Buf[4];
 
 Buf[0]=0x09; //Note On的MIDI事件消息包头
 Buf[1]=0x90; //在通道0上发送Note On消息
 
 //开始播放前，关掉所有以前的声音 
 Buf[3]=0x00; //力度设置为0
 for(i=20;i<128;i++)
 {
  Buf[2]=i;
  UsbChipWriteEndpointBuffer(1,4,Buf); //往端点1写数据
  //如果数据未发送完毕，则等待传输完成
  while(!(AT91C_UDP_CSR[1]&(1<<0)));  //等待输入完成标志被设置为1  
  ClrCsr(1,1<<0);   //清除端点1的输入完成中断标志位
 }
 DelayXms(500); //等待半秒钟安静了才开始播放
 KeyDown=0;     //清除按键事件
 
 p=(uint8 *)SongTable;   //歌曲音符数组
  
 i=0;
 //获取歌曲的行数
 k=p[i++];
 k=(k<<8)+p[i++];
 //播放所有行
 while(k--)
 {
  //获取该行有多少个音符
  n=p[i++];
  //依次发送所有音符
  for(j=0;j<n;j++)
  {
   if(p[i]==0xFF) //遇到0xFF则切换通道
   {
    if(Buf[1]==0x90)Buf[1]=0x99; //切换到打击乐通道
    else Buf[1]=0x90; //切换回旋律乐通道
    i++; //跳过本字节
   }
   //获取某一音符的音高和力度
   Buf[2]=p[i++];
   Buf[3]=p[i++];
   UsbChipWriteEndpointBuffer(1,4,Buf); //往端点1写数据
   //如果数据未发送完毕，则等待传输完成
   while(!(AT91C_UDP_CSR[1]&(1<<0)));  //等待输入完成标志被设置为1  
   ClrCsr(1,1<<0);   //清除端点1的输入完成中断标志位
  }
  //计算实际的时间
  t=p[i++];
  t*=p[i++];
  //延时等待本行播放完毕
  DelayXms(t);
  
  //如果有按键按下，则退出播放
  if(KeyDown)
  {
   KeyDown=0;   //清除按键
   break;
  }
 }
 //退出播放时，要关闭所有音符
 Buf[1]=0x90; 
 Buf[3]=0x00;
 for(i=20;i<128;i++)
 {
  Buf[2]=i;
  UsbChipWriteEndpointBuffer(1,4,Buf); //往端点1写数据
  //如果数据未发送完毕，则等待传输完成
  while(!(AT91C_UDP_CSR[1]&(1<<0)));  //等待输入完成标志被设置为1  
  ClrCsr(1,1<<0);   //清除端点1的输入完成中断标志位
 }
}
/*******************************************************************/