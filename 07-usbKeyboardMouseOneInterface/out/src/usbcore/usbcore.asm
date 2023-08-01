;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module usbcore
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ReportDescriptor
	.globl _SerialNumberStringDescriptor
	.globl _ProductStringDescriptor
	.globl _ManufacturerStringDescriptor
	.globl _languageId
	.globl _ConfigurationDescriptor
	.globl _DeviceDescriptor
	.globl _delay_ms
	.globl _D12_set_endpoint_enable
	.globl _D12_set_address
	.globl _D12_write_endpoint_buffer
	.globl _D12_read_endpoint_last_status
	.globl _D12_Acknowlwdge_setup
	.globl _D12_clear_buffer
	.globl _D12_read_endpoint_buffer
	.globl _D12_write_byte
	.globl _D12_write_command
	.globl _dump_hex
	.globl _print_hex
	.globl _Prints
	.globl _memset
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
	.globl _ConfigValue
	.globl _Ep1InIsBusy
	.globl _NeedZeroPacket
	.globl _SendLength
	.globl _pSendData
	.globl _wLength
	.globl _wIndex
	.globl _wValue
	.globl _bRequest
	.globl _bmRequestType
	.globl _usb_disconnect
	.globl _usb_connect
	.globl _usb_bus_isr_suspend
	.globl _usb_bus_isr_reset
	.globl _usb_bus_isr_ep0_out
	.globl _usb_bus_isr_ep0_in
	.globl _usb_bus_isr_ep1_out
	.globl _usb_bus_isr_ep1_in
	.globl _usb_bus_isr_ep2_out
	.globl _usb_bus_isr_ep2_in
	.globl _usb_bus_ep0_send_data
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
_bmRequestType::
	.ds 1
_bRequest::
	.ds 1
_wValue::
	.ds 2
_wIndex::
	.ds 2
_wLength::
	.ds 2
_pSendData::
	.ds 3
_SendLength::
	.ds 2
_NeedZeroPacket::
	.ds 1
_Ep1InIsBusy::
	.ds 1
_ConfigValue::
	.ds 1
_usb_bus_isr_ep0_out_buffer_65536_57:
	.ds 16
_usb_bus_isr_ep1_out_buf_65536_74:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'usb_disconnect'
;------------------------------------------------------------
;	src/usbcore.c:362: void usb_disconnect(void)
;	-----------------------------------------
;	 function usb_disconnect
;	-----------------------------------------
_usb_disconnect:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/usbcore.c:365: Prints("usb disconnect\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:367: D12_write_command(D12_SET_MODE);    /* set mode */
	mov	dpl,#0xf3
	lcall	_D12_write_command
;	src/usbcore.c:368: D12_write_byte(0x06);               /* byte1, pull-up R disconnect, indicate usb disconnet */
	mov	dpl,#0x06
	lcall	_D12_write_byte
;	src/usbcore.c:369: D12_write_byte(0x47);               /* byte2 */
	mov	dpl,#0x47
	lcall	_D12_write_byte
;	src/usbcore.c:370: delay_ms(1000);
	mov	dptr,#0x03e8
;	src/usbcore.c:371: }
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_connect'
;------------------------------------------------------------
;	src/usbcore.c:373: void usb_connect(void)
;	-----------------------------------------
;	 function usb_connect
;	-----------------------------------------
_usb_connect:
;	src/usbcore.c:376: Prints("usb connect\n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:378: D12_write_command(D12_SET_MODE);    /* set mode */
	mov	dpl,#0xf3
	lcall	_D12_write_command
;	src/usbcore.c:379: D12_write_byte(0x16);               /* byte1, pull-up R connect, indicate usb connet */
	mov	dpl,#0x16
	lcall	_D12_write_byte
;	src/usbcore.c:380: D12_write_byte(0x47);               /* byte2 */
	mov	dpl,#0x47
;	src/usbcore.c:381: }
	ljmp	_D12_write_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_bus_isr_suspend'
;------------------------------------------------------------
;	src/usbcore.c:383: void usb_bus_isr_suspend()
;	-----------------------------------------
;	 function usb_bus_isr_suspend
;	-----------------------------------------
_usb_bus_isr_suspend:
;	src/usbcore.c:386: Prints("usb core isr suspend\n");
	mov	dptr,#___str_2
	mov	b,#0x80
;	src/usbcore.c:388: }
	ljmp	_Prints
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_bus_isr_reset'
;------------------------------------------------------------
;	src/usbcore.c:390: void usb_bus_isr_reset()
;	-----------------------------------------
;	 function usb_bus_isr_reset
;	-----------------------------------------
_usb_bus_isr_reset:
;	src/usbcore.c:393: Prints("usb core isr reset\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:395: Ep1InIsBusy = 0;
	mov	_Ep1InIsBusy,#0x00
;	src/usbcore.c:396: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_bus_isr_ep0_out'
;------------------------------------------------------------
;buffer                    Allocated with name '_usb_bus_isr_ep0_out_buffer_65536_57'
;------------------------------------------------------------
;	src/usbcore.c:409: void usb_bus_isr_ep0_out()
;	-----------------------------------------
;	 function usb_bus_isr_ep0_out
;	-----------------------------------------
_usb_bus_isr_ep0_out:
;	src/usbcore.c:413: Prints("usb isr ep0 out\n");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:415: memset(buffer, 0, sizeof(buffer));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x10
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#_usb_bus_isr_ep0_out_buffer_65536_57
	mov	b,#0x40
	lcall	_memset
;	src/usbcore.c:418: if (D12_read_endpoint_last_status(0) & 0x20) {
	mov	dpl,#0x00
	lcall	_D12_read_endpoint_last_status
	mov	a,dpl
	jb	acc.5,00299$
	ljmp	00163$
00299$:
;	src/usbcore.c:419: D12_read_endpoint_buffer(0, 16, buffer);
	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep0_out_buffer_65536_57
	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
	mov	_D12_read_endpoint_buffer_PARM_2,#0x10
	mov	dpl,#0x00
	lcall	_D12_read_endpoint_buffer
;	src/usbcore.c:420: D12_Acknowlwdge_setup();
	lcall	_D12_Acknowlwdge_setup
;	src/usbcore.c:421: D12_clear_buffer();
	lcall	_D12_clear_buffer
;	src/usbcore.c:423: bmRequestType = buffer[0];
	mov	_bmRequestType,_usb_bus_isr_ep0_out_buffer_65536_57
;	src/usbcore.c:424: bRequest = buffer[1];
	mov	_bRequest,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0001)
;	src/usbcore.c:425: wValue = buffer[2] | (((uint16)buffer[3]) << 8);
	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0003)
	mov	r6,#0x00
	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0002)
	mov	r5,#0x00
	mov	a,r6
	orl	a,r4
	mov	_wValue,a
	mov	a,r7
	orl	a,r5
	mov	(_wValue + 1),a
;	src/usbcore.c:426: wIndex = buffer[4] | (((uint16)buffer[5]) << 8);
	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0005)
	mov	r6,#0x00
	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0004)
	mov	r5,#0x00
	mov	a,r6
	orl	a,r4
	mov	_wIndex,a
	mov	a,r7
	orl	a,r5
	mov	(_wIndex + 1),a
;	src/usbcore.c:427: wLength = buffer[6] | (((uint16)buffer[7]) << 8);
	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0007)
	mov	r6,#0x00
	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0006)
	mov	r5,#0x00
	mov	a,r6
	orl	a,r4
	mov	_wLength,a
	mov	a,r7
	orl	a,r5
	mov	(_wLength + 1),a
;	src/usbcore.c:429: if ((bmRequestType & 0x80) == 0x80) {   /* input request */
	mov	r6,_bmRequestType
	anl	ar6,#0x80
	mov	r7,#0x00
	cjne	r6,#0x80,00300$
	cjne	r7,#0x00,00300$
	sjmp	00301$
00300$:
	ljmp	00160$
00301$:
;	src/usbcore.c:432: switch ((bmRequestType >> 5) & 0x3) {
	mov	a,_bmRequestType
	swap	a
	rr	a
	anl	a,#0x07
	mov	r7,a
	anl	ar7,#0x03
	mov	r6,#0x00
	cjne	r7,#0x00,00302$
	cjne	r6,#0x00,00302$
	sjmp	00101$
00302$:
	cjne	r7,#0x01,00303$
	cjne	r6,#0x00,00303$
	ljmp	00139$
00303$:
	cjne	r7,#0x02,00304$
	cjne	r6,#0x00,00304$
	ljmp	00140$
00304$:
	ljmp	00141$
;	src/usbcore.c:433: case 0:                             /* stander request */
00101$:
;	src/usbcore.c:435: Prints("USB stand input request: ");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:437: switch (bRequest) {
	clr	a
	cjne	a,_bRequest,00305$
	ljmp	00135$
00305$:
	mov	a,#0x06
	cjne	a,_bRequest,00306$
	sjmp	00103$
00306$:
	mov	a,#0x08
	cjne	a,_bRequest,00307$
	sjmp	00102$
00307$:
	mov	a,#0x0a
	cjne	a,_bRequest,00308$
	ljmp	00134$
00308$:
	mov	a,#0x0c
	cjne	a,_bRequest,00309$
	ljmp	00136$
00309$:
	ljmp	00137$
;	src/usbcore.c:438: case GET_CONFIGURATION:         /* get configuration */
00102$:
;	src/usbcore.c:440: Prints("Get configuration\n");
	mov	dptr,#___str_6
	mov	b,#0x80
;	src/usbcore.c:442: break;
	ljmp	_Prints
;	src/usbcore.c:443: case GET_DESCRIPTOR:
00103$:
;	src/usbcore.c:445: Prints("Get descriptor -- ");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:449: switch ((wValue >> 8) & 0xFF) {
	mov	r7,(_wValue + 1)
	cjne	r7,#0x01,00310$
	sjmp	00104$
00310$:
	cjne	r7,#0x02,00311$
	sjmp	00110$
00311$:
	cjne	r7,#0x03,00312$
	ljmp	00116$
00312$:
	cjne	r7,#0x22,00313$
	ljmp	00127$
00313$:
	ljmp	00132$
;	src/usbcore.c:450: case DEVICE_DESCRIPTOR:
00104$:
;	src/usbcore.c:452: Prints("device descriptor\n");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:454: pSendData = (uint8 *)DeviceDescriptor;
	mov	_pSendData,#_DeviceDescriptor
	mov	(_pSendData + 1),#(_DeviceDescriptor >> 8)
	mov	(_pSendData + 2),#0x80
;	src/usbcore.c:455: if (wLength > DeviceDescriptor[0]) {
	mov	dptr,#_DeviceDescriptor
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,_wLength
	mov	a,r7
	subb	a,(_wLength + 1)
	jnc	00108$
;	src/usbcore.c:456: SendLength = DeviceDescriptor[0];
	mov	_SendLength,r6
	mov	(_SendLength + 1),r7
;	src/usbcore.c:457: if (SendLength % DeviceDescriptor[7] == 0)
	mov	dptr,#(_DeviceDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	__moduint_PARM_2,r7
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_SendLength
	mov	dph,(_SendLength + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00109$
;	src/usbcore.c:458: NeedZeroPacket = 1;
	mov	_NeedZeroPacket,#0x01
	sjmp	00109$
00108$:
;	src/usbcore.c:460: SendLength = wLength;
	mov	_SendLength,_wLength
	mov	(_SendLength + 1),(_wLength + 1)
00109$:
;	src/usbcore.c:462: usb_bus_ep0_send_data();
;	src/usbcore.c:463: break;
	ljmp	_usb_bus_ep0_send_data
;	src/usbcore.c:464: case CONFIGURATION_DESCRIPTOR:
00110$:
;	src/usbcore.c:466: Prints("configuration descriptor\n");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:468: pSendData = (uint8 *)ConfigurationDescriptor;
	mov	_pSendData,#_ConfigurationDescriptor
	mov	(_pSendData + 1),#(_ConfigurationDescriptor >> 8)
	mov	(_pSendData + 2),#0x80
;	src/usbcore.c:469: SendLength = ConfigurationDescriptor[3] * 256 + ConfigurationDescriptor[2];
	mov	dptr,#(_ConfigurationDescriptor + 0x0003)
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#(_ConfigurationDescriptor + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	_SendLength,r7
	mov	(_SendLength + 1),r6
;	src/usbcore.c:470: if (wLength > SendLength) {
	clr	c
	mov	a,_SendLength
	subb	a,_wLength
	mov	a,(_SendLength + 1)
	subb	a,(_wLength + 1)
	jnc	00114$
;	src/usbcore.c:471: if (SendLength % DeviceDescriptor[7] == 0)
	mov	dptr,#(_DeviceDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	__moduint_PARM_2,r7
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_SendLength
	mov	dph,(_SendLength + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00115$
;	src/usbcore.c:472: NeedZeroPacket = 1;
	mov	_NeedZeroPacket,#0x01
	sjmp	00115$
00114$:
;	src/usbcore.c:474: SendLength = wLength;
	mov	_SendLength,_wLength
	mov	(_SendLength + 1),(_wLength + 1)
00115$:
;	src/usbcore.c:476: usb_bus_ep0_send_data();
;	src/usbcore.c:477: break;
	ljmp	_usb_bus_ep0_send_data
;	src/usbcore.c:478: case STRING_DESCRIPTOR:
00116$:
;	src/usbcore.c:480: Prints("string descriptor -- ");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:482: switch (wValue & 0xFF) {
	mov	r6,_wValue
	mov	r7,#0x00
	clr	c
	mov	a,#0x03
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00318$
	ljmp	00121$
00318$:
	mov	a,r6
	add	a,r6
;	src/usbcore.c:483: case 0:         /* get language ID */
	mov	dptr,#00319$
	jmp	@a+dptr
00319$:
	sjmp	00117$
	sjmp	00118$
	sjmp	00119$
	sjmp	00120$
00117$:
;	src/usbcore.c:485: Prints("language ID\n");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:487: pSendData = (uint8 *)languageId;
	mov	_pSendData,#_languageId
	mov	(_pSendData + 1),#(_languageId >> 8)
	mov	(_pSendData + 2),#0x80
;	src/usbcore.c:488: SendLength = languageId[0];
	mov	dptr,#_languageId
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_SendLength,r7
	mov	(_SendLength + 1),#0x00
;	src/usbcore.c:489: break;
;	src/usbcore.c:490: case 1:         /* Vendor string id is 1  */
	sjmp	00122$
00118$:
;	src/usbcore.c:492: Prints("manufacture string\n");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:494: pSendData = (uint8 *)ManufacturerStringDescriptor;
	mov	_pSendData,#_ManufacturerStringDescriptor
	mov	(_pSendData + 1),#(_ManufacturerStringDescriptor >> 8)
	mov	(_pSendData + 2),#0x80
;	src/usbcore.c:495: SendLength = ManufacturerStringDescriptor[0];
	mov	dptr,#_ManufacturerStringDescriptor
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_SendLength,r7
	mov	(_SendLength + 1),#0x00
;	src/usbcore.c:496: break;
;	src/usbcore.c:497: case 2:         /* Vendor string id is 1  */
	sjmp	00122$
00119$:
;	src/usbcore.c:499: Prints("product string\n");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:501: pSendData = (uint8 *)ProductStringDescriptor;
	mov	_pSendData,#_ProductStringDescriptor
	mov	(_pSendData + 1),#(_ProductStringDescriptor >> 8)
	mov	(_pSendData + 2),#0x80
;	src/usbcore.c:502: SendLength = ProductStringDescriptor[0];
	mov	dptr,#_ProductStringDescriptor
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_SendLength,r7
	mov	(_SendLength + 1),#0x00
;	src/usbcore.c:503: break;
;	src/usbcore.c:504: case 3:         /* Vendor string id is 1  */
	sjmp	00122$
00120$:
;	src/usbcore.c:506: Prints("serial string\n");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:508: pSendData = (uint8 *)SerialNumberStringDescriptor;
	mov	_pSendData,#_SerialNumberStringDescriptor
	mov	(_pSendData + 1),#(_SerialNumberStringDescriptor >> 8)
	mov	(_pSendData + 2),#0x80
;	src/usbcore.c:509: SendLength = SerialNumberStringDescriptor[0];
	mov	dptr,#_SerialNumberStringDescriptor
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_SendLength,r7
	mov	(_SendLength + 1),#0x00
;	src/usbcore.c:510: break;
;	src/usbcore.c:511: default:         /* Vendor string id is 1  */
	sjmp	00122$
00121$:
;	src/usbcore.c:513: Prints("unknown string\n");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:515: SendLength = 0;
	clr	a
	mov	_SendLength,a
	mov	(_SendLength + 1),a
;	src/usbcore.c:516: NeedZeroPacket = 1;
	mov	_NeedZeroPacket,#0x01
;	src/usbcore.c:518: }
00122$:
;	src/usbcore.c:519: if ((wLength > SendLength) &&
	clr	c
	mov	a,_SendLength
	subb	a,_wLength
	mov	a,(_SendLength + 1)
	subb	a,(_wLength + 1)
	jnc	00124$
;	src/usbcore.c:520: (SendLength % DeviceDescriptor[7] == 0))
	mov	dptr,#(_DeviceDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	__moduint_PARM_2,r7
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_SendLength
	mov	dph,(_SendLength + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00124$
;	src/usbcore.c:521: NeedZeroPacket = 1;
	mov	_NeedZeroPacket,#0x01
	sjmp	00125$
00124$:
;	src/usbcore.c:523: SendLength = wLength;
	mov	_SendLength,_wLength
	mov	(_SendLength + 1),(_wLength + 1)
00125$:
;	src/usbcore.c:524: usb_bus_ep0_send_data(); 
;	src/usbcore.c:525: break;
	ljmp	_usb_bus_ep0_send_data
;	src/usbcore.c:526: case REPORT_DESCRIPTOR:
00127$:
;	src/usbcore.c:528: Prints("Report descriptor: ");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:530: pSendData = (uint8 *)ReportDescriptor;
	mov	_pSendData,#_ReportDescriptor
	mov	(_pSendData + 1),#(_ReportDescriptor >> 8)
	mov	(_pSendData + 2),#0x80
;	src/usbcore.c:531: SendLength = sizeof(ReportDescriptor);
	mov	_SendLength,#0x79
	mov	(_SendLength + 1),#0x00
;	src/usbcore.c:532: if ((wLength > SendLength) && (SendLength % DeviceDescriptor[7] == 0))
	clr	c
	mov	a,#0x79
	subb	a,_wLength
	clr	a
	subb	a,(_wLength + 1)
	jnc	00129$
	mov	dptr,#(_DeviceDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	__moduint_PARM_2,r7
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dptr,#0x0079
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00129$
;	src/usbcore.c:533: NeedZeroPacket = 1;
	mov	_NeedZeroPacket,#0x01
	sjmp	00130$
00129$:
;	src/usbcore.c:535: NeedZeroPacket = 0;
	mov	_NeedZeroPacket,#0x00
00130$:
;	src/usbcore.c:536: usb_bus_ep0_send_data();
;	src/usbcore.c:537: break;
	ljmp	_usb_bus_ep0_send_data
;	src/usbcore.c:538: default:
00132$:
;	src/usbcore.c:540: Prints("other descriptor: ");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:542: print_hex((wValue >> 8) & 0xFF);
	mov	dpl,(_wValue + 1)
	lcall	_print_hex
;	src/usbcore.c:543: Prints("\n");
	mov	dptr,#___str_18
	mov	b,#0x80
;	src/usbcore.c:546: break;
	ljmp	_Prints
;	src/usbcore.c:547: case GET_INTERFACE:
00134$:
;	src/usbcore.c:549: Prints("Get interface\n");
	mov	dptr,#___str_19
	mov	b,#0x80
;	src/usbcore.c:551: break;
	ljmp	_Prints
;	src/usbcore.c:552: case GET_STATUS:
00135$:
;	src/usbcore.c:554: Prints("Get status\n");
	mov	dptr,#___str_20
	mov	b,#0x80
;	src/usbcore.c:556: break;
	ljmp	_Prints
;	src/usbcore.c:557: case SYNCH_FRAME:
00136$:
;	src/usbcore.c:559: Prints("Synch frame\n");
	mov	dptr,#___str_21
	mov	b,#0x80
;	src/usbcore.c:561: break;
	ljmp	_Prints
;	src/usbcore.c:562: default:
00137$:
;	src/usbcore.c:564: Prints("Error: undefined stander request\n");
	mov	dptr,#___str_22
	mov	b,#0x80
;	src/usbcore.c:568: break;
	ljmp	_Prints
;	src/usbcore.c:569: case 1:                            /* class request */
00139$:
;	src/usbcore.c:571: Prints("USB class input request:\n");
	mov	dptr,#___str_23
	mov	b,#0x80
;	src/usbcore.c:573: break;
	ljmp	_Prints
;	src/usbcore.c:574: case 2:
00140$:
;	src/usbcore.c:576: Prints("USB vendor input request:\n");
	mov	dptr,#___str_24
	mov	b,#0x80
;	src/usbcore.c:578: break;
	ljmp	_Prints
;	src/usbcore.c:579: default:
00141$:
;	src/usbcore.c:581: Prints("Error: undefined input request:\n");
	mov	dptr,#___str_25
	mov	b,#0x80
;	src/usbcore.c:584: }
	ljmp	_Prints
00160$:
;	src/usbcore.c:588: switch ((bmRequestType >> 5) & 0x3) {
	mov	a,_bmRequestType
	swap	a
	rr	a
	anl	a,#0x07
	mov	r7,a
	anl	ar7,#0x03
	mov	r6,#0x00
	cjne	r7,#0x00,00324$
	cjne	r6,#0x00,00324$
	sjmp	00143$
00324$:
	cjne	r7,#0x01,00325$
	cjne	r6,#0x00,00325$
	ljmp	00152$
00325$:
	cjne	r7,#0x02,00326$
	cjne	r6,#0x00,00326$
	ljmp	00156$
00326$:
	ljmp	00157$
;	src/usbcore.c:589: case 0:
00143$:
;	src/usbcore.c:591: Prints("USB stander output request: ");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:593: switch (bRequest) {
	mov	a,#0x01
	cjne	a,_bRequest,00327$
	sjmp	00144$
00327$:
	mov	a,#0x03
	cjne	a,_bRequest,00328$
	sjmp	00148$
00328$:
	mov	a,#0x05
	cjne	a,_bRequest,00329$
	sjmp	00145$
00329$:
	mov	a,#0x07
	cjne	a,_bRequest,00330$
	sjmp	00147$
00330$:
	mov	a,#0x09
	cjne	a,_bRequest,00331$
	sjmp	00146$
00331$:
	mov	a,#0x0b
;	src/usbcore.c:594: case CLEAR_FEATURE:
	cjne	a,_bRequest,00150$
	sjmp	00149$
00144$:
;	src/usbcore.c:596: Prints("clear feature\n");                   
	mov	dptr,#___str_27
	mov	b,#0x80
;	src/usbcore.c:598: break;
	ljmp	_Prints
;	src/usbcore.c:599: case SET_ADDRESS:
00145$:
;	src/usbcore.c:601: Prints("set address, the address is: ");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:602: print_hex(wValue & 0xFF);
	mov	dpl,_wValue
	lcall	_print_hex
;	src/usbcore.c:603: Prints("\n");                
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:605: D12_set_address(wValue & 0xFF);
	mov	dpl,_wValue
	lcall	_D12_set_address
;	src/usbcore.c:606: SendLength = 0;
	clr	a
	mov	_SendLength,a
	mov	(_SendLength + 1),a
;	src/usbcore.c:607: NeedZeroPacket = 1;
	mov	_NeedZeroPacket,#0x01
;	src/usbcore.c:608: usb_bus_ep0_send_data();
;	src/usbcore.c:609: break;
	ljmp	_usb_bus_ep0_send_data
;	src/usbcore.c:610: case SET_CONFIGURATION:
00146$:
;	src/usbcore.c:612: Prints("set configuration\n");                   
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:614: ConfigValue = wValue & 0xFF;
	mov	r7,_wValue
	mov	_ConfigValue,r7
;	src/usbcore.c:615: D12_set_endpoint_enable(wValue & 0xFF);
	mov	dpl,r7
	lcall	_D12_set_endpoint_enable
;	src/usbcore.c:617: SendLength = 0;
	clr	a
	mov	_SendLength,a
	mov	(_SendLength + 1),a
;	src/usbcore.c:618: NeedZeroPacket = 1;
	mov	_NeedZeroPacket,#0x01
;	src/usbcore.c:619: usb_bus_ep0_send_data();
;	src/usbcore.c:620: break;
	ljmp	_usb_bus_ep0_send_data
;	src/usbcore.c:621: case SET_DESCRIPTOR:
00147$:
;	src/usbcore.c:623: Prints("set descriptor\n");                   
	mov	dptr,#___str_30
	mov	b,#0x80
;	src/usbcore.c:625: break;
	ljmp	_Prints
;	src/usbcore.c:626: case SET_FEATURE:
00148$:
;	src/usbcore.c:628: Prints("set feature\n");                   
	mov	dptr,#___str_31
	mov	b,#0x80
;	src/usbcore.c:630: break;
	ljmp	_Prints
;	src/usbcore.c:631: case SET_INTERFACE:
00149$:
;	src/usbcore.c:633: Prints("set interface\n");                   
	mov	dptr,#___str_32
	mov	b,#0x80
;	src/usbcore.c:635: break;
	ljmp	_Prints
;	src/usbcore.c:636: default:
00150$:
;	src/usbcore.c:638: Prints("Error: undefined stander request\n");                   
	mov	dptr,#___str_22
	mov	b,#0x80
;	src/usbcore.c:642: break;
	ljmp	_Prints
;	src/usbcore.c:643: case 1:
00152$:
;	src/usbcore.c:645: Prints("USB class output request:\n");                   
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:647: switch (bRequest) {
	mov	a,#0x0a
	cjne	a,_bRequest,00154$
;	src/usbcore.c:650: Prints("set idle\n");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:652: SendLength = 1;
	mov	_SendLength,#0x01
	mov	(_SendLength + 1),#0x00
;	src/usbcore.c:653: NeedZeroPacket = 1;
	mov	_NeedZeroPacket,#0x01
;	src/usbcore.c:655: usb_bus_ep0_send_data();
;	src/usbcore.c:656: break;
;	src/usbcore.c:657: default:
	ljmp	_usb_bus_ep0_send_data
00154$:
;	src/usbcore.c:659: Prints("unknown request\n");                   
	mov	dptr,#___str_35
	mov	b,#0x80
;	src/usbcore.c:663: break;
;	src/usbcore.c:664: case 2:
	ljmp	_Prints
00156$:
;	src/usbcore.c:666: Prints("USB vendor output request:\n");                   
	mov	dptr,#___str_36
	mov	b,#0x80
;	src/usbcore.c:668: break;
;	src/usbcore.c:669: default:
	ljmp	_Prints
00157$:
;	src/usbcore.c:671: Prints("Error: undefined output request.\n");                   
	mov	dptr,#___str_37
	mov	b,#0x80
;	src/usbcore.c:674: }
	ljmp	_Prints
00163$:
;	src/usbcore.c:677: D12_read_endpoint_buffer(0, 16, buffer);
	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep0_out_buffer_65536_57
	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
	mov	_D12_read_endpoint_buffer_PARM_2,#0x10
	mov	dpl,#0x00
	lcall	_D12_read_endpoint_buffer
;	src/usbcore.c:678: D12_clear_buffer();
	lcall	_D12_clear_buffer
;	src/usbcore.c:679: dump_hex(buffer, 8);
	mov	_dump_hex_PARM_2,#0x08
	mov	(_dump_hex_PARM_2 + 1),#0x00
	mov	dptr,#_usb_bus_isr_ep0_out_buffer_65536_57
	mov	b,#0x40
;	src/usbcore.c:681: }
	ljmp	_dump_hex
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_bus_isr_ep0_in'
;------------------------------------------------------------
;	src/usbcore.c:683: void usb_bus_isr_ep0_in()
;	-----------------------------------------
;	 function usb_bus_isr_ep0_in
;	-----------------------------------------
_usb_bus_isr_ep0_in:
;	src/usbcore.c:686: Prints("usb isr ep0 in\n");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:688: D12_read_endpoint_last_status(1);
	mov	dpl,#0x01
	lcall	_D12_read_endpoint_last_status
;	src/usbcore.c:689: usb_bus_ep0_send_data();
;	src/usbcore.c:690: }
	ljmp	_usb_bus_ep0_send_data
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_bus_isr_ep1_out'
;------------------------------------------------------------
;buf                       Allocated with name '_usb_bus_isr_ep1_out_buf_65536_74'
;------------------------------------------------------------
;	src/usbcore.c:692: void usb_bus_isr_ep1_out()
;	-----------------------------------------
;	 function usb_bus_isr_ep1_out
;	-----------------------------------------
_usb_bus_isr_ep1_out:
;	src/usbcore.c:696: Prints("usb core ep1 out\n");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:699: D12_read_endpoint_last_status(2);
	mov	dpl,#0x02
	lcall	_D12_read_endpoint_last_status
;	src/usbcore.c:701: D12_read_endpoint_buffer(2, 2, buf);
	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep1_out_buf_65536_74
	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
	mov	_D12_read_endpoint_buffer_PARM_2,#0x02
	mov	dpl,#0x02
	lcall	_D12_read_endpoint_buffer
;	src/usbcore.c:703: D12_clear_buffer();
	lcall	_D12_clear_buffer
;	src/usbcore.c:705: if (buf[0] == 0x1)
	mov	a,#0x01
	cjne	a,_usb_bus_isr_ep1_out_buf_65536_74,00103$
;	src/usbcore.c:706: LED = ~buf[1];
	mov	a,(_usb_bus_isr_ep1_out_buf_65536_74 + 0x0001)
	cpl	a
	mov	_P2,a
00103$:
;	src/usbcore.c:707: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_bus_isr_ep1_in'
;------------------------------------------------------------
;	src/usbcore.c:709: void usb_bus_isr_ep1_in()
;	-----------------------------------------
;	 function usb_bus_isr_ep1_in
;	-----------------------------------------
_usb_bus_isr_ep1_in:
;	src/usbcore.c:712: Prints("usb core ep1 in\n");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_Prints
;	src/usbcore.c:714: D12_read_endpoint_last_status(3);
	mov	dpl,#0x03
	lcall	_D12_read_endpoint_last_status
;	src/usbcore.c:715: Ep1InIsBusy = 0;
	mov	_Ep1InIsBusy,#0x00
;	src/usbcore.c:716: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_bus_isr_ep2_out'
;------------------------------------------------------------
;	src/usbcore.c:718: void usb_bus_isr_ep2_out()
;	-----------------------------------------
;	 function usb_bus_isr_ep2_out
;	-----------------------------------------
_usb_bus_isr_ep2_out:
;	src/usbcore.c:721: Prints("usb core ep2 out\n");
	mov	dptr,#___str_41
	mov	b,#0x80
;	src/usbcore.c:723: }
	ljmp	_Prints
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_bus_isr_ep2_in'
;------------------------------------------------------------
;	src/usbcore.c:725: void usb_bus_isr_ep2_in()
;	-----------------------------------------
;	 function usb_bus_isr_ep2_in
;	-----------------------------------------
_usb_bus_isr_ep2_in:
;	src/usbcore.c:728: Prints("usb core ep2 in\n");
	mov	dptr,#___str_42
	mov	b,#0x80
;	src/usbcore.c:730: }
	ljmp	_Prints
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_bus_ep0_send_data'
;------------------------------------------------------------
;	src/usbcore.c:732: void usb_bus_ep0_send_data(void)
;	-----------------------------------------
;	 function usb_bus_ep0_send_data
;	-----------------------------------------
_usb_bus_ep0_send_data:
;	src/usbcore.c:734: if (SendLength > DeviceDescriptor[7]) {
	mov	dptr,#(_DeviceDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	clr	c
	mov	a,r5
	subb	a,_SendLength
	mov	a,r6
	subb	a,(_SendLength + 1)
	jnc	00107$
;	src/usbcore.c:735: D12_write_endpoint_buffer(1, DeviceDescriptor[7], pSendData);
	mov	_D12_write_endpoint_buffer_PARM_2,r7
	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
	mov	dpl,#0x01
	lcall	_D12_write_endpoint_buffer
;	src/usbcore.c:736: SendLength -= DeviceDescriptor[7];
	mov	dptr,#(_DeviceDescriptor + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	r3,_SendLength
	mov	r4,(_SendLength + 1)
	mov	a,r3
	clr	c
	subb	a,r5
	mov	r3,a
	mov	a,r4
	subb	a,r6
	mov	r4,a
	mov	_SendLength,r3
	mov	(_SendLength + 1),r4
;	src/usbcore.c:737: pSendData += DeviceDescriptor[7];
	mov	a,r7
	add	a,_pSendData
	mov	_pSendData,a
	clr	a
	addc	a,(_pSendData + 1)
	mov	(_pSendData + 1),a
	ret
00107$:
;	src/usbcore.c:739: if (SendLength != 0) {
	mov	a,_SendLength
	orl	a,(_SendLength + 1)
	jz	00104$
;	src/usbcore.c:740: D12_write_endpoint_buffer(1, SendLength, pSendData);
	mov	_D12_write_endpoint_buffer_PARM_2,_SendLength
	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
	mov	dpl,#0x01
	lcall	_D12_write_endpoint_buffer
;	src/usbcore.c:741: SendLength = 0;
	clr	a
	mov	_SendLength,a
	mov	(_SendLength + 1),a
	ret
00104$:
;	src/usbcore.c:743: if (NeedZeroPacket == 1) {
	mov	a,#0x01
	cjne	a,_NeedZeroPacket,00109$
;	src/usbcore.c:744: D12_write_endpoint_buffer(1, 0, pSendData);
	mov	_D12_write_endpoint_buffer_PARM_2,#0x00
	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
	mov	dpl,#0x01
	lcall	_D12_write_endpoint_buffer
;	src/usbcore.c:745: NeedZeroPacket = 0;
	mov	_NeedZeroPacket,#0x00
00109$:
;	src/usbcore.c:749: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_DeviceDescriptor:
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
_ConfigurationDescriptor:
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x32	; 50	'2'
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x0a	; 10
_languageId:
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x04	; 4
_ManufacturerStringDescriptor:
	.db #0x5e	; 94
	.db #0x03	; 3
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x6c	; 108	'l'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0x63	; 99	'c'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x6d	; 109	'm'
	.db #0x00	; 0
_ProductStringDescriptor:
	.db #0x36	; 54	'6'
	.db #0x03	; 3
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x6e	; 110	'n'
	.db #0x00	; 0
	.db #0x67	; 103	'g'
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x4b	; 75	'K'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
	.db #0x79	; 121	'y'
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x00	; 0
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x64	; 100	'd'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x77	; 119	'w'
	.db #0x00	; 0
	.db #0x69	; 105	'i'
	.db #0x00	; 0
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x4d	; 77	'M'
	.db #0x00	; 0
	.db #0x6f	; 111	'o'
	.db #0x00	; 0
	.db #0x75	; 117	'u'
	.db #0x00	; 0
	.db #0x73	; 115	's'
	.db #0x00	; 0
	.db #0x65	; 101	'e'
	.db #0x00	; 0
_SerialNumberStringDescriptor:
	.db #0x16	; 22
	.db #0x03	; 3
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db #0x2d	; 45
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x32	; 50	'2'
	.db #0x00	; 0
_ReportDescriptor:
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0xe0	; 224
	.db #0x29	; 41
	.db #0xe7	; 231
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x08	; 8
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x95	; 149
	.db #0x06	; 6
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0xff	; 255
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x65	; 101	'e'
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x05	; 5
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x05	; 5
	.db #0x91	; 145
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x03	; 3
	.db #0x91	; 145
	.db #0x03	; 3
	.db #0xc0	; 192
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0xa1	; 161
	.db #0x01	; 1
	.db #0x85	; 133
	.db #0x02	; 2
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0xa1	; 161
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x03	; 3
	.db #0x15	; 21
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x95	; 149
	.db #0x03	; 3
	.db #0x75	; 117	'u'
	.db #0x01	; 1
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x95	; 149
	.db #0x01	; 1
	.db #0x75	; 117	'u'
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x09	; 9
	.db #0x30	; 48	'0'
	.db #0x09	; 9
	.db #0x31	; 49	'1'
	.db #0x09	; 9
	.db #0x38	; 56	'8'
	.db #0x15	; 21
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0x7f	; 127
	.db #0x75	; 117	'u'
	.db #0x08	; 8
	.db #0x95	; 149
	.db #0x03	; 3
	.db #0x81	; 129
	.db #0x06	; 6
	.db #0xc0	; 192
	.db #0xc0	; 192
	.area CONST   (CODE)
___str_0:
	.ascii "usb disconnect"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "usb connect"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "usb core isr suspend"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "usb core isr reset"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "usb isr ep0 out"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "USB stand input request: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Get configuration"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Get descriptor -- "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "device descriptor"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "configuration descriptor"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "string descriptor -- "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "language ID"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "manufacture string"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "product string"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "serial string"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "unknown string"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "Report descriptor: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "other descriptor: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Get interface"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Get status"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Synch frame"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "Error: undefined stander request"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "USB class input request:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "USB vendor input request:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Error: undefined input request:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "USB stander output request: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "clear feature"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "set address, the address is: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "set configuration"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "set descriptor"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "set feature"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "set interface"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "USB class output request:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "set idle"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "unknown request"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "USB vendor output request:"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "Error: undefined output request."
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "usb isr ep0 in"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "usb core ep1 out"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "usb core ep1 in"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_41:
	.ascii "usb core ep2 out"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_42:
	.ascii "usb core ep2 in"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
