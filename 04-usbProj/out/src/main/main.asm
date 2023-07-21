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
	.globl _main
	.globl _D12_read_id
	.globl _print_short_hex
	.globl _Prints
	.globl _init_uart
	.globl _init_key_board
	.globl _delay_ms
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_timer0_ISR_i_65536_18:
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
	reti
	.ds	7
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
;i                         Allocated with name '_timer0_ISR_i_65536_18'
;------------------------------------------------------------
;	src/main.c:31: static uint32 i = 0;
	clr	a
	mov	_timer0_ISR_i_65536_18,a
	mov	(_timer0_ISR_i_65536_18 + 1),a
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
;------------------------------------------------------------
;	src/main.c:8: void main()
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
;	src/main.c:15: init_key_board();
	lcall	_init_key_board
;	src/main.c:16: init_uart();
	lcall	_init_uart
;	src/main.c:18: id = D12_read_id();
	lcall	_D12_read_id
	mov	r6,dpl
	mov	r7,dph
;	src/main.c:19: Prints("read pdiusb12 id is: ");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_Prints
	pop	ar6
	pop	ar7
;	src/main.c:20: print_short_hex(id);
	mov	dpl,r6
	mov	dph,r7
	lcall	_print_short_hex
;	src/main.c:21: Prints("\n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_Prints
;	src/main.c:23: while(1) {
00102$:
;	src/main.c:24: Prints("hello world!\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_Prints
;	src/main.c:25: delay_ms(3000);
	mov	dptr,#0x0bb8
	lcall	_delay_ms
;	src/main.c:27: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
;i                         Allocated with name '_timer0_ISR_i_65536_18'
;------------------------------------------------------------
;	src/main.c:29: void timer0_ISR(void) __interrupt (1)
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
;	src/main.c:33: TH0 = (65536 - TIMER0_RELOAD_NUM) / 256;
	mov	_TH0,#0xdc
;	src/main.c:34: TL0 = (65536 - TIMER0_RELOAD_NUM) % 256;
	mov	_TL0,#0x00
;	src/main.c:36: i++;
	inc	_timer0_ISR_i_65536_18
	clr	a
	cjne	a,_timer0_ISR_i_65536_18,00128$
	inc	(_timer0_ISR_i_65536_18 + 1)
00128$:
;	src/main.c:37: if (i > 200) {
	clr	c
	mov	a,#0xc8
	subb	a,_timer0_ISR_i_65536_18
	clr	a
	subb	a,(_timer0_ISR_i_65536_18 + 1)
	jnc	00102$
;	src/main.c:38: i = 0;
	clr	a
	mov	_timer0_ISR_i_65536_18,a
	mov	(_timer0_ISR_i_65536_18 + 1),a
;	src/main.c:39: LED8 = !LED8;
	cpl	_P2_7
00102$:
;	src/main.c:42: if (!KeyCanChange)
	mov	r0,#_KeyCanChange
	mov	a,@r0
	jnz	00104$
;	src/main.c:43: return;
	sjmp	00110$
00104$:
;	src/main.c:45: KeyCurrent = GetKeyValue();
	mov	a,_P1
	cpl	a
	mov	r7,a
	mov	r0,#_KeyCurrent
	mov	@r0,ar7
;	src/main.c:47: if (KeyCurrent != KeyOld) {
	mov	r0,#_KeyCurrent
	mov	r1,#_KeyOld
	mov	b,@r0
	mov	a,@r1
	cjne	a,b,00131$
	sjmp	00108$
00131$:
;	src/main.c:48: KeyNoChangedTime = 0;
	mov	r0,#_KeyNoChangedTime
	mov	@r0,#0x00
;	src/main.c:49: KeyOld = KeyCurrent;
	mov	r0,#_KeyCurrent
	mov	r1,#_KeyOld
	mov	a,@r0
	mov	@r1,a
;	src/main.c:50: return;
	sjmp	00110$
00108$:
;	src/main.c:53: KeyNoChangedTime++;
	mov	r0,#_KeyNoChangedTime
	mov	a,@r0
	mov	r0,#_KeyNoChangedTime
	inc	a
	mov	@r0,a
;	src/main.c:54: if (KeyNoChangedTime >= 1) {
	mov	r0,#_KeyNoChangedTime
	cjne	@r0,#0x01,00132$
00132$:
	jc	00110$
;	src/main.c:55: KeyNoChangedTime = 1;
	mov	r0,#_KeyNoChangedTime
	mov	@r0,#0x01
;	src/main.c:56: KeyPress = KeyOld;
	mov	r0,#_KeyOld
	mov	r1,#_KeyPress
	mov	a,@r0
	mov	@r1,a
;	src/main.c:57: KeyDown |= (~KeyLast) & (KeyPress);
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
;	src/main.c:58: KeyUp |= KeyLast & (KeyPress);
	mov	r0,#_KeyLast
	mov	r1,#_KeyPress
	mov	a,@r1
	anl	a,@r0
	mov	r0,#_KeyUp
	orl	a,@r0
	mov	@r0,a
;	src/main.c:59: KeyLast = KeyPress;
	mov	r0,#_KeyPress
	mov	r1,#_KeyLast
	mov	a,@r0
	mov	@r1,a
00110$:
;	src/main.c:62: }
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
;	src/main.c:64: void uart_ISR(void)	__interrupt (4)
;	-----------------------------------------
;	 function uart_ISR
;	-----------------------------------------
_uart_ISR:
;	src/main.c:66: if (RI) {
;	src/main.c:67: RI = 0;			/* clear recieve interrupt */
;	assignBit
	jbc	_RI,00104$
;	src/main.c:69: TI = 0;
;	assignBit
	clr	_TI
;	src/main.c:70: sending = 0;
	mov	_sending,#0x00
00104$:
;	src/main.c:72: }
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
	.area CONST   (CODE)
___str_2:
	.ascii "hello world!"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
