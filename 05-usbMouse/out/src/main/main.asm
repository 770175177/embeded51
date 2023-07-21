;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uart_ISR
	.globl _timer0_ISR
	.globl _ext0_ISR
	.globl _main
	.globl _usb_bus_isr_ep2_in
	.globl _usb_bus_isr_ep2_out
	.globl _usb_bus_isr_ep1_in
	.globl _usb_bus_isr_ep1_out
	.globl _usb_bus_isr_ep0_in
	.globl _usb_bus_isr_ep0_out
	.globl _usb_bus_isr_reset
	.globl _usb_bus_isr_suspend
	.globl _usb_connect
	.globl _usb_disconnect
	.globl _D12_write_endpoint_buffer
	.globl _D12_read_id
	.globl _D12_read_byte
	.globl _D12_write_command
	.globl _print_short_hex
	.globl _Prints
	.globl _init_uart
	.globl _init_key_board
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _SendReport
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_SendReport_Buf_65536_39:
	.ds 4
_timer0_ISR_i_65536_52:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_ext0_ISR
	.ds	5
	ljmp	_timer0_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_uart_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;i                         Allocated with name '_timer0_ISR_i_65536_52'
;------------------------------------------------------------
;	src/main.c:152: static uint32 i = 0;
	clr	a
	mov	_timer0_ISR_i_65536_52,a
	mov	(_timer0_ISR_i_65536_52 + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;ret                       Allocated to registers 
;i                         Allocated to registers 
;key                       Allocated to registers 
;id                        Allocated to registers r6 r7 
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:12: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:20: init_key_board();
	lcall	_init_key_board
;	src/main.c:21: init_uart();
	lcall	_init_uart
;	src/main.c:24: id = D12_read_id();
	lcall	_D12_read_id
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:25: Prints("read pdiusb12 id is: ");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_Prints
	pop	ar6
	pop	ar7
;	src/main.c:26: print_short_hex(id);
	mov	dpl,r6
	mov	dph,r7
	lcall	_print_short_hex
;	src/main.c:27: Prints("\n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_Prints
;	src/main.c:29: usb_disconnect();
	lcall	_usb_disconnect
;	src/main.c:30: usb_connect();
	lcall	_usb_connect
;	src/main.c:31: ConfigValue=0;
	mov	_ConfigValue,#0x00
;	src/main.c:33: while(1) {
00128$:
;	src/main.c:37: if(D12_get_intrrupt() == 0) {
	jb	_P3_2,00118$
;	src/main.c:38: D12_write_command(D12_READ_INTERRUPT_REG);
	mov	dpl,#0xf4
	lcall	_D12_write_command
;	src/main.c:39: status = D12_read_byte();
	lcall	_D12_read_byte
;	src/main.c:40: if(status & 0x80)
	mov	a,dpl
	mov	r7,a
	jnb	acc.7,00102$
;	src/main.c:41: usb_bus_isr_suspend();
	push	ar7
	lcall	_usb_bus_isr_suspend
	pop	ar7
00102$:
;	src/main.c:42: if(status & 0x40)
	mov	a,r7
	jnb	acc.6,00104$
;	src/main.c:43: usb_bus_isr_reset();
	push	ar7
	lcall	_usb_bus_isr_reset
	pop	ar7
00104$:
;	src/main.c:44: if(status & 0x01)
	mov	a,r7
	jnb	acc.0,00106$
;	src/main.c:45: usb_bus_isr_ep0_out();
	push	ar7
	lcall	_usb_bus_isr_ep0_out
	pop	ar7
00106$:
;	src/main.c:46: if(status & 0x02)
	mov	a,r7
	jnb	acc.1,00108$
;	src/main.c:47: usb_bus_isr_ep0_in();
	push	ar7
	lcall	_usb_bus_isr_ep0_in
	pop	ar7
00108$:
;	src/main.c:48: if(status & 0x04)
	mov	a,r7
	jnb	acc.2,00110$
;	src/main.c:49: usb_bus_isr_ep1_out();
	push	ar7
	lcall	_usb_bus_isr_ep1_out
	pop	ar7
00110$:
;	src/main.c:50: if(status & 0x08)
	mov	a,r7
	jnb	acc.3,00112$
;	src/main.c:51: usb_bus_isr_ep1_in();
	push	ar7
	lcall	_usb_bus_isr_ep1_in
	pop	ar7
00112$:
;	src/main.c:52: if(status & 0x10)
	mov	a,r7
	jnb	acc.4,00114$
;	src/main.c:53: usb_bus_isr_ep2_out();
	push	ar7
	lcall	_usb_bus_isr_ep2_out
	pop	ar7
00114$:
;	src/main.c:54: if(status & 0x20)
	mov	a,r7
	jnb	acc.5,00118$
;	src/main.c:55: usb_bus_isr_ep2_in();
	lcall	_usb_bus_isr_ep2_in
00118$:
;	src/main.c:58: if (ConfigValue != 0) {
	mov	a,_ConfigValue
	jz	00128$
;	src/main.c:59: LED = ~KeyPress;
	mov	r0,#_KeyPress
	mov	a,@r0
	cpl	a
	mov	_P2,a
;	src/main.c:60: if (!Ep1InIsBusy) {
	mov	a,_Ep1InIsBusy
;	src/main.c:61: KeyCanChange = 0;
	jnz	00128$
	mov	r0,#_KeyCanChange
	mov	@r0,a
;	src/main.c:62: if (KeyUp || KeyDown || KeyPress)
	mov	r0,#_KeyUp
	mov	a,@r0
	jnz	00119$
	mov	r0,#_KeyDown
	mov	a,@r0
	jnz	00119$
	mov	r0,#_KeyPress
	mov	a,@r0
	jz	00120$
00119$:
;	src/main.c:63: SendReport();
	lcall	_SendReport
00120$:
;	src/main.c:64: KeyCanChange = 1;
	mov	r0,#_KeyCanChange
	mov	@r0,#0x01
;	src/main.c:68: }
	ljmp	00128$
;------------------------------------------------------------
;Allocation info for local variables in function 'SendReport'
;------------------------------------------------------------
;Buf                       Allocated with name '_SendReport_Buf_65536_39'
;------------------------------------------------------------
;	src/main.c:70: void SendReport(void)
;	-----------------------------------------
;	 function SendReport
;	-----------------------------------------
_SendReport:
;	src/main.c:75: int8 Buf[4]={0,0,0,0};
	mov	_SendReport_Buf_65536_39,#0x00
	mov	(_SendReport_Buf_65536_39 + 0x0001),#0x00
	mov	(_SendReport_Buf_65536_39 + 0x0002),#0x00
	mov	(_SendReport_Buf_65536_39 + 0x0003),#0x00
;	src/main.c:78: KeyUp &=~(KEY1|KEY2|KEY3|KEY4|KEY5|KEY6);
	mov	r0,#_KeyUp
	mov	a,@r0
	anl	a,#0xc0
	mov	@r0,a
;	src/main.c:79: KeyDown &=~(KEY1|KEY2|KEY3|KEY4|KEY5|KEY6);
	mov	r0,#_KeyDown
	mov	a,@r0
	anl	a,#0xc0
	mov	@r0,a
;	src/main.c:83: if((KeyPress&(~(KEY7|KEY8)))||KeyUp||KeyDown)
	mov	r0,#_KeyPress
	mov	a,@r0
	anl	a,#0x3f
	jz	00164$
	sjmp	00117$
00164$:
	mov	r0,#_KeyUp
	mov	a,@r0
	jnz	00117$
	mov	r0,#_KeyDown
	mov	a,@r0
	jz	00118$
00117$:
;	src/main.c:85: if(KeyPress & KEY1) //??KEY1????????????X?????
	mov	r0,#_KeyPress
	mov	a,@r0
	jnb	acc.0,00102$
;	src/main.c:87: Buf[1]=-1;  //?????????????
	mov	(_SendReport_Buf_65536_39 + 0x0001),#0xff
00102$:
;	src/main.c:89: if(KeyPress & KEY2) //??KEY2????????????X?????
	mov	r0,#_KeyPress
	mov	a,@r0
	jnb	acc.1,00104$
;	src/main.c:91: Buf[1]=1;   //?????????????
	mov	(_SendReport_Buf_65536_39 + 0x0001),#0x01
00104$:
;	src/main.c:93: if(KeyPress & KEY3) //??KEY3????????????Y?????
	mov	r0,#_KeyPress
	mov	a,@r0
	jnb	acc.2,00106$
;	src/main.c:95: Buf[2]=-1;   //?????????????
	mov	(_SendReport_Buf_65536_39 + 0x0002),#0xff
00106$:
;	src/main.c:97: if(KeyPress & KEY4)  //??KEY4????????????Y?????
	mov	r0,#_KeyPress
	mov	a,@r0
	jnb	acc.3,00108$
;	src/main.c:99: Buf[2]=1;  //?????????????
	mov	(_SendReport_Buf_65536_39 + 0x0002),#0x01
00108$:
;	src/main.c:101: if(KeyPress & KEY5)  //??KEY5????????????????
	mov	r0,#_KeyPress
	mov	a,@r0
	jnb	acc.4,00110$
;	src/main.c:103: Buf[3]=-1;  //?????????????
	mov	(_SendReport_Buf_65536_39 + 0x0003),#0xff
00110$:
;	src/main.c:105: if(KeyPress & KEY6)  //??KEY6???????????????
	mov	r0,#_KeyPress
	mov	a,@r0
	jnb	acc.5,00112$
;	src/main.c:107: Buf[3]=1;   //?????????????
	mov	(_SendReport_Buf_65536_39 + 0x0003),#0x01
00112$:
;	src/main.c:109: if(KeyPress & KEY7)  //????
	mov	r0,#_KeyPress
	mov	a,@r0
	jnb	acc.6,00114$
;	src/main.c:111: Buf[0]|=0x01;  //D0?????
	mov	a,#0x01
	orl	a,_SendReport_Buf_65536_39
	mov	_SendReport_Buf_65536_39,a
00114$:
;	src/main.c:113: if(KeyPress & KEY8)  //????
	mov	r0,#_KeyPress
	mov	a,@r0
	jnb	acc.7,00116$
;	src/main.c:115: Buf[0]|=0x02;  //D1?????
	mov	a,#0x02
	orl	a,_SendReport_Buf_65536_39
	mov	_SendReport_Buf_65536_39,a
00116$:
;	src/main.c:118: D12_write_endpoint_buffer(3, 4, Buf);
	mov	_D12_write_endpoint_buffer_PARM_3,#_SendReport_Buf_65536_39
	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),#0x00
	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),#0x40
	mov	_D12_write_endpoint_buffer_PARM_2,#0x04
	mov	dpl,#0x03
	lcall	_D12_write_endpoint_buffer
;	src/main.c:119: Ep1InIsBusy=1;  //????????
	mov	_Ep1InIsBusy,#0x01
00118$:
;	src/main.c:122: KeyUp=0;
	mov	r0,#_KeyUp
	mov	@r0,#0x00
;	src/main.c:123: KeyDown=0;
	mov	r0,#_KeyDown
	mov	@r0,#0x00
;	src/main.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ext0_ISR'
;------------------------------------------------------------
;status                    Allocated to registers r7 
;------------------------------------------------------------
;	src/main.c:126: void ext0_ISR(void) __interrupt (0)
;	-----------------------------------------
;	 function ext0_ISR
;	-----------------------------------------
_ext0_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	src/main.c:130: D12_write_command(D12_READ_INTERRUPT_REG);
	mov	dpl,#0xf4
	lcall	_D12_write_command
;	src/main.c:131: status = D12_read_byte();
	lcall	_D12_read_byte
;	src/main.c:132: if(status & 0x80)
	mov	a,dpl
	mov	r7,a
	jnb	acc.7,00102$
;	src/main.c:133: usb_bus_isr_suspend();
	push	ar7
	lcall	_usb_bus_isr_suspend
	pop	ar7
00102$:
;	src/main.c:134: if(status & 0x40)
	mov	a,r7
	jnb	acc.6,00104$
;	src/main.c:135: usb_bus_isr_reset();
	push	ar7
	lcall	_usb_bus_isr_reset
	pop	ar7
00104$:
;	src/main.c:136: if(status & 0x01)
	mov	a,r7
	jnb	acc.0,00106$
;	src/main.c:137: usb_bus_isr_ep0_out();
	push	ar7
	lcall	_usb_bus_isr_ep0_out
	pop	ar7
00106$:
;	src/main.c:138: if(status & 0x02)
	mov	a,r7
	jnb	acc.1,00108$
;	src/main.c:139: usb_bus_isr_ep0_in();
	push	ar7
	lcall	_usb_bus_isr_ep0_in
	pop	ar7
00108$:
;	src/main.c:140: if(status & 0x04)
	mov	a,r7
	jnb	acc.2,00110$
;	src/main.c:141: usb_bus_isr_ep1_out();
	push	ar7
	lcall	_usb_bus_isr_ep1_out
	pop	ar7
00110$:
;	src/main.c:142: if(status & 0x08)
	mov	a,r7
	jnb	acc.3,00112$
;	src/main.c:143: usb_bus_isr_ep1_in();
	push	ar7
	lcall	_usb_bus_isr_ep1_in
	pop	ar7
00112$:
;	src/main.c:144: if(status & 0x10)
	mov	a,r7
	jnb	acc.4,00114$
;	src/main.c:145: usb_bus_isr_ep2_out();
	push	ar7
	lcall	_usb_bus_isr_ep2_out
	pop	ar7
00114$:
;	src/main.c:146: if(status & 0x20)
	mov	a,r7
	jnb	acc.5,00117$
;	src/main.c:147: usb_bus_isr_ep2_in();
	lcall	_usb_bus_isr_ep2_in
00117$:
;	src/main.c:148: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;i                         Allocated with name '_timer0_ISR_i_65536_52'
;------------------------------------------------------------
;	src/main.c:150: void timer0_ISR(void) __interrupt (1)
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	push	acc
	push	b
	push	ar7
	push	ar1
	push	ar0
	push	psw
	mov	psw,#0x00
;	src/main.c:154: TH0 = (65536 - TIMER0_RELOAD_NUM) / 256;
	mov	_TH0,#0xdc
;	src/main.c:155: TL0 = (65536 - TIMER0_RELOAD_NUM) % 256;
	mov	_TL0,#0x00
;	src/main.c:157: i++;
	inc	_timer0_ISR_i_65536_52
	clr	a
	cjne	a,_timer0_ISR_i_65536_52,00128$
	inc	(_timer0_ISR_i_65536_52 + 1)
00128$:
;	src/main.c:158: if (i > 200) {
	clr	c
	mov	a,#0xc8
	subb	a,_timer0_ISR_i_65536_52
	clr	a
	subb	a,(_timer0_ISR_i_65536_52 + 1)
	jnc	00102$
;	src/main.c:159: i = 0;
	clr	a
	mov	_timer0_ISR_i_65536_52,a
	mov	(_timer0_ISR_i_65536_52 + 1),a
00102$:
;	src/main.c:163: if (!KeyCanChange)
	mov	r0,#_KeyCanChange
	mov	a,@r0
	jnz	00104$
;	src/main.c:164: return;
	sjmp	00110$
00104$:
;	src/main.c:166: KeyCurrent = GetKeyValue();
	mov	a,_P1
	cpl	a
	mov	r7,a
	mov	r0,#_KeyCurrent
	mov	@r0,ar7
;	src/main.c:168: if (KeyCurrent != KeyOld) {
	mov	r0,#_KeyCurrent
	mov	r1,#_KeyOld
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00131$
	sjmp	00108$
00131$:
;	src/main.c:169: KeyNoChangedTime = 0;
	mov	r0,#_KeyNoChangedTime
	mov	@r0,#0x00
;	src/main.c:170: KeyOld = KeyCurrent;
	mov	r0,#_KeyCurrent
	mov	r1,#_KeyOld
	mov	a,@r0
	mov	@r1,a
;	src/main.c:171: return;
	sjmp	00110$
00108$:
;	src/main.c:174: KeyNoChangedTime++;
	mov	r0,#_KeyNoChangedTime
	mov	a,@r0
	mov	r0,#_KeyNoChangedTime
	inc	a
	mov	@r0,a
;	src/main.c:175: if (KeyNoChangedTime >= 1) {
	mov	r0,#_KeyNoChangedTime
	cjne	@r0,#0x01,00132$
00132$:
	jc	00110$
;	src/main.c:176: KeyNoChangedTime = 1;
	mov	r0,#_KeyNoChangedTime
	mov	@r0,#0x01
;	src/main.c:177: KeyPress = KeyOld;
	mov	r0,#_KeyOld
	mov	r1,#_KeyPress
	mov	a,@r0
	mov	@r1,a
;	src/main.c:178: KeyDown |= (~KeyLast) & (KeyPress);
	mov	r0,#_KeyLast
	mov	a,@r0
	cpl	a
	mov	r7,a
	mov	r0,#_KeyPress
	mov	a,@r0
	anl	a,r7
	mov	r0,#_KeyDown
	orl	a,@r0
	mov	@r0,a
;	src/main.c:179: KeyUp |= KeyLast & (KeyPress);
	mov	r0,#_KeyLast
	mov	r1,#_KeyPress
	mov	a,@r1
	anl	a,@r0
	mov	r0,#_KeyUp
	orl	a,@r0
	mov	@r0,a
;	src/main.c:180: KeyLast = KeyPress;
	mov	r0,#_KeyPress
	mov	r1,#_KeyLast
	mov	a,@r0
	mov	@r1,a
00110$:
;	src/main.c:183: }
	pop	psw
	pop	ar0
	pop	ar1
	pop	ar7
	pop	b
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_ISR'
;------------------------------------------------------------
;	src/main.c:185: void uart_ISR(void)	__interrupt (4)
;	-----------------------------------------
;	 function uart_ISR
;	-----------------------------------------
_uart_ISR:
;	src/main.c:187: if (RI) {
;	src/main.c:188: RI = 0;			/* clear recieve interrupt */
;	assignBit
	jbc	_RI,00104$
;	src/main.c:190: TI = 0;
;	assignBit
	clr	_TI
;	src/main.c:191: sending = 0;
	mov	_sending,#0x00
00104$:
;	src/main.c:193: }
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "read pdiusb12 id is: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
