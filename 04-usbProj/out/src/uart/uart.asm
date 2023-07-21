;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _hex_table
	.globl _putchar
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
	.globl _sending
	.globl _init_uart
	.globl _uart_put_char
	.globl _Prints
	.globl _print_short_hex
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
_sending::
	.ds 1
_print_short_hex_display_buf_65536_13:
	.ds 7
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	src/uart.c:4: volatile uint8 sending = 0;
	mov	_sending,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'init_uart'
;------------------------------------------------------------
;	src/uart.c:13: void init_uart(void)
;	-----------------------------------------
;	 function init_uart
;	-----------------------------------------
_init_uart:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/uart.c:15: EA = 0;
;	assignBit
	clr	_EA
;	src/uart.c:16: TMOD &= 0xF0;
	anl	_TMOD,#0xf0
;	src/uart.c:17: TMOD |= 0x20;       /* timer1 mode 2, auto reload */
	orl	_TMOD,#0x20
;	src/uart.c:18: SCON = 0x50;        /* uart mode 1 */
	mov	_SCON,#0x50
;	src/uart.c:19: TH1 = 256 - fclk / (baudrate * 12 * 16);
	mov	_TH1,#0xf4
;	src/uart.c:20: TL1 = 256 - fclk / (baudrate * 12 * 16);
	mov	_TL1,#0xf4
;	src/uart.c:21: PCON |= 0x80;       /* uart baud rate double */
	orl	_PCON,#0x80
;	src/uart.c:22: ES = 1;             /* enable uart interrupt */
;	assignBit
	setb	_ES
;	src/uart.c:23: TR1 = 1;            /* start timer1 */
;	assignBit
	setb	_TR1
;	src/uart.c:24: REN = 1;            /* enable recieve */
;	assignBit
	setb	_REN
;	src/uart.c:25: EA = 1;             /* enable all interrupt */
;	assignBit
	setb	_EA
;	src/uart.c:26: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_char'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	src/uart.c:33: void uart_put_char(uint8 c)
;	-----------------------------------------
;	 function uart_put_char
;	-----------------------------------------
_uart_put_char:
	mov	_SBUF,dpl
;	src/uart.c:36: sending = 1;
	mov	_sending,#0x01
;	src/uart.c:37: while(sending);
00101$:
	mov	a,_sending
	jnz	00101$
;	src/uart.c:38: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Prints'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	src/uart.c:45: void Prints(uint8 *s)
;	-----------------------------------------
;	 function Prints
;	-----------------------------------------
_Prints:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/uart.c:47: while(*s != '\0') {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	src/uart.c:48: uart_put_char(*s);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uart_put_char
	pop	ar5
	pop	ar6
	pop	ar7
;	src/uart.c:49: s++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00104$:
;	src/uart.c:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_short_hex'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;display_buf               Allocated with name '_print_short_hex_display_buf_65536_13'
;------------------------------------------------------------
;	src/uart.c:58: void print_short_hex(uint16 x)
;	-----------------------------------------
;	 function print_short_hex
;	-----------------------------------------
_print_short_hex:
	mov	r6,dpl
	mov	r7,dph
;	src/uart.c:63: display_buf[6] = 0;
	mov	(_print_short_hex_display_buf_65536_13 + 0x0006),#0x00
;	src/uart.c:64: display_buf[0] = '0';
	mov	_print_short_hex_display_buf_65536_13,#0x30
;	src/uart.c:65: display_buf[1] = 'x';
	mov	(_print_short_hex_display_buf_65536_13 + 0x0001),#0x78
;	src/uart.c:67: for (i = 5; i >= 2; i--) {
	mov	r5,#0x05
00102$:
;	src/uart.c:68: display_buf[i] = hex_table[x & 0xF];
	mov	a,r5
	add	a,#_print_short_hex_display_buf_65536_13
	mov	r1,a
	mov	ar3,r6
	anl	ar3,#0x0f
	mov	r4,#0x00
	mov	a,r3
	add	a,#_hex_table
	mov	dpl,a
	mov	a,r4
	addc	a,#(_hex_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
;	src/uart.c:69: x >>= 4;
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
;	src/uart.c:67: for (i = 5; i >= 2; i--) {
	dec	r5
	cjne	r5,#0x02,00115$
00115$:
	jnc	00102$
;	src/uart.c:72: Prints(display_buf);
	mov	dptr,#_print_short_hex_display_buf_65536_13
	mov	b,#0x40
;	src/uart.c:73: }
	ljmp	_Prints
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	src/uart.c:75: char putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	src/uart.c:77: uart_put_char(c);
	mov  r7,dpl
	push	ar7
	lcall	_uart_put_char
	pop	ar7
;	src/uart.c:79: return c;
	mov	dpl,r7
;	src/uart.c:80: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_hex_table:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
