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
	.globl _dump_hex_PARM_2
	.globl _sending
	.globl _init_uart
	.globl _uart_put_char
	.globl _Prints
	.globl _print_short_hex
	.globl _print_long_int
	.globl _printc
	.globl _print_hex
	.globl _dump_hex
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
_print_short_hex_display_buf_65536_17:
	.ds 7
_print_long_int_display_buf_65536_21:
	.ds 10
_dump_hex_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;	src/uart.c:20: TH1 = UART_BAUD_9600_RELOADE_NUM;
	mov	_TH1,#0xf4
;	src/uart.c:21: TL1 = UART_BAUD_9600_RELOADE_NUM;
	mov	_TL1,#0xf4
;	src/uart.c:22: PCON |= 0x80;       /* uart baud rate double */
	orl	_PCON,#0x80
;	src/uart.c:23: ES = 1;             /* enable uart interrupt */
;	assignBit
	setb	_ES
;	src/uart.c:24: TR1 = 1;            /* start timer1 */
;	assignBit
	setb	_TR1
;	src/uart.c:25: REN = 1;            /* enable recieve */
;	assignBit
	setb	_REN
;	src/uart.c:26: EA = 1;             /* enable all interrupt */
;	assignBit
	setb	_EA
;	src/uart.c:27: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_put_char'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	src/uart.c:34: void uart_put_char(uint8 c)
;	-----------------------------------------
;	 function uart_put_char
;	-----------------------------------------
_uart_put_char:
	mov	_SBUF,dpl
;	src/uart.c:37: sending = 1;
	mov	_sending,#0x01
;	src/uart.c:38: while(sending);
00101$:
	mov	a,_sending
	jnz	00101$
;	src/uart.c:39: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Prints'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	src/uart.c:46: void Prints(uint8 *s)
;	-----------------------------------------
;	 function Prints
;	-----------------------------------------
_Prints:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/uart.c:48: while(*s != '\0') {
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	src/uart.c:49: uart_put_char(*s);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uart_put_char
	pop	ar5
	pop	ar6
	pop	ar7
;	src/uart.c:50: s++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00104$:
;	src/uart.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_short_hex'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;display_buf               Allocated with name '_print_short_hex_display_buf_65536_17'
;------------------------------------------------------------
;	src/uart.c:59: void print_short_hex(uint16 x)
;	-----------------------------------------
;	 function print_short_hex
;	-----------------------------------------
_print_short_hex:
	mov	r6,dpl
	mov	r7,dph
;	src/uart.c:64: display_buf[6] = 0;
	mov	(_print_short_hex_display_buf_65536_17 + 0x0006),#0x00
;	src/uart.c:65: display_buf[0] = '0';
	mov	_print_short_hex_display_buf_65536_17,#0x30
;	src/uart.c:66: display_buf[1] = 'x';
	mov	(_print_short_hex_display_buf_65536_17 + 0x0001),#0x78
;	src/uart.c:68: for (i = 5; i >= 2; i--) {
	mov	r5,#0x05
00102$:
;	src/uart.c:69: display_buf[i] = hex_table[x & 0xF];
	mov	a,r5
	add	a,#_print_short_hex_display_buf_65536_17
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
;	src/uart.c:70: x >>= 4;
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
;	src/uart.c:68: for (i = 5; i >= 2; i--) {
	dec	r5
	clr	c
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00102$
;	src/uart.c:73: Prints(display_buf);
	mov	dptr,#_print_short_hex_display_buf_65536_17
	mov	b,#0x40
;	src/uart.c:74: }
	ljmp	_Prints
;------------------------------------------------------------
;Allocation info for local variables in function 'print_long_int'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;display_buf               Allocated with name '_print_long_int_display_buf_65536_21'
;------------------------------------------------------------
;	src/uart.c:76: void print_long_int(uint32 x)
;	-----------------------------------------
;	 function print_long_int
;	-----------------------------------------
_print_long_int:
	mov	r6,dpl
	mov	r7,dph
;	src/uart.c:81: display_buf[5] = 0;
	mov	(_print_long_int_display_buf_65536_21 + 0x0005),#0x00
;	src/uart.c:83: for (i = 9; i >= 0; i--) {
	mov	r5,#0x09
00106$:
;	src/uart.c:84: display_buf[i] = '0' + x % 10;
	mov	a,r5
	add	a,#_print_long_int_display_buf_65536_21
	mov	r1,a
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	__moduint
	mov	r3,dpl
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,#0x30
	add	a,r3
	mov	@r1,a
;	src/uart.c:85: x /= 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
;	src/uart.c:83: for (i = 9; i >= 0; i--) {
	dec	r5
	mov	a,r5
	jnb	acc.7,00106$
;	src/uart.c:88: for (i = 0; i < 9; i++)
	mov	r7,#0x00
00108$:
;	src/uart.c:89: if (display_buf[i] != '0')
	mov	a,r7
	add	a,#_print_long_int_display_buf_65536_21
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x30,00120$
;	src/uart.c:88: for (i = 0; i < 9; i++)
	inc	r7
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x89
	jc	00108$
00120$:
00111$:
;	src/uart.c:92: for (; i < 10; i++)
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x8a
	jnc	00113$
;	src/uart.c:93: uart_put_char(display_buf[i]);
	mov	a,r7
	add	a,#_print_long_int_display_buf_65536_21
	mov	r1,a
	mov	dpl,@r1
	push	ar7
	lcall	_uart_put_char
	pop	ar7
;	src/uart.c:92: for (; i < 10; i++)
	inc	r7
	sjmp	00111$
00113$:
;	src/uart.c:94: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printc'
;------------------------------------------------------------
;x                         Allocated to registers r7 
;------------------------------------------------------------
;	src/uart.c:96: void printc(uint8 x)
;	-----------------------------------------
;	 function printc
;	-----------------------------------------
_printc:
	mov	r7,dpl
;	src/uart.c:98: sending = 1;
	mov	_sending,#0x01
;	src/uart.c:99: SBUF = x;
	mov	_SBUF,r7
;	src/uart.c:100: while(sending);
00101$:
	mov	a,_sending
	jnz	00101$
;	src/uart.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_hex'
;------------------------------------------------------------
;x                         Allocated to registers r7 
;------------------------------------------------------------
;	src/uart.c:103: void print_hex(uint8 x)
;	-----------------------------------------
;	 function print_hex
;	-----------------------------------------
_print_hex:
	mov	r7,dpl
;	src/uart.c:105: printc('0');
	mov	dpl,#0x30
	push	ar7
	lcall	_printc
;	src/uart.c:106: printc('x');
	mov	dpl,#0x78
	lcall	_printc
	pop	ar7
;	src/uart.c:107: printc(hex_table[x >> 4]);
	mov	a,r7
	swap	a
	anl	a,#0x0f
	mov	dptr,#_hex_table
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_printc
	pop	ar7
;	src/uart.c:108: printc(hex_table[x & 0x0F]);
	anl	ar7,#0x0f
	mov	r6,#0x00
	mov	a,r7
	add	a,#_hex_table
	mov	dpl,a
	mov	a,r6
	addc	a,#(_hex_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_printc
;	src/uart.c:109: printc(' ');
	mov	dpl,#0x20
;	src/uart.c:110: }
	ljmp	_printc
;------------------------------------------------------------
;Allocation info for local variables in function 'dump_hex'
;------------------------------------------------------------
;len                       Allocated with name '_dump_hex_PARM_2'
;buf                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	src/uart.c:112: void dump_hex(uint8 *buf, uint32 len)
;	-----------------------------------------
;	 function dump_hex
;	-----------------------------------------
_dump_hex:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/uart.c:116: for (i = 0; i < len; i ++) {
	mov	r3,#0x00
	mov	r4,#0x00
00106$:
	clr	c
	mov	a,r3
	subb	a,_dump_hex_PARM_2
	mov	a,r4
	subb	a,(_dump_hex_PARM_2 + 1)
	jnc	00104$
;	src/uart.c:117: print_hex(buf[i]);
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_print_hex
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/uart.c:118: if ((i != 0) && (i % 16 == 0))
	mov	a,r3
	orl	a,r4
	jz	00107$
	mov	a,r3
	anl	a,#0x0f
	jz	00130$
	sjmp	00107$
00130$:
;	src/uart.c:119: Prints("\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_Prints
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00107$:
;	src/uart.c:116: for (i = 0; i < len; i ++) {
	inc	r3
	cjne	r3,#0x00,00106$
	inc	r4
	sjmp	00106$
00104$:
;	src/uart.c:121: Prints("\n");
	mov	dptr,#___str_0
	mov	b,#0x80
;	src/uart.c:122: }
	ljmp	_Prints
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
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
