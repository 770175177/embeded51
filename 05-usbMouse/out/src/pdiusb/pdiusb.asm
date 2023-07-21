;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module pdiusb
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _D12_select_endpoint
	.globl _print_hex
	.globl _print_long_int
	.globl _Prints
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
	.globl _D12_write_endpoint_buffer_PARM_3
	.globl _D12_write_endpoint_buffer_PARM_2
	.globl _D12_read_endpoint_buffer_PARM_3
	.globl _D12_read_endpoint_buffer_PARM_2
	.globl _D12_write_command
	.globl _D12_read_byte
	.globl _D12_read_id
	.globl _D12_write_byte
	.globl _D12_read_endpoint_last_status
	.globl _D12_read_endpoint_buffer
	.globl _D12_clear_buffer
	.globl _D12_Acknowlwdge_setup
	.globl _D12_validate_buffer
	.globl _D12_write_endpoint_buffer
	.globl _D12_set_address
	.globl _D12_set_endpoint_enable
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
_D12_read_endpoint_buffer_PARM_2:
	.ds 1
_D12_read_endpoint_buffer_PARM_3:
	.ds 3
_D12_write_endpoint_buffer_PARM_2:
	.ds 1
_D12_write_endpoint_buffer_PARM_3:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'D12_write_command'
;------------------------------------------------------------
;command                   Allocated to registers r7 
;------------------------------------------------------------
;	src/pdiusb.c:5: void D12_write_command(uint8 command)
;	-----------------------------------------
;	 function D12_write_command
;	-----------------------------------------
_D12_write_command:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	src/pdiusb.c:7: D12_set_command_addr();
;	assignBit
	setb	_P3_5
;	src/pdiusb.c:8: D12_clr_wr();
;	assignBit
	clr	_P3_6
;	src/pdiusb.c:10: D12_set_data(command);
	mov	_P0,r7
;	src/pdiusb.c:11: D12_set_wr();
;	assignBit
	setb	_P3_6
;	src/pdiusb.c:12: D12_set_port_in();
	mov	_P0,#0xff
;	src/pdiusb.c:13: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_read_byte'
;------------------------------------------------------------
;tmp                       Allocated to registers 
;------------------------------------------------------------
;	src/pdiusb.c:15: uint8 D12_read_byte(void)
;	-----------------------------------------
;	 function D12_read_byte
;	-----------------------------------------
_D12_read_byte:
;	src/pdiusb.c:19: D12_set_data_addr();
;	assignBit
	clr	_P3_5
;	src/pdiusb.c:20: D12_clr_rd();
;	assignBit
	clr	_P3_7
;	src/pdiusb.c:21: tmp = D12_get_data();
	mov	dpl,_P0
;	src/pdiusb.c:22: D12_set_rd();
;	assignBit
	setb	_P3_7
;	src/pdiusb.c:23: D12_set_rd();
;	assignBit
	setb	_P3_7
;	src/pdiusb.c:25: return tmp;
;	src/pdiusb.c:26: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_read_id'
;------------------------------------------------------------
;id                        Allocated to registers 
;------------------------------------------------------------
;	src/pdiusb.c:28: uint16 D12_read_id(void)
;	-----------------------------------------
;	 function D12_read_id
;	-----------------------------------------
_D12_read_id:
;	src/pdiusb.c:32: D12_write_command(D12_CMD_READ_ID);
	mov	dpl,#0xfd
	lcall	_D12_write_command
;	src/pdiusb.c:33: id = D12_read_byte();
	lcall	_D12_read_byte
	mov	r7,dpl
	mov	r6,#0x00
;	src/pdiusb.c:34: id |= ((uint16)D12_read_byte()) << 8;
	push	ar7
	push	ar6
	lcall	_D12_read_byte
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	ar4,r5
	clr	a
	orl	a,r7
	mov	dpl,a
	mov	a,r4
	orl	a,r6
	mov	dph,a
;	src/pdiusb.c:36: return id;
;	src/pdiusb.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_write_byte'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
;	src/pdiusb.c:39: void D12_write_byte(uint8 value)
;	-----------------------------------------
;	 function D12_write_byte
;	-----------------------------------------
_D12_write_byte:
	mov	r7,dpl
;	src/pdiusb.c:41: D12_set_data_addr();
;	assignBit
	clr	_P3_5
;	src/pdiusb.c:42: D12_clr_wr();
;	assignBit
	clr	_P3_6
;	src/pdiusb.c:44: D12_set_data(value);
	mov	_P0,r7
;	src/pdiusb.c:45: D12_set_wr();
;	assignBit
	setb	_P3_6
;	src/pdiusb.c:46: D12_set_port_in();
	mov	_P0,#0xff
;	src/pdiusb.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_read_endpoint_last_status'
;------------------------------------------------------------
;endp                      Allocated to registers r7 
;------------------------------------------------------------
;	src/pdiusb.c:49: uint8 D12_read_endpoint_last_status(uint8 endp)
;	-----------------------------------------
;	 function D12_read_endpoint_last_status
;	-----------------------------------------
_D12_read_endpoint_last_status:
	mov	r7,dpl
;	src/pdiusb.c:51: D12_write_command(D12_INT_STATUS_EP_BASE + endp);
	mov	a,#0x40
	add	a,r7
	mov	dpl,a
	lcall	_D12_write_command
;	src/pdiusb.c:52: return D12_read_byte();
;	src/pdiusb.c:53: }
	ljmp	_D12_read_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_select_endpoint'
;------------------------------------------------------------
;endp                      Allocated to registers r7 
;------------------------------------------------------------
;	src/pdiusb.c:55: void D12_select_endpoint(uint8 endp)
;	-----------------------------------------
;	 function D12_select_endpoint
;	-----------------------------------------
_D12_select_endpoint:
;	src/pdiusb.c:57: D12_write_command(0x00 + endp);
;	src/pdiusb.c:58: }
	ljmp	_D12_write_command
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_read_endpoint_buffer'
;------------------------------------------------------------
;len                       Allocated with name '_D12_read_endpoint_buffer_PARM_2'
;buf                       Allocated with name '_D12_read_endpoint_buffer_PARM_3'
;endp                      Allocated to registers r7 
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	src/pdiusb.c:60: uint8 D12_read_endpoint_buffer(uint8 endp, uint8 len, uint8 *buf)
;	-----------------------------------------
;	 function D12_read_endpoint_buffer
;	-----------------------------------------
_D12_read_endpoint_buffer:
;	src/pdiusb.c:64: D12_select_endpoint(endp);
	mov  r7,dpl
	push	ar7
	lcall	_D12_select_endpoint
;	src/pdiusb.c:65: D12_write_command(D12_READ_BUFFER);
	mov	dpl,#0xf0
	lcall	_D12_write_command
;	src/pdiusb.c:66: D12_read_byte();                    /* dispart the first byte */
	lcall	_D12_read_byte
;	src/pdiusb.c:67: j = D12_read_byte();                /* actual recieved data bytes bums */
	lcall	_D12_read_byte
	mov	r6,dpl
	pop	ar7
;	src/pdiusb.c:68: if (j > len)                        /* when recieved data lagger than len */
	clr	c
	mov	a,_D12_read_endpoint_buffer_PARM_2
	subb	a,r6
	jnc	00102$
;	src/pdiusb.c:69: j = len;                        /* only read len of data */
	mov	r6,_D12_read_endpoint_buffer_PARM_2
00102$:
;	src/pdiusb.c:71: Prints("read endpoint ");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_Prints
	pop	ar6
	pop	ar7
;	src/pdiusb.c:72: print_long_int(endp / 2);
	mov	r5,#0x00
	mov	__divsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r7
	mov	dph,r5
	push	ar6
	lcall	__divsint
	lcall	_print_long_int
;	src/pdiusb.c:73: Prints(" buffer ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_Prints
	pop	ar6
;	src/pdiusb.c:74: print_long_int(j);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_print_long_int
;	src/pdiusb.c:75: Prints(" bytes\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_Prints
	pop	ar6
;	src/pdiusb.c:77: for (i = 0; i < j; i++) {
	mov	r7,#0x00
00109$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00105$
;	src/pdiusb.c:78: D12_clr_rd();
;	assignBit
	clr	_P3_7
;	src/pdiusb.c:79: *(buf + i) = D12_get_data();    /* read 1 byte */
	mov	a,r7
	add	a,_D12_read_endpoint_buffer_PARM_3
	mov	r3,a
	clr	a
	addc	a,(_D12_read_endpoint_buffer_PARM_3 + 1)
	mov	r4,a
	mov	r5,(_D12_read_endpoint_buffer_PARM_3 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_P0
	lcall	__gptrput
;	src/pdiusb.c:80: D12_set_rd();                   /* RD = 1 */
;	assignBit
	setb	_P3_7
;	src/pdiusb.c:82: print_hex(*(buf + i));
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_print_hex
	pop	ar6
	pop	ar7
;	src/pdiusb.c:83: if(((i + 1) % 16) == 0)
	mov	ar4,r7
	mov	r5,#0x00
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	mov	__modsint_PARM_2,#0x10
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r5
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00110$
;	src/pdiusb.c:84: Prints("\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_Prints
	pop	ar6
	pop	ar7
00110$:
;	src/pdiusb.c:77: for (i = 0; i < j; i++) {
	inc	r7
	sjmp	00109$
00105$:
;	src/pdiusb.c:88: if ((j % 16) != 0)
	mov	a,r6
	anl	a,#0x0f
	jz	00107$
;	src/pdiusb.c:89: Prints("\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar6
	lcall	_Prints
	pop	ar6
00107$:
;	src/pdiusb.c:92: return j;
	mov	dpl,r6
;	src/pdiusb.c:93: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_clear_buffer'
;------------------------------------------------------------
;	src/pdiusb.c:95: void D12_clear_buffer(void)
;	-----------------------------------------
;	 function D12_clear_buffer
;	-----------------------------------------
_D12_clear_buffer:
;	src/pdiusb.c:97: D12_write_command(D12_DATA_BUFFER_CLR);
	mov	dpl,#0xf2
;	src/pdiusb.c:98: }
	ljmp	_D12_write_command
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_Acknowlwdge_setup'
;------------------------------------------------------------
;	src/pdiusb.c:100: void D12_Acknowlwdge_setup(void)
;	-----------------------------------------
;	 function D12_Acknowlwdge_setup
;	-----------------------------------------
_D12_Acknowlwdge_setup:
;	src/pdiusb.c:102: D12_select_endpoint(1);             /* select endpoint 0 input */
	mov	dpl,#0x01
	lcall	_D12_select_endpoint
;	src/pdiusb.c:103: D12_write_command(D12_ACKNOWLEDGE_SETUP);
	mov	dpl,#0xf1
	lcall	_D12_write_command
;	src/pdiusb.c:104: D12_select_endpoint(0);             /* select endpoint 1 output */
	mov	dpl,#0x00
	lcall	_D12_select_endpoint
;	src/pdiusb.c:105: D12_write_command(D12_ACKNOWLEDGE_SETUP);
	mov	dpl,#0xf1
;	src/pdiusb.c:106: }
	ljmp	_D12_write_command
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_validate_buffer'
;------------------------------------------------------------
;	src/pdiusb.c:108: void D12_validate_buffer(void)
;	-----------------------------------------
;	 function D12_validate_buffer
;	-----------------------------------------
_D12_validate_buffer:
;	src/pdiusb.c:110: D12_write_command(D12_VALIDATE_BUFFER);
	mov	dpl,#0xfa
;	src/pdiusb.c:111: }
	ljmp	_D12_write_command
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_write_endpoint_buffer'
;------------------------------------------------------------
;len                       Allocated with name '_D12_write_endpoint_buffer_PARM_2'
;buf                       Allocated with name '_D12_write_endpoint_buffer_PARM_3'
;endp                      Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	src/pdiusb.c:114: uint8 D12_write_endpoint_buffer(uint8 endp, uint8 len, uint8 *buf)
;	-----------------------------------------
;	 function D12_write_endpoint_buffer
;	-----------------------------------------
_D12_write_endpoint_buffer:
;	src/pdiusb.c:118: D12_select_endpoint(endp);
	mov  r7,dpl
	push	ar7
	lcall	_D12_select_endpoint
;	src/pdiusb.c:119: D12_write_command(D12_WRITE_BUFFER);
	mov	dpl,#0xf0
	lcall	_D12_write_command
;	src/pdiusb.c:120: D12_write_byte(0);              /* before write buffer, must write a byte 0 */
	mov	dpl,#0x00
	lcall	_D12_write_byte
;	src/pdiusb.c:121: D12_write_byte(len);
	mov	dpl,_D12_write_endpoint_buffer_PARM_2
	lcall	_D12_write_byte
;	src/pdiusb.c:124: Prints("write endpoint ");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_Prints
	pop	ar7
;	src/pdiusb.c:125: print_long_int(endp / 2);
	mov	r6,#0x00
	mov	__divsint_PARM_2,#0x02
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r6
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	lcall	_print_long_int
;	src/pdiusb.c:126: Prints(" buffer ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_Prints
;	src/pdiusb.c:127: print_long_int(len);
	mov	r6,_D12_write_endpoint_buffer_PARM_2
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	lcall	_print_long_int
;	src/pdiusb.c:128: Prints(" bytes\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_Prints
;	src/pdiusb.c:133: for(i = 0; i < len; i++) {
	mov	r7,#0x00
00107$:
	clr	c
	mov	a,r7
	subb	a,_D12_write_endpoint_buffer_PARM_2
	jnc	00103$
;	src/pdiusb.c:134: D12_clr_wr();               /* WR is low */
;	assignBit
	clr	_P3_6
;	src/pdiusb.c:135: D12_set_data(*(buf + i));   /* put date to data line */
	mov	a,r7
	add	a,_D12_write_endpoint_buffer_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_D12_write_endpoint_buffer_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_D12_write_endpoint_buffer_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_P0,a
;	src/pdiusb.c:136: D12_set_wr();               /* WR is high, complete 1 byte write */
;	assignBit
	setb	_P3_6
;	src/pdiusb.c:138: print_hex(*(buf + i));
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	lcall	_print_hex
	pop	ar7
;	src/pdiusb.c:139: if (((i + 1) % 16) == 0)
	mov	ar5,r7
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	inc	dptr
	mov	__modsint_PARM_2,#0x10
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r6
	push	ar7
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	orl	a,b
	jnz	00108$
;	src/pdiusb.c:140: Prints("\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	lcall	_Prints
	pop	ar7
00108$:
;	src/pdiusb.c:133: for(i = 0; i < len; i++) {
	inc	r7
	sjmp	00107$
00103$:
;	src/pdiusb.c:144: if ((len % 16) != 0)
	mov	a,_D12_write_endpoint_buffer_PARM_2
	anl	a,#0x0f
	jz	00105$
;	src/pdiusb.c:145: Prints("\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_Prints
00105$:
;	src/pdiusb.c:147: D12_set_port_in();              /* data direction switch to in */
	mov	_P0,#0xff
;	src/pdiusb.c:148: D12_validate_buffer();
	lcall	_D12_validate_buffer
;	src/pdiusb.c:150: return len;
	mov	dpl,_D12_write_endpoint_buffer_PARM_2
;	src/pdiusb.c:151: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_set_address'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	src/pdiusb.c:153: void D12_set_address(uint8 addr)
;	-----------------------------------------
;	 function D12_set_address
;	-----------------------------------------
_D12_set_address:
	mov	r7,dpl
;	src/pdiusb.c:155: D12_write_command(D12_SET_ADDRESS_ENABLE);
	mov	dpl,#0xd0
	push	ar7
	lcall	_D12_write_command
	pop	ar7
;	src/pdiusb.c:156: D12_write_byte(0x80 | addr);
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
;	src/pdiusb.c:157: }
	ljmp	_D12_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'D12_set_endpoint_enable'
;------------------------------------------------------------
;enable                    Allocated to registers r7 
;------------------------------------------------------------
;	src/pdiusb.c:159: void D12_set_endpoint_enable(uint8 enable)
;	-----------------------------------------
;	 function D12_set_endpoint_enable
;	-----------------------------------------
_D12_set_endpoint_enable:
	mov	r7,dpl
;	src/pdiusb.c:161: D12_write_command(D12_SET_ENDPOINT_ENABLE);
	mov	dpl,#0xd8
	push	ar7
	lcall	_D12_write_command
	pop	ar7
;	src/pdiusb.c:162: if (enable != 0)
	mov	a,r7
	jz	00102$
;	src/pdiusb.c:163: D12_write_byte(0x01);
	mov	dpl,#0x01
	ljmp	_D12_write_byte
00102$:
;	src/pdiusb.c:165: D12_write_byte(0x00);
	mov	dpl,#0x00
;	src/pdiusb.c:166: }
	ljmp	_D12_write_byte
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "read endpoint "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii " buffer "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii " bytes"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "write endpoint "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
