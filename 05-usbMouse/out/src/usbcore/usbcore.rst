                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module usbcore
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ReportDescriptor
                                     12 	.globl _SerialNumberStringDescriptor
                                     13 	.globl _ProductStringDescriptor
                                     14 	.globl _ManufacturerStringDescriptor
                                     15 	.globl _languageId
                                     16 	.globl _ConfigurationDescriptor
                                     17 	.globl _DeviceDescriptor
                                     18 	.globl _delay_ms
                                     19 	.globl _D12_set_endpoint_enable
                                     20 	.globl _D12_set_address
                                     21 	.globl _D12_write_endpoint_buffer
                                     22 	.globl _D12_read_endpoint_last_status
                                     23 	.globl _D12_Acknowlwdge_setup
                                     24 	.globl _D12_clear_buffer
                                     25 	.globl _D12_read_endpoint_buffer
                                     26 	.globl _D12_write_byte
                                     27 	.globl _D12_write_command
                                     28 	.globl _dump_hex
                                     29 	.globl _print_hex
                                     30 	.globl _Prints
                                     31 	.globl _memset
                                     32 	.globl _TF2
                                     33 	.globl _EXF2
                                     34 	.globl _RCLK
                                     35 	.globl _TCLK
                                     36 	.globl _EXEN2
                                     37 	.globl _TR2
                                     38 	.globl _C_T2
                                     39 	.globl _CP_RL2
                                     40 	.globl _T2CON_7
                                     41 	.globl _T2CON_6
                                     42 	.globl _T2CON_5
                                     43 	.globl _T2CON_4
                                     44 	.globl _T2CON_3
                                     45 	.globl _T2CON_2
                                     46 	.globl _T2CON_1
                                     47 	.globl _T2CON_0
                                     48 	.globl _PT2
                                     49 	.globl _ET2
                                     50 	.globl _CY
                                     51 	.globl _AC
                                     52 	.globl _F0
                                     53 	.globl _RS1
                                     54 	.globl _RS0
                                     55 	.globl _OV
                                     56 	.globl _F1
                                     57 	.globl _P
                                     58 	.globl _PS
                                     59 	.globl _PT1
                                     60 	.globl _PX1
                                     61 	.globl _PT0
                                     62 	.globl _PX0
                                     63 	.globl _RD
                                     64 	.globl _WR
                                     65 	.globl _T1
                                     66 	.globl _T0
                                     67 	.globl _INT1
                                     68 	.globl _INT0
                                     69 	.globl _TXD
                                     70 	.globl _RXD
                                     71 	.globl _P3_7
                                     72 	.globl _P3_6
                                     73 	.globl _P3_5
                                     74 	.globl _P3_4
                                     75 	.globl _P3_3
                                     76 	.globl _P3_2
                                     77 	.globl _P3_1
                                     78 	.globl _P3_0
                                     79 	.globl _EA
                                     80 	.globl _ES
                                     81 	.globl _ET1
                                     82 	.globl _EX1
                                     83 	.globl _ET0
                                     84 	.globl _EX0
                                     85 	.globl _P2_7
                                     86 	.globl _P2_6
                                     87 	.globl _P2_5
                                     88 	.globl _P2_4
                                     89 	.globl _P2_3
                                     90 	.globl _P2_2
                                     91 	.globl _P2_1
                                     92 	.globl _P2_0
                                     93 	.globl _SM0
                                     94 	.globl _SM1
                                     95 	.globl _SM2
                                     96 	.globl _REN
                                     97 	.globl _TB8
                                     98 	.globl _RB8
                                     99 	.globl _TI
                                    100 	.globl _RI
                                    101 	.globl _P1_7
                                    102 	.globl _P1_6
                                    103 	.globl _P1_5
                                    104 	.globl _P1_4
                                    105 	.globl _P1_3
                                    106 	.globl _P1_2
                                    107 	.globl _P1_1
                                    108 	.globl _P1_0
                                    109 	.globl _TF1
                                    110 	.globl _TR1
                                    111 	.globl _TF0
                                    112 	.globl _TR0
                                    113 	.globl _IE1
                                    114 	.globl _IT1
                                    115 	.globl _IE0
                                    116 	.globl _IT0
                                    117 	.globl _P0_7
                                    118 	.globl _P0_6
                                    119 	.globl _P0_5
                                    120 	.globl _P0_4
                                    121 	.globl _P0_3
                                    122 	.globl _P0_2
                                    123 	.globl _P0_1
                                    124 	.globl _P0_0
                                    125 	.globl _TH2
                                    126 	.globl _TL2
                                    127 	.globl _RCAP2H
                                    128 	.globl _RCAP2L
                                    129 	.globl _T2CON
                                    130 	.globl _B
                                    131 	.globl _ACC
                                    132 	.globl _PSW
                                    133 	.globl _IP
                                    134 	.globl _P3
                                    135 	.globl _IE
                                    136 	.globl _P2
                                    137 	.globl _SBUF
                                    138 	.globl _SCON
                                    139 	.globl _P1
                                    140 	.globl _TH1
                                    141 	.globl _TH0
                                    142 	.globl _TL1
                                    143 	.globl _TL0
                                    144 	.globl _TMOD
                                    145 	.globl _TCON
                                    146 	.globl _PCON
                                    147 	.globl _DPH
                                    148 	.globl _DPL
                                    149 	.globl _SP
                                    150 	.globl _P0
                                    151 	.globl _ConfigValue
                                    152 	.globl _Ep1InIsBusy
                                    153 	.globl _NeedZeroPacket
                                    154 	.globl _SendLength
                                    155 	.globl _pSendData
                                    156 	.globl _wLength
                                    157 	.globl _wIndex
                                    158 	.globl _wValue
                                    159 	.globl _bRequest
                                    160 	.globl _bmRequestType
                                    161 	.globl _usb_disconnect
                                    162 	.globl _usb_connect
                                    163 	.globl _usb_bus_isr_suspend
                                    164 	.globl _usb_bus_isr_reset
                                    165 	.globl _usb_bus_isr_ep0_out
                                    166 	.globl _usb_bus_isr_ep0_in
                                    167 	.globl _usb_bus_isr_ep1_out
                                    168 	.globl _usb_bus_isr_ep1_in
                                    169 	.globl _usb_bus_isr_ep2_out
                                    170 	.globl _usb_bus_isr_ep2_in
                                    171 	.globl _usb_bus_ep0_send_data
                                    172 ;--------------------------------------------------------
                                    173 ; special function registers
                                    174 ;--------------------------------------------------------
                                    175 	.area RSEG    (ABS,DATA)
      000000                        176 	.org 0x0000
                           000080   177 _P0	=	0x0080
                           000081   178 _SP	=	0x0081
                           000082   179 _DPL	=	0x0082
                           000083   180 _DPH	=	0x0083
                           000087   181 _PCON	=	0x0087
                           000088   182 _TCON	=	0x0088
                           000089   183 _TMOD	=	0x0089
                           00008A   184 _TL0	=	0x008a
                           00008B   185 _TL1	=	0x008b
                           00008C   186 _TH0	=	0x008c
                           00008D   187 _TH1	=	0x008d
                           000090   188 _P1	=	0x0090
                           000098   189 _SCON	=	0x0098
                           000099   190 _SBUF	=	0x0099
                           0000A0   191 _P2	=	0x00a0
                           0000A8   192 _IE	=	0x00a8
                           0000B0   193 _P3	=	0x00b0
                           0000B8   194 _IP	=	0x00b8
                           0000D0   195 _PSW	=	0x00d0
                           0000E0   196 _ACC	=	0x00e0
                           0000F0   197 _B	=	0x00f0
                           0000C8   198 _T2CON	=	0x00c8
                           0000CA   199 _RCAP2L	=	0x00ca
                           0000CB   200 _RCAP2H	=	0x00cb
                           0000CC   201 _TL2	=	0x00cc
                           0000CD   202 _TH2	=	0x00cd
                                    203 ;--------------------------------------------------------
                                    204 ; special function bits
                                    205 ;--------------------------------------------------------
                                    206 	.area RSEG    (ABS,DATA)
      000000                        207 	.org 0x0000
                           000080   208 _P0_0	=	0x0080
                           000081   209 _P0_1	=	0x0081
                           000082   210 _P0_2	=	0x0082
                           000083   211 _P0_3	=	0x0083
                           000084   212 _P0_4	=	0x0084
                           000085   213 _P0_5	=	0x0085
                           000086   214 _P0_6	=	0x0086
                           000087   215 _P0_7	=	0x0087
                           000088   216 _IT0	=	0x0088
                           000089   217 _IE0	=	0x0089
                           00008A   218 _IT1	=	0x008a
                           00008B   219 _IE1	=	0x008b
                           00008C   220 _TR0	=	0x008c
                           00008D   221 _TF0	=	0x008d
                           00008E   222 _TR1	=	0x008e
                           00008F   223 _TF1	=	0x008f
                           000090   224 _P1_0	=	0x0090
                           000091   225 _P1_1	=	0x0091
                           000092   226 _P1_2	=	0x0092
                           000093   227 _P1_3	=	0x0093
                           000094   228 _P1_4	=	0x0094
                           000095   229 _P1_5	=	0x0095
                           000096   230 _P1_6	=	0x0096
                           000097   231 _P1_7	=	0x0097
                           000098   232 _RI	=	0x0098
                           000099   233 _TI	=	0x0099
                           00009A   234 _RB8	=	0x009a
                           00009B   235 _TB8	=	0x009b
                           00009C   236 _REN	=	0x009c
                           00009D   237 _SM2	=	0x009d
                           00009E   238 _SM1	=	0x009e
                           00009F   239 _SM0	=	0x009f
                           0000A0   240 _P2_0	=	0x00a0
                           0000A1   241 _P2_1	=	0x00a1
                           0000A2   242 _P2_2	=	0x00a2
                           0000A3   243 _P2_3	=	0x00a3
                           0000A4   244 _P2_4	=	0x00a4
                           0000A5   245 _P2_5	=	0x00a5
                           0000A6   246 _P2_6	=	0x00a6
                           0000A7   247 _P2_7	=	0x00a7
                           0000A8   248 _EX0	=	0x00a8
                           0000A9   249 _ET0	=	0x00a9
                           0000AA   250 _EX1	=	0x00aa
                           0000AB   251 _ET1	=	0x00ab
                           0000AC   252 _ES	=	0x00ac
                           0000AF   253 _EA	=	0x00af
                           0000B0   254 _P3_0	=	0x00b0
                           0000B1   255 _P3_1	=	0x00b1
                           0000B2   256 _P3_2	=	0x00b2
                           0000B3   257 _P3_3	=	0x00b3
                           0000B4   258 _P3_4	=	0x00b4
                           0000B5   259 _P3_5	=	0x00b5
                           0000B6   260 _P3_6	=	0x00b6
                           0000B7   261 _P3_7	=	0x00b7
                           0000B0   262 _RXD	=	0x00b0
                           0000B1   263 _TXD	=	0x00b1
                           0000B2   264 _INT0	=	0x00b2
                           0000B3   265 _INT1	=	0x00b3
                           0000B4   266 _T0	=	0x00b4
                           0000B5   267 _T1	=	0x00b5
                           0000B6   268 _WR	=	0x00b6
                           0000B7   269 _RD	=	0x00b7
                           0000B8   270 _PX0	=	0x00b8
                           0000B9   271 _PT0	=	0x00b9
                           0000BA   272 _PX1	=	0x00ba
                           0000BB   273 _PT1	=	0x00bb
                           0000BC   274 _PS	=	0x00bc
                           0000D0   275 _P	=	0x00d0
                           0000D1   276 _F1	=	0x00d1
                           0000D2   277 _OV	=	0x00d2
                           0000D3   278 _RS0	=	0x00d3
                           0000D4   279 _RS1	=	0x00d4
                           0000D5   280 _F0	=	0x00d5
                           0000D6   281 _AC	=	0x00d6
                           0000D7   282 _CY	=	0x00d7
                           0000AD   283 _ET2	=	0x00ad
                           0000BD   284 _PT2	=	0x00bd
                           0000C8   285 _T2CON_0	=	0x00c8
                           0000C9   286 _T2CON_1	=	0x00c9
                           0000CA   287 _T2CON_2	=	0x00ca
                           0000CB   288 _T2CON_3	=	0x00cb
                           0000CC   289 _T2CON_4	=	0x00cc
                           0000CD   290 _T2CON_5	=	0x00cd
                           0000CE   291 _T2CON_6	=	0x00ce
                           0000CF   292 _T2CON_7	=	0x00cf
                           0000C8   293 _CP_RL2	=	0x00c8
                           0000C9   294 _C_T2	=	0x00c9
                           0000CA   295 _TR2	=	0x00ca
                           0000CB   296 _EXEN2	=	0x00cb
                           0000CC   297 _TCLK	=	0x00cc
                           0000CD   298 _RCLK	=	0x00cd
                           0000CE   299 _EXF2	=	0x00ce
                           0000CF   300 _TF2	=	0x00cf
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable register banks
                                    303 ;--------------------------------------------------------
                                    304 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        305 	.ds 8
                                    306 ;--------------------------------------------------------
                                    307 ; internal ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area DSEG    (DATA)
      000035                        310 _bmRequestType::
      000035                        311 	.ds 1
      000036                        312 _bRequest::
      000036                        313 	.ds 1
      000037                        314 _wValue::
      000037                        315 	.ds 2
      000039                        316 _wIndex::
      000039                        317 	.ds 2
      00003B                        318 _wLength::
      00003B                        319 	.ds 2
      00003D                        320 _pSendData::
      00003D                        321 	.ds 3
      000040                        322 _SendLength::
      000040                        323 	.ds 2
      000042                        324 _NeedZeroPacket::
      000042                        325 	.ds 1
      000043                        326 _Ep1InIsBusy::
      000043                        327 	.ds 1
      000044                        328 _ConfigValue::
      000044                        329 	.ds 1
      000045                        330 _usb_bus_isr_ep0_out_buffer_65536_55:
      000045                        331 	.ds 16
                                    332 ;--------------------------------------------------------
                                    333 ; overlayable items in internal ram 
                                    334 ;--------------------------------------------------------
                                    335 ;--------------------------------------------------------
                                    336 ; indirectly addressable internal ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area ISEG    (DATA)
                                    339 ;--------------------------------------------------------
                                    340 ; absolute internal ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area IABS    (ABS,DATA)
                                    343 	.area IABS    (ABS,DATA)
                                    344 ;--------------------------------------------------------
                                    345 ; bit data
                                    346 ;--------------------------------------------------------
                                    347 	.area BSEG    (BIT)
                                    348 ;--------------------------------------------------------
                                    349 ; paged external ram data
                                    350 ;--------------------------------------------------------
                                    351 	.area PSEG    (PAG,XDATA)
                                    352 ;--------------------------------------------------------
                                    353 ; external ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area XSEG    (XDATA)
                                    356 ;--------------------------------------------------------
                                    357 ; absolute external ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area XABS    (ABS,XDATA)
                                    360 ;--------------------------------------------------------
                                    361 ; external initialized ram data
                                    362 ;--------------------------------------------------------
                                    363 	.area XISEG   (XDATA)
                                    364 	.area HOME    (CODE)
                                    365 	.area GSINIT0 (CODE)
                                    366 	.area GSINIT1 (CODE)
                                    367 	.area GSINIT2 (CODE)
                                    368 	.area GSINIT3 (CODE)
                                    369 	.area GSINIT4 (CODE)
                                    370 	.area GSINIT5 (CODE)
                                    371 	.area GSINIT  (CODE)
                                    372 	.area GSFINAL (CODE)
                                    373 	.area CSEG    (CODE)
                                    374 ;--------------------------------------------------------
                                    375 ; global & static initialisations
                                    376 ;--------------------------------------------------------
                                    377 	.area HOME    (CODE)
                                    378 	.area GSINIT  (CODE)
                                    379 	.area GSFINAL (CODE)
                                    380 	.area GSINIT  (CODE)
                                    381 ;--------------------------------------------------------
                                    382 ; Home
                                    383 ;--------------------------------------------------------
                                    384 	.area HOME    (CODE)
                                    385 	.area HOME    (CODE)
                                    386 ;--------------------------------------------------------
                                    387 ; code
                                    388 ;--------------------------------------------------------
                                    389 	.area CSEG    (CODE)
                                    390 ;------------------------------------------------------------
                                    391 ;Allocation info for local variables in function 'usb_disconnect'
                                    392 ;------------------------------------------------------------
                                    393 ;	src/usbcore.c:259: void usb_disconnect(void)
                                    394 ;	-----------------------------------------
                                    395 ;	 function usb_disconnect
                                    396 ;	-----------------------------------------
      0008C9                        397 _usb_disconnect:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
                                    406 ;	src/usbcore.c:262: Prints("usb disconnect\n");
      0008C9 90 10 E9         [24]  407 	mov	dptr,#___str_0
      0008CC 75 F0 80         [24]  408 	mov	b,#0x80
      0008CF 12 07 20         [24]  409 	lcall	_Prints
                                    410 ;	src/usbcore.c:264: D12_write_command(D12_SET_MODE);    /* set mode */
      0008D2 75 82 F3         [24]  411 	mov	dpl,#0xf3
      0008D5 12 04 80         [24]  412 	lcall	_D12_write_command
                                    413 ;	src/usbcore.c:265: D12_write_byte(0x06);               /* byte1, pull-up R disconnect, indicate usb disconnet */
      0008D8 75 82 06         [24]  414 	mov	dpl,#0x06
      0008DB 12 04 BF         [24]  415 	lcall	_D12_write_byte
                                    416 ;	src/usbcore.c:266: D12_write_byte(0x47);               /* byte2 */
      0008DE 75 82 47         [24]  417 	mov	dpl,#0x47
      0008E1 12 04 BF         [24]  418 	lcall	_D12_write_byte
                                    419 ;	src/usbcore.c:267: delay_ms(1000);
      0008E4 90 03 E8         [24]  420 	mov	dptr,#0x03e8
                                    421 ;	src/usbcore.c:268: }
      0008E7 02 00 90         [24]  422 	ljmp	_delay_ms
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'usb_connect'
                                    425 ;------------------------------------------------------------
                                    426 ;	src/usbcore.c:270: void usb_connect(void)
                                    427 ;	-----------------------------------------
                                    428 ;	 function usb_connect
                                    429 ;	-----------------------------------------
      0008EA                        430 _usb_connect:
                                    431 ;	src/usbcore.c:273: Prints("usb connect\n");
      0008EA 90 10 F9         [24]  432 	mov	dptr,#___str_1
      0008ED 75 F0 80         [24]  433 	mov	b,#0x80
      0008F0 12 07 20         [24]  434 	lcall	_Prints
                                    435 ;	src/usbcore.c:275: D12_write_command(D12_SET_MODE);    /* set mode */
      0008F3 75 82 F3         [24]  436 	mov	dpl,#0xf3
      0008F6 12 04 80         [24]  437 	lcall	_D12_write_command
                                    438 ;	src/usbcore.c:276: D12_write_byte(0x16);               /* byte1, pull-up R connect, indicate usb connet */
      0008F9 75 82 16         [24]  439 	mov	dpl,#0x16
      0008FC 12 04 BF         [24]  440 	lcall	_D12_write_byte
                                    441 ;	src/usbcore.c:277: D12_write_byte(0x47);               /* byte2 */
      0008FF 75 82 47         [24]  442 	mov	dpl,#0x47
                                    443 ;	src/usbcore.c:278: }
      000902 02 04 BF         [24]  444 	ljmp	_D12_write_byte
                                    445 ;------------------------------------------------------------
                                    446 ;Allocation info for local variables in function 'usb_bus_isr_suspend'
                                    447 ;------------------------------------------------------------
                                    448 ;	src/usbcore.c:280: void usb_bus_isr_suspend()
                                    449 ;	-----------------------------------------
                                    450 ;	 function usb_bus_isr_suspend
                                    451 ;	-----------------------------------------
      000905                        452 _usb_bus_isr_suspend:
                                    453 ;	src/usbcore.c:283: Prints("usb core isr suspend\n");
      000905 90 11 06         [24]  454 	mov	dptr,#___str_2
      000908 75 F0 80         [24]  455 	mov	b,#0x80
                                    456 ;	src/usbcore.c:285: }
      00090B 02 07 20         [24]  457 	ljmp	_Prints
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'usb_bus_isr_reset'
                                    460 ;------------------------------------------------------------
                                    461 ;	src/usbcore.c:287: void usb_bus_isr_reset()
                                    462 ;	-----------------------------------------
                                    463 ;	 function usb_bus_isr_reset
                                    464 ;	-----------------------------------------
      00090E                        465 _usb_bus_isr_reset:
                                    466 ;	src/usbcore.c:290: Prints("usb core isr reset\n");
      00090E 90 11 1C         [24]  467 	mov	dptr,#___str_3
      000911 75 F0 80         [24]  468 	mov	b,#0x80
      000914 12 07 20         [24]  469 	lcall	_Prints
                                    470 ;	src/usbcore.c:292: Ep1InIsBusy = 0;
      000917 75 43 00         [24]  471 	mov	_Ep1InIsBusy,#0x00
                                    472 ;	src/usbcore.c:293: }
      00091A 22               [24]  473 	ret
                                    474 ;------------------------------------------------------------
                                    475 ;Allocation info for local variables in function 'usb_bus_isr_ep0_out'
                                    476 ;------------------------------------------------------------
                                    477 ;buffer                    Allocated with name '_usb_bus_isr_ep0_out_buffer_65536_55'
                                    478 ;------------------------------------------------------------
                                    479 ;	src/usbcore.c:306: void usb_bus_isr_ep0_out()
                                    480 ;	-----------------------------------------
                                    481 ;	 function usb_bus_isr_ep0_out
                                    482 ;	-----------------------------------------
      00091B                        483 _usb_bus_isr_ep0_out:
                                    484 ;	src/usbcore.c:310: Prints("usb isr ep0 out\n");
      00091B 90 11 30         [24]  485 	mov	dptr,#___str_4
      00091E 75 F0 80         [24]  486 	mov	b,#0x80
      000921 12 07 20         [24]  487 	lcall	_Prints
                                    488 ;	src/usbcore.c:312: memset(buffer, 0, sizeof(buffer));
      000924 75 17 00         [24]  489 	mov	_memset_PARM_2,#0x00
      000927 75 18 10         [24]  490 	mov	_memset_PARM_3,#0x10
      00092A 75 19 00         [24]  491 	mov	(_memset_PARM_3 + 1),#0x00
      00092D 90 00 45         [24]  492 	mov	dptr,#_usb_bus_isr_ep0_out_buffer_65536_55
      000930 75 F0 40         [24]  493 	mov	b,#0x40
      000933 12 0E 7E         [24]  494 	lcall	_memset
                                    495 ;	src/usbcore.c:315: if (D12_read_endpoint_last_status(0) & 0x20) {
      000936 75 82 00         [24]  496 	mov	dpl,#0x00
      000939 12 04 CD         [24]  497 	lcall	_D12_read_endpoint_last_status
      00093C E5 82            [12]  498 	mov	a,dpl
      00093E 20 E5 03         [24]  499 	jb	acc.5,00299$
      000941 02 0D 72         [24]  500 	ljmp	00163$
      000944                        501 00299$:
                                    502 ;	src/usbcore.c:316: D12_read_endpoint_buffer(0, 16, buffer);
      000944 75 10 45         [24]  503 	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep0_out_buffer_65536_55
      000947 75 11 00         [24]  504 	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
      00094A 75 12 40         [24]  505 	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
      00094D 75 0F 10         [24]  506 	mov	_D12_read_endpoint_buffer_PARM_2,#0x10
      000950 75 82 00         [24]  507 	mov	dpl,#0x00
      000953 12 04 DD         [24]  508 	lcall	_D12_read_endpoint_buffer
                                    509 ;	src/usbcore.c:317: D12_Acknowlwdge_setup();
      000956 12 05 CA         [24]  510 	lcall	_D12_Acknowlwdge_setup
                                    511 ;	src/usbcore.c:318: D12_clear_buffer();
      000959 12 05 C4         [24]  512 	lcall	_D12_clear_buffer
                                    513 ;	src/usbcore.c:320: bmRequestType = buffer[0];
      00095C 85 45 35         [24]  514 	mov	_bmRequestType,_usb_bus_isr_ep0_out_buffer_65536_55
                                    515 ;	src/usbcore.c:321: bRequest = buffer[1];
      00095F 85 46 36         [24]  516 	mov	_bRequest,(_usb_bus_isr_ep0_out_buffer_65536_55 + 0x0001)
                                    517 ;	src/usbcore.c:322: wValue = buffer[2] | (((uint16)buffer[3]) << 8);
      000962 AF 48            [24]  518 	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_55 + 0x0003)
      000964 7E 00            [12]  519 	mov	r6,#0x00
      000966 AC 47            [24]  520 	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_55 + 0x0002)
      000968 7D 00            [12]  521 	mov	r5,#0x00
      00096A EE               [12]  522 	mov	a,r6
      00096B 4C               [12]  523 	orl	a,r4
      00096C F5 37            [12]  524 	mov	_wValue,a
      00096E EF               [12]  525 	mov	a,r7
      00096F 4D               [12]  526 	orl	a,r5
      000970 F5 38            [12]  527 	mov	(_wValue + 1),a
                                    528 ;	src/usbcore.c:323: wIndex = buffer[4] | (((uint16)buffer[5]) << 8);
      000972 AF 4A            [24]  529 	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_55 + 0x0005)
      000974 7E 00            [12]  530 	mov	r6,#0x00
      000976 AC 49            [24]  531 	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_55 + 0x0004)
      000978 7D 00            [12]  532 	mov	r5,#0x00
      00097A EE               [12]  533 	mov	a,r6
      00097B 4C               [12]  534 	orl	a,r4
      00097C F5 39            [12]  535 	mov	_wIndex,a
      00097E EF               [12]  536 	mov	a,r7
      00097F 4D               [12]  537 	orl	a,r5
      000980 F5 3A            [12]  538 	mov	(_wIndex + 1),a
                                    539 ;	src/usbcore.c:324: wLength = buffer[6] | (((uint16)buffer[7]) << 8);
      000982 AF 4C            [24]  540 	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_55 + 0x0007)
      000984 7E 00            [12]  541 	mov	r6,#0x00
      000986 AC 4B            [24]  542 	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_55 + 0x0006)
      000988 7D 00            [12]  543 	mov	r5,#0x00
      00098A EE               [12]  544 	mov	a,r6
      00098B 4C               [12]  545 	orl	a,r4
      00098C F5 3B            [12]  546 	mov	_wLength,a
      00098E EF               [12]  547 	mov	a,r7
      00098F 4D               [12]  548 	orl	a,r5
      000990 F5 3C            [12]  549 	mov	(_wLength + 1),a
                                    550 ;	src/usbcore.c:326: if ((bmRequestType & 0x80) == 0x80) {   /* input request */
      000992 AE 35            [24]  551 	mov	r6,_bmRequestType
      000994 53 06 80         [24]  552 	anl	ar6,#0x80
      000997 7F 00            [12]  553 	mov	r7,#0x00
      000999 BE 80 05         [24]  554 	cjne	r6,#0x80,00300$
      00099C BF 00 02         [24]  555 	cjne	r7,#0x00,00300$
      00099F 80 03            [24]  556 	sjmp	00301$
      0009A1                        557 00300$:
      0009A1 02 0C 65         [24]  558 	ljmp	00160$
      0009A4                        559 00301$:
                                    560 ;	src/usbcore.c:329: switch ((bmRequestType >> 5) & 0x3) {
      0009A4 E5 35            [12]  561 	mov	a,_bmRequestType
      0009A6 C4               [12]  562 	swap	a
      0009A7 03               [12]  563 	rr	a
      0009A8 54 07            [12]  564 	anl	a,#0x07
      0009AA FF               [12]  565 	mov	r7,a
      0009AB 53 07 03         [24]  566 	anl	ar7,#0x03
      0009AE 7E 00            [12]  567 	mov	r6,#0x00
      0009B0 BF 00 05         [24]  568 	cjne	r7,#0x00,00302$
      0009B3 BE 00 02         [24]  569 	cjne	r6,#0x00,00302$
      0009B6 80 15            [24]  570 	sjmp	00101$
      0009B8                        571 00302$:
      0009B8 BF 01 06         [24]  572 	cjne	r7,#0x01,00303$
      0009BB BE 00 03         [24]  573 	cjne	r6,#0x00,00303$
      0009BE 02 0C 4A         [24]  574 	ljmp	00139$
      0009C1                        575 00303$:
      0009C1 BF 02 06         [24]  576 	cjne	r7,#0x02,00304$
      0009C4 BE 00 03         [24]  577 	cjne	r6,#0x00,00304$
      0009C7 02 0C 53         [24]  578 	ljmp	00140$
      0009CA                        579 00304$:
      0009CA 02 0C 5C         [24]  580 	ljmp	00141$
                                    581 ;	src/usbcore.c:330: case 0:                             /* stander request */
      0009CD                        582 00101$:
                                    583 ;	src/usbcore.c:332: Prints("USB stand input request: ");
      0009CD 90 11 41         [24]  584 	mov	dptr,#___str_5
      0009D0 75 F0 80         [24]  585 	mov	b,#0x80
      0009D3 12 07 20         [24]  586 	lcall	_Prints
                                    587 ;	src/usbcore.c:334: switch (bRequest) {
      0009D6 E4               [12]  588 	clr	a
      0009D7 B5 36 03         [24]  589 	cjne	a,_bRequest,00305$
      0009DA 02 0C 2F         [24]  590 	ljmp	00135$
      0009DD                        591 00305$:
      0009DD 74 06            [12]  592 	mov	a,#0x06
      0009DF B5 36 02         [24]  593 	cjne	a,_bRequest,00306$
      0009E2 80 23            [24]  594 	sjmp	00103$
      0009E4                        595 00306$:
      0009E4 74 08            [12]  596 	mov	a,#0x08
      0009E6 B5 36 02         [24]  597 	cjne	a,_bRequest,00307$
      0009E9 80 13            [24]  598 	sjmp	00102$
      0009EB                        599 00307$:
      0009EB 74 0A            [12]  600 	mov	a,#0x0a
      0009ED B5 36 03         [24]  601 	cjne	a,_bRequest,00308$
      0009F0 02 0C 26         [24]  602 	ljmp	00134$
      0009F3                        603 00308$:
      0009F3 74 0C            [12]  604 	mov	a,#0x0c
      0009F5 B5 36 03         [24]  605 	cjne	a,_bRequest,00309$
      0009F8 02 0C 38         [24]  606 	ljmp	00136$
      0009FB                        607 00309$:
      0009FB 02 0C 41         [24]  608 	ljmp	00137$
                                    609 ;	src/usbcore.c:335: case GET_CONFIGURATION:         /* get configuration */
      0009FE                        610 00102$:
                                    611 ;	src/usbcore.c:337: Prints("Get configuration\n");
      0009FE 90 11 5B         [24]  612 	mov	dptr,#___str_6
      000A01 75 F0 80         [24]  613 	mov	b,#0x80
                                    614 ;	src/usbcore.c:339: break;
      000A04 02 07 20         [24]  615 	ljmp	_Prints
                                    616 ;	src/usbcore.c:340: case GET_DESCRIPTOR:
      000A07                        617 00103$:
                                    618 ;	src/usbcore.c:342: Prints("Get descriptor -- ");
      000A07 90 11 6E         [24]  619 	mov	dptr,#___str_7
      000A0A 75 F0 80         [24]  620 	mov	b,#0x80
      000A0D 12 07 20         [24]  621 	lcall	_Prints
                                    622 ;	src/usbcore.c:346: switch ((wValue >> 8) & 0xFF) {
      000A10 AF 38            [24]  623 	mov	r7,(_wValue + 1)
      000A12 BF 01 02         [24]  624 	cjne	r7,#0x01,00310$
      000A15 80 14            [24]  625 	sjmp	00104$
      000A17                        626 00310$:
      000A17 BF 02 02         [24]  627 	cjne	r7,#0x02,00311$
      000A1A 80 61            [24]  628 	sjmp	00110$
      000A1C                        629 00311$:
      000A1C BF 03 03         [24]  630 	cjne	r7,#0x03,00312$
      000A1F 02 0A DE         [24]  631 	ljmp	00116$
      000A22                        632 00312$:
      000A22 BF 22 03         [24]  633 	cjne	r7,#0x22,00313$
      000A25 02 0B C7         [24]  634 	ljmp	00127$
      000A28                        635 00313$:
      000A28 02 0C 0E         [24]  636 	ljmp	00132$
                                    637 ;	src/usbcore.c:347: case DEVICE_DESCRIPTOR:
      000A2B                        638 00104$:
                                    639 ;	src/usbcore.c:349: Prints("device descriptor\n");
      000A2B 90 11 81         [24]  640 	mov	dptr,#___str_8
      000A2E 75 F0 80         [24]  641 	mov	b,#0x80
      000A31 12 07 20         [24]  642 	lcall	_Prints
                                    643 ;	src/usbcore.c:351: pSendData = (uint8 *)DeviceDescriptor;
      000A34 75 3D EF         [24]  644 	mov	_pSendData,#_DeviceDescriptor
      000A37 75 3E 0F         [24]  645 	mov	(_pSendData + 1),#(_DeviceDescriptor >> 8)
      000A3A 75 3F 80         [24]  646 	mov	(_pSendData + 2),#0x80
                                    647 ;	src/usbcore.c:352: if (wLength > DeviceDescriptor[0]) {
      000A3D 90 0F EF         [24]  648 	mov	dptr,#_DeviceDescriptor
      000A40 E4               [12]  649 	clr	a
      000A41 93               [24]  650 	movc	a,@a+dptr
      000A42 FE               [12]  651 	mov	r6,a
      000A43 7F 00            [12]  652 	mov	r7,#0x00
      000A45 C3               [12]  653 	clr	c
      000A46 EE               [12]  654 	mov	a,r6
      000A47 95 3B            [12]  655 	subb	a,_wLength
      000A49 EF               [12]  656 	mov	a,r7
      000A4A 95 3C            [12]  657 	subb	a,(_wLength + 1)
      000A4C 50 26            [24]  658 	jnc	00108$
                                    659 ;	src/usbcore.c:353: SendLength = DeviceDescriptor[0];
      000A4E 8E 40            [24]  660 	mov	_SendLength,r6
      000A50 8F 41            [24]  661 	mov	(_SendLength + 1),r7
                                    662 ;	src/usbcore.c:354: if (SendLength % DeviceDescriptor[7] == 0)
      000A52 90 0F F6         [24]  663 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000A55 E4               [12]  664 	clr	a
      000A56 93               [24]  665 	movc	a,@a+dptr
      000A57 FF               [12]  666 	mov	r7,a
      000A58 8F 17            [24]  667 	mov	__moduint_PARM_2,r7
      000A5A 75 18 00         [24]  668 	mov	(__moduint_PARM_2 + 1),#0x00
      000A5D 85 40 82         [24]  669 	mov	dpl,_SendLength
      000A60 85 41 83         [24]  670 	mov	dph,(_SendLength + 1)
      000A63 12 0E B8         [24]  671 	lcall	__moduint
      000A66 E5 82            [12]  672 	mov	a,dpl
      000A68 85 83 F0         [24]  673 	mov	b,dph
      000A6B 45 F0            [12]  674 	orl	a,b
      000A6D 70 0B            [24]  675 	jnz	00109$
                                    676 ;	src/usbcore.c:355: NeedZeroPacket = 1;
      000A6F 75 42 01         [24]  677 	mov	_NeedZeroPacket,#0x01
      000A72 80 06            [24]  678 	sjmp	00109$
      000A74                        679 00108$:
                                    680 ;	src/usbcore.c:357: SendLength = wLength;
      000A74 85 3B 40         [24]  681 	mov	_SendLength,_wLength
      000A77 85 3C 41         [24]  682 	mov	(_SendLength + 1),(_wLength + 1)
      000A7A                        683 00109$:
                                    684 ;	src/usbcore.c:359: usb_bus_ep0_send_data();
                                    685 ;	src/usbcore.c:360: break;
      000A7A 02 0D D6         [24]  686 	ljmp	_usb_bus_ep0_send_data
                                    687 ;	src/usbcore.c:361: case CONFIGURATION_DESCRIPTOR:
      000A7D                        688 00110$:
                                    689 ;	src/usbcore.c:363: Prints("configuration descriptor\n");
      000A7D 90 11 94         [24]  690 	mov	dptr,#___str_9
      000A80 75 F0 80         [24]  691 	mov	b,#0x80
      000A83 12 07 20         [24]  692 	lcall	_Prints
                                    693 ;	src/usbcore.c:365: pSendData = (uint8 *)ConfigurationDescriptor;
      000A86 75 3D 01         [24]  694 	mov	_pSendData,#_ConfigurationDescriptor
      000A89 75 3E 10         [24]  695 	mov	(_pSendData + 1),#(_ConfigurationDescriptor >> 8)
      000A8C 75 3F 80         [24]  696 	mov	(_pSendData + 2),#0x80
                                    697 ;	src/usbcore.c:366: SendLength = ConfigurationDescriptor[3] * 256 + ConfigurationDescriptor[2];
      000A8F 90 10 04         [24]  698 	mov	dptr,#(_ConfigurationDescriptor + 0x0003)
      000A92 E4               [12]  699 	clr	a
      000A93 93               [24]  700 	movc	a,@a+dptr
      000A94 FE               [12]  701 	mov	r6,a
      000A95 7F 00            [12]  702 	mov	r7,#0x00
      000A97 90 10 03         [24]  703 	mov	dptr,#(_ConfigurationDescriptor + 0x0002)
      000A9A E4               [12]  704 	clr	a
      000A9B 93               [24]  705 	movc	a,@a+dptr
      000A9C FD               [12]  706 	mov	r5,a
      000A9D 7C 00            [12]  707 	mov	r4,#0x00
      000A9F 2F               [12]  708 	add	a,r7
      000AA0 FF               [12]  709 	mov	r7,a
      000AA1 EC               [12]  710 	mov	a,r4
      000AA2 3E               [12]  711 	addc	a,r6
      000AA3 FE               [12]  712 	mov	r6,a
      000AA4 8F 40            [24]  713 	mov	_SendLength,r7
      000AA6 8E 41            [24]  714 	mov	(_SendLength + 1),r6
                                    715 ;	src/usbcore.c:367: if (wLength > SendLength) {
      000AA8 C3               [12]  716 	clr	c
      000AA9 E5 40            [12]  717 	mov	a,_SendLength
      000AAB 95 3B            [12]  718 	subb	a,_wLength
      000AAD E5 41            [12]  719 	mov	a,(_SendLength + 1)
      000AAF 95 3C            [12]  720 	subb	a,(_wLength + 1)
      000AB1 50 22            [24]  721 	jnc	00114$
                                    722 ;	src/usbcore.c:368: if (SendLength % DeviceDescriptor[7] == 0)
      000AB3 90 0F F6         [24]  723 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000AB6 E4               [12]  724 	clr	a
      000AB7 93               [24]  725 	movc	a,@a+dptr
      000AB8 FF               [12]  726 	mov	r7,a
      000AB9 8F 17            [24]  727 	mov	__moduint_PARM_2,r7
      000ABB 75 18 00         [24]  728 	mov	(__moduint_PARM_2 + 1),#0x00
      000ABE 85 40 82         [24]  729 	mov	dpl,_SendLength
      000AC1 85 41 83         [24]  730 	mov	dph,(_SendLength + 1)
      000AC4 12 0E B8         [24]  731 	lcall	__moduint
      000AC7 E5 82            [12]  732 	mov	a,dpl
      000AC9 85 83 F0         [24]  733 	mov	b,dph
      000ACC 45 F0            [12]  734 	orl	a,b
      000ACE 70 0B            [24]  735 	jnz	00115$
                                    736 ;	src/usbcore.c:369: NeedZeroPacket = 1;
      000AD0 75 42 01         [24]  737 	mov	_NeedZeroPacket,#0x01
      000AD3 80 06            [24]  738 	sjmp	00115$
      000AD5                        739 00114$:
                                    740 ;	src/usbcore.c:371: SendLength = wLength;
      000AD5 85 3B 40         [24]  741 	mov	_SendLength,_wLength
      000AD8 85 3C 41         [24]  742 	mov	(_SendLength + 1),(_wLength + 1)
      000ADB                        743 00115$:
                                    744 ;	src/usbcore.c:373: usb_bus_ep0_send_data();
                                    745 ;	src/usbcore.c:374: break;
      000ADB 02 0D D6         [24]  746 	ljmp	_usb_bus_ep0_send_data
                                    747 ;	src/usbcore.c:375: case STRING_DESCRIPTOR:
      000ADE                        748 00116$:
                                    749 ;	src/usbcore.c:377: Prints("string descriptor -- ");
      000ADE 90 11 AE         [24]  750 	mov	dptr,#___str_10
      000AE1 75 F0 80         [24]  751 	mov	b,#0x80
      000AE4 12 07 20         [24]  752 	lcall	_Prints
                                    753 ;	src/usbcore.c:379: switch (wValue & 0xFF) {
      000AE7 AE 37            [24]  754 	mov	r6,_wValue
      000AE9 7F 00            [12]  755 	mov	r7,#0x00
      000AEB C3               [12]  756 	clr	c
      000AEC 74 03            [12]  757 	mov	a,#0x03
      000AEE 9E               [12]  758 	subb	a,r6
      000AEF E4               [12]  759 	clr	a
      000AF0 9F               [12]  760 	subb	a,r7
      000AF1 50 03            [24]  761 	jnc	00318$
      000AF3 02 0B 80         [24]  762 	ljmp	00121$
      000AF6                        763 00318$:
      000AF6 EE               [12]  764 	mov	a,r6
      000AF7 2E               [12]  765 	add	a,r6
                                    766 ;	src/usbcore.c:380: case 0:         /* get language ID */
      000AF8 90 0A FC         [24]  767 	mov	dptr,#00319$
      000AFB 73               [24]  768 	jmp	@a+dptr
      000AFC                        769 00319$:
      000AFC 80 06            [24]  770 	sjmp	00117$
      000AFE 80 23            [24]  771 	sjmp	00118$
      000B00 80 40            [24]  772 	sjmp	00119$
      000B02 80 5D            [24]  773 	sjmp	00120$
      000B04                        774 00117$:
                                    775 ;	src/usbcore.c:382: Prints("language ID\n");
      000B04 90 11 C4         [24]  776 	mov	dptr,#___str_11
      000B07 75 F0 80         [24]  777 	mov	b,#0x80
      000B0A 12 07 20         [24]  778 	lcall	_Prints
                                    779 ;	src/usbcore.c:384: pSendData = (uint8 *)languageId;
      000B0D 75 3D 23         [24]  780 	mov	_pSendData,#_languageId
      000B10 75 3E 10         [24]  781 	mov	(_pSendData + 1),#(_languageId >> 8)
      000B13 75 3F 80         [24]  782 	mov	(_pSendData + 2),#0x80
                                    783 ;	src/usbcore.c:385: SendLength = languageId[0];
      000B16 90 10 23         [24]  784 	mov	dptr,#_languageId
      000B19 E4               [12]  785 	clr	a
      000B1A 93               [24]  786 	movc	a,@a+dptr
      000B1B FF               [12]  787 	mov	r7,a
      000B1C 8F 40            [24]  788 	mov	_SendLength,r7
      000B1E 75 41 00         [24]  789 	mov	(_SendLength + 1),#0x00
                                    790 ;	src/usbcore.c:386: break;
                                    791 ;	src/usbcore.c:387: case 1:         /* Vendor string id is 1  */
      000B21 80 6E            [24]  792 	sjmp	00122$
      000B23                        793 00118$:
                                    794 ;	src/usbcore.c:389: Prints("manufacture string\n");
      000B23 90 11 D1         [24]  795 	mov	dptr,#___str_12
      000B26 75 F0 80         [24]  796 	mov	b,#0x80
      000B29 12 07 20         [24]  797 	lcall	_Prints
                                    798 ;	src/usbcore.c:391: pSendData = (uint8 *)ManufacturerStringDescriptor;
      000B2C 75 3D 27         [24]  799 	mov	_pSendData,#_ManufacturerStringDescriptor
      000B2F 75 3E 10         [24]  800 	mov	(_pSendData + 1),#(_ManufacturerStringDescriptor >> 8)
      000B32 75 3F 80         [24]  801 	mov	(_pSendData + 2),#0x80
                                    802 ;	src/usbcore.c:392: SendLength = ManufacturerStringDescriptor[0];
      000B35 90 10 27         [24]  803 	mov	dptr,#_ManufacturerStringDescriptor
      000B38 E4               [12]  804 	clr	a
      000B39 93               [24]  805 	movc	a,@a+dptr
      000B3A FF               [12]  806 	mov	r7,a
      000B3B 8F 40            [24]  807 	mov	_SendLength,r7
      000B3D 75 41 00         [24]  808 	mov	(_SendLength + 1),#0x00
                                    809 ;	src/usbcore.c:393: break;
                                    810 ;	src/usbcore.c:394: case 2:         /* Vendor string id is 1  */
      000B40 80 4F            [24]  811 	sjmp	00122$
      000B42                        812 00119$:
                                    813 ;	src/usbcore.c:396: Prints("product string\n");
      000B42 90 11 E5         [24]  814 	mov	dptr,#___str_13
      000B45 75 F0 80         [24]  815 	mov	b,#0x80
      000B48 12 07 20         [24]  816 	lcall	_Prints
                                    817 ;	src/usbcore.c:398: pSendData = (uint8 *)ProductStringDescriptor;
      000B4B 75 3D 85         [24]  818 	mov	_pSendData,#_ProductStringDescriptor
      000B4E 75 3E 10         [24]  819 	mov	(_pSendData + 1),#(_ProductStringDescriptor >> 8)
      000B51 75 3F 80         [24]  820 	mov	(_pSendData + 2),#0x80
                                    821 ;	src/usbcore.c:399: SendLength = ProductStringDescriptor[0];
      000B54 90 10 85         [24]  822 	mov	dptr,#_ProductStringDescriptor
      000B57 E4               [12]  823 	clr	a
      000B58 93               [24]  824 	movc	a,@a+dptr
      000B59 FF               [12]  825 	mov	r7,a
      000B5A 8F 40            [24]  826 	mov	_SendLength,r7
      000B5C 75 41 00         [24]  827 	mov	(_SendLength + 1),#0x00
                                    828 ;	src/usbcore.c:400: break;
                                    829 ;	src/usbcore.c:401: case 3:         /* Vendor string id is 1  */
      000B5F 80 30            [24]  830 	sjmp	00122$
      000B61                        831 00120$:
                                    832 ;	src/usbcore.c:403: Prints("serial string\n");
      000B61 90 11 F5         [24]  833 	mov	dptr,#___str_14
      000B64 75 F0 80         [24]  834 	mov	b,#0x80
      000B67 12 07 20         [24]  835 	lcall	_Prints
                                    836 ;	src/usbcore.c:405: pSendData = (uint8 *)SerialNumberStringDescriptor;
      000B6A 75 3D 9F         [24]  837 	mov	_pSendData,#_SerialNumberStringDescriptor
      000B6D 75 3E 10         [24]  838 	mov	(_pSendData + 1),#(_SerialNumberStringDescriptor >> 8)
      000B70 75 3F 80         [24]  839 	mov	(_pSendData + 2),#0x80
                                    840 ;	src/usbcore.c:406: SendLength = SerialNumberStringDescriptor[0];
      000B73 90 10 9F         [24]  841 	mov	dptr,#_SerialNumberStringDescriptor
      000B76 E4               [12]  842 	clr	a
      000B77 93               [24]  843 	movc	a,@a+dptr
      000B78 FF               [12]  844 	mov	r7,a
      000B79 8F 40            [24]  845 	mov	_SendLength,r7
      000B7B 75 41 00         [24]  846 	mov	(_SendLength + 1),#0x00
                                    847 ;	src/usbcore.c:407: break;
                                    848 ;	src/usbcore.c:408: default:         /* Vendor string id is 1  */
      000B7E 80 11            [24]  849 	sjmp	00122$
      000B80                        850 00121$:
                                    851 ;	src/usbcore.c:410: Prints("unknown string\n");
      000B80 90 12 04         [24]  852 	mov	dptr,#___str_15
      000B83 75 F0 80         [24]  853 	mov	b,#0x80
      000B86 12 07 20         [24]  854 	lcall	_Prints
                                    855 ;	src/usbcore.c:412: SendLength = 0;
      000B89 E4               [12]  856 	clr	a
      000B8A F5 40            [12]  857 	mov	_SendLength,a
      000B8C F5 41            [12]  858 	mov	(_SendLength + 1),a
                                    859 ;	src/usbcore.c:413: NeedZeroPacket = 1;
      000B8E 75 42 01         [24]  860 	mov	_NeedZeroPacket,#0x01
                                    861 ;	src/usbcore.c:415: }
      000B91                        862 00122$:
                                    863 ;	src/usbcore.c:416: if ((wLength > SendLength) &&
      000B91 C3               [12]  864 	clr	c
      000B92 E5 40            [12]  865 	mov	a,_SendLength
      000B94 95 3B            [12]  866 	subb	a,_wLength
      000B96 E5 41            [12]  867 	mov	a,(_SendLength + 1)
      000B98 95 3C            [12]  868 	subb	a,(_wLength + 1)
      000B9A 50 22            [24]  869 	jnc	00124$
                                    870 ;	src/usbcore.c:417: (SendLength % DeviceDescriptor[7] == 0))
      000B9C 90 0F F6         [24]  871 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000B9F E4               [12]  872 	clr	a
      000BA0 93               [24]  873 	movc	a,@a+dptr
      000BA1 FF               [12]  874 	mov	r7,a
      000BA2 8F 17            [24]  875 	mov	__moduint_PARM_2,r7
      000BA4 75 18 00         [24]  876 	mov	(__moduint_PARM_2 + 1),#0x00
      000BA7 85 40 82         [24]  877 	mov	dpl,_SendLength
      000BAA 85 41 83         [24]  878 	mov	dph,(_SendLength + 1)
      000BAD 12 0E B8         [24]  879 	lcall	__moduint
      000BB0 E5 82            [12]  880 	mov	a,dpl
      000BB2 85 83 F0         [24]  881 	mov	b,dph
      000BB5 45 F0            [12]  882 	orl	a,b
      000BB7 70 05            [24]  883 	jnz	00124$
                                    884 ;	src/usbcore.c:418: NeedZeroPacket = 1;
      000BB9 75 42 01         [24]  885 	mov	_NeedZeroPacket,#0x01
      000BBC 80 06            [24]  886 	sjmp	00125$
      000BBE                        887 00124$:
                                    888 ;	src/usbcore.c:420: SendLength = wLength;
      000BBE 85 3B 40         [24]  889 	mov	_SendLength,_wLength
      000BC1 85 3C 41         [24]  890 	mov	(_SendLength + 1),(_wLength + 1)
      000BC4                        891 00125$:
                                    892 ;	src/usbcore.c:421: usb_bus_ep0_send_data(); 
                                    893 ;	src/usbcore.c:422: break;
      000BC4 02 0D D6         [24]  894 	ljmp	_usb_bus_ep0_send_data
                                    895 ;	src/usbcore.c:423: case REPORT_DESCRIPTOR:
      000BC7                        896 00127$:
                                    897 ;	src/usbcore.c:425: Prints("Report descriptor: ");
      000BC7 90 12 14         [24]  898 	mov	dptr,#___str_16
      000BCA 75 F0 80         [24]  899 	mov	b,#0x80
      000BCD 12 07 20         [24]  900 	lcall	_Prints
                                    901 ;	src/usbcore.c:427: pSendData = (uint8 *)ReportDescriptor;
      000BD0 75 3D B5         [24]  902 	mov	_pSendData,#_ReportDescriptor
      000BD3 75 3E 10         [24]  903 	mov	(_pSendData + 1),#(_ReportDescriptor >> 8)
      000BD6 75 3F 80         [24]  904 	mov	(_pSendData + 2),#0x80
                                    905 ;	src/usbcore.c:428: SendLength = sizeof(ReportDescriptor);
      000BD9 75 40 34         [24]  906 	mov	_SendLength,#0x34
      000BDC 75 41 00         [24]  907 	mov	(_SendLength + 1),#0x00
                                    908 ;	src/usbcore.c:429: if ((wLength > SendLength) && (SendLength % DeviceDescriptor[7] == 0))
      000BDF C3               [12]  909 	clr	c
      000BE0 74 34            [12]  910 	mov	a,#0x34
      000BE2 95 3B            [12]  911 	subb	a,_wLength
      000BE4 E4               [12]  912 	clr	a
      000BE5 95 3C            [12]  913 	subb	a,(_wLength + 1)
      000BE7 50 1F            [24]  914 	jnc	00129$
      000BE9 90 0F F6         [24]  915 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000BEC E4               [12]  916 	clr	a
      000BED 93               [24]  917 	movc	a,@a+dptr
      000BEE FF               [12]  918 	mov	r7,a
      000BEF 8F 17            [24]  919 	mov	__moduint_PARM_2,r7
      000BF1 75 18 00         [24]  920 	mov	(__moduint_PARM_2 + 1),#0x00
      000BF4 90 00 34         [24]  921 	mov	dptr,#0x0034
      000BF7 12 0E B8         [24]  922 	lcall	__moduint
      000BFA E5 82            [12]  923 	mov	a,dpl
      000BFC 85 83 F0         [24]  924 	mov	b,dph
      000BFF 45 F0            [12]  925 	orl	a,b
      000C01 70 05            [24]  926 	jnz	00129$
                                    927 ;	src/usbcore.c:430: NeedZeroPacket = 1;
      000C03 75 42 01         [24]  928 	mov	_NeedZeroPacket,#0x01
      000C06 80 03            [24]  929 	sjmp	00130$
      000C08                        930 00129$:
                                    931 ;	src/usbcore.c:432: NeedZeroPacket = 0;
      000C08 75 42 00         [24]  932 	mov	_NeedZeroPacket,#0x00
      000C0B                        933 00130$:
                                    934 ;	src/usbcore.c:433: usb_bus_ep0_send_data();
                                    935 ;	src/usbcore.c:434: break;
      000C0B 02 0D D6         [24]  936 	ljmp	_usb_bus_ep0_send_data
                                    937 ;	src/usbcore.c:435: default:
      000C0E                        938 00132$:
                                    939 ;	src/usbcore.c:437: Prints("other descriptor: ");
      000C0E 90 12 28         [24]  940 	mov	dptr,#___str_17
      000C11 75 F0 80         [24]  941 	mov	b,#0x80
      000C14 12 07 20         [24]  942 	lcall	_Prints
                                    943 ;	src/usbcore.c:439: print_hex((wValue >> 8) & 0xFF);
      000C17 85 38 82         [24]  944 	mov	dpl,(_wValue + 1)
      000C1A 12 08 15         [24]  945 	lcall	_print_hex
                                    946 ;	src/usbcore.c:440: Prints("\n");
      000C1D 90 12 3B         [24]  947 	mov	dptr,#___str_18
      000C20 75 F0 80         [24]  948 	mov	b,#0x80
                                    949 ;	src/usbcore.c:443: break;
      000C23 02 07 20         [24]  950 	ljmp	_Prints
                                    951 ;	src/usbcore.c:444: case GET_INTERFACE:
      000C26                        952 00134$:
                                    953 ;	src/usbcore.c:446: Prints("Get interface\n");
      000C26 90 12 3D         [24]  954 	mov	dptr,#___str_19
      000C29 75 F0 80         [24]  955 	mov	b,#0x80
                                    956 ;	src/usbcore.c:448: break;
      000C2C 02 07 20         [24]  957 	ljmp	_Prints
                                    958 ;	src/usbcore.c:449: case GET_STATUS:
      000C2F                        959 00135$:
                                    960 ;	src/usbcore.c:451: Prints("Get status\n");
      000C2F 90 12 4C         [24]  961 	mov	dptr,#___str_20
      000C32 75 F0 80         [24]  962 	mov	b,#0x80
                                    963 ;	src/usbcore.c:453: break;
      000C35 02 07 20         [24]  964 	ljmp	_Prints
                                    965 ;	src/usbcore.c:454: case SYNCH_FRAME:
      000C38                        966 00136$:
                                    967 ;	src/usbcore.c:456: Prints("Synch frame\n");
      000C38 90 12 58         [24]  968 	mov	dptr,#___str_21
      000C3B 75 F0 80         [24]  969 	mov	b,#0x80
                                    970 ;	src/usbcore.c:458: break;
      000C3E 02 07 20         [24]  971 	ljmp	_Prints
                                    972 ;	src/usbcore.c:459: default:
      000C41                        973 00137$:
                                    974 ;	src/usbcore.c:461: Prints("Error: undefined stander request\n");
      000C41 90 12 65         [24]  975 	mov	dptr,#___str_22
      000C44 75 F0 80         [24]  976 	mov	b,#0x80
                                    977 ;	src/usbcore.c:465: break;
      000C47 02 07 20         [24]  978 	ljmp	_Prints
                                    979 ;	src/usbcore.c:466: case 1:                            /* class request */
      000C4A                        980 00139$:
                                    981 ;	src/usbcore.c:468: Prints("USB class input request:\n");
      000C4A 90 12 87         [24]  982 	mov	dptr,#___str_23
      000C4D 75 F0 80         [24]  983 	mov	b,#0x80
                                    984 ;	src/usbcore.c:470: break;
      000C50 02 07 20         [24]  985 	ljmp	_Prints
                                    986 ;	src/usbcore.c:471: case 2:
      000C53                        987 00140$:
                                    988 ;	src/usbcore.c:473: Prints("USB vendor input request:\n");
      000C53 90 12 A1         [24]  989 	mov	dptr,#___str_24
      000C56 75 F0 80         [24]  990 	mov	b,#0x80
                                    991 ;	src/usbcore.c:475: break;
      000C59 02 07 20         [24]  992 	ljmp	_Prints
                                    993 ;	src/usbcore.c:476: default:
      000C5C                        994 00141$:
                                    995 ;	src/usbcore.c:478: Prints("Error: undefined input request:\n");
      000C5C 90 12 BC         [24]  996 	mov	dptr,#___str_25
      000C5F 75 F0 80         [24]  997 	mov	b,#0x80
                                    998 ;	src/usbcore.c:481: }
      000C62 02 07 20         [24]  999 	ljmp	_Prints
      000C65                       1000 00160$:
                                   1001 ;	src/usbcore.c:485: switch ((bmRequestType >> 5) & 0x3) {
      000C65 E5 35            [12] 1002 	mov	a,_bmRequestType
      000C67 C4               [12] 1003 	swap	a
      000C68 03               [12] 1004 	rr	a
      000C69 54 07            [12] 1005 	anl	a,#0x07
      000C6B FF               [12] 1006 	mov	r7,a
      000C6C 53 07 03         [24] 1007 	anl	ar7,#0x03
      000C6F 7E 00            [12] 1008 	mov	r6,#0x00
      000C71 BF 00 05         [24] 1009 	cjne	r7,#0x00,00324$
      000C74 BE 00 02         [24] 1010 	cjne	r6,#0x00,00324$
      000C77 80 15            [24] 1011 	sjmp	00143$
      000C79                       1012 00324$:
      000C79 BF 01 06         [24] 1013 	cjne	r7,#0x01,00325$
      000C7C BE 00 03         [24] 1014 	cjne	r6,#0x00,00325$
      000C7F 02 0D 34         [24] 1015 	ljmp	00152$
      000C82                       1016 00325$:
      000C82 BF 02 06         [24] 1017 	cjne	r7,#0x02,00326$
      000C85 BE 00 03         [24] 1018 	cjne	r6,#0x00,00326$
      000C88 02 0D 60         [24] 1019 	ljmp	00156$
      000C8B                       1020 00326$:
      000C8B 02 0D 69         [24] 1021 	ljmp	00157$
                                   1022 ;	src/usbcore.c:486: case 0:
      000C8E                       1023 00143$:
                                   1024 ;	src/usbcore.c:488: Prints("USB stander output request: ");
      000C8E 90 12 DD         [24] 1025 	mov	dptr,#___str_26
      000C91 75 F0 80         [24] 1026 	mov	b,#0x80
      000C94 12 07 20         [24] 1027 	lcall	_Prints
                                   1028 ;	src/usbcore.c:490: switch (bRequest) {
      000C97 74 01            [12] 1029 	mov	a,#0x01
      000C99 B5 36 02         [24] 1030 	cjne	a,_bRequest,00327$
      000C9C 80 23            [24] 1031 	sjmp	00144$
      000C9E                       1032 00327$:
      000C9E 74 03            [12] 1033 	mov	a,#0x03
      000CA0 B5 36 02         [24] 1034 	cjne	a,_bRequest,00328$
      000CA3 80 74            [24] 1035 	sjmp	00148$
      000CA5                       1036 00328$:
      000CA5 74 05            [12] 1037 	mov	a,#0x05
      000CA7 B5 36 02         [24] 1038 	cjne	a,_bRequest,00329$
      000CAA 80 1E            [24] 1039 	sjmp	00145$
      000CAC                       1040 00329$:
      000CAC 74 07            [12] 1041 	mov	a,#0x07
      000CAE B5 36 02         [24] 1042 	cjne	a,_bRequest,00330$
      000CB1 80 5D            [24] 1043 	sjmp	00147$
      000CB3                       1044 00330$:
      000CB3 74 09            [12] 1045 	mov	a,#0x09
      000CB5 B5 36 02         [24] 1046 	cjne	a,_bRequest,00331$
      000CB8 80 39            [24] 1047 	sjmp	00146$
      000CBA                       1048 00331$:
      000CBA 74 0B            [12] 1049 	mov	a,#0x0b
                                   1050 ;	src/usbcore.c:491: case CLEAR_FEATURE:
      000CBC B5 36 6C         [24] 1051 	cjne	a,_bRequest,00150$
      000CBF 80 61            [24] 1052 	sjmp	00149$
      000CC1                       1053 00144$:
                                   1054 ;	src/usbcore.c:493: Prints("clear feature\n");                   
      000CC1 90 12 FA         [24] 1055 	mov	dptr,#___str_27
      000CC4 75 F0 80         [24] 1056 	mov	b,#0x80
                                   1057 ;	src/usbcore.c:495: break;
      000CC7 02 07 20         [24] 1058 	ljmp	_Prints
                                   1059 ;	src/usbcore.c:496: case SET_ADDRESS:
      000CCA                       1060 00145$:
                                   1061 ;	src/usbcore.c:498: Prints("set address, the address is: ");
      000CCA 90 13 09         [24] 1062 	mov	dptr,#___str_28
      000CCD 75 F0 80         [24] 1063 	mov	b,#0x80
      000CD0 12 07 20         [24] 1064 	lcall	_Prints
                                   1065 ;	src/usbcore.c:499: print_hex(wValue & 0xFF);
      000CD3 85 37 82         [24] 1066 	mov	dpl,_wValue
      000CD6 12 08 15         [24] 1067 	lcall	_print_hex
                                   1068 ;	src/usbcore.c:500: Prints("\n");                
      000CD9 90 12 3B         [24] 1069 	mov	dptr,#___str_18
      000CDC 75 F0 80         [24] 1070 	mov	b,#0x80
      000CDF 12 07 20         [24] 1071 	lcall	_Prints
                                   1072 ;	src/usbcore.c:502: D12_set_address(wValue & 0xFF);
      000CE2 85 37 82         [24] 1073 	mov	dpl,_wValue
      000CE5 12 06 B4         [24] 1074 	lcall	_D12_set_address
                                   1075 ;	src/usbcore.c:503: SendLength = 0;
      000CE8 E4               [12] 1076 	clr	a
      000CE9 F5 40            [12] 1077 	mov	_SendLength,a
      000CEB F5 41            [12] 1078 	mov	(_SendLength + 1),a
                                   1079 ;	src/usbcore.c:504: NeedZeroPacket = 1;
      000CED 75 42 01         [24] 1080 	mov	_NeedZeroPacket,#0x01
                                   1081 ;	src/usbcore.c:505: usb_bus_ep0_send_data();
                                   1082 ;	src/usbcore.c:506: break;
      000CF0 02 0D D6         [24] 1083 	ljmp	_usb_bus_ep0_send_data
                                   1084 ;	src/usbcore.c:507: case SET_CONFIGURATION:
      000CF3                       1085 00146$:
                                   1086 ;	src/usbcore.c:509: Prints("set configuration\n");                   
      000CF3 90 13 27         [24] 1087 	mov	dptr,#___str_29
      000CF6 75 F0 80         [24] 1088 	mov	b,#0x80
      000CF9 12 07 20         [24] 1089 	lcall	_Prints
                                   1090 ;	src/usbcore.c:511: ConfigValue = wValue & 0xFF;
      000CFC AF 37            [24] 1091 	mov	r7,_wValue
      000CFE 8F 44            [24] 1092 	mov	_ConfigValue,r7
                                   1093 ;	src/usbcore.c:512: D12_set_endpoint_enable(wValue & 0xFF);
      000D00 8F 82            [24] 1094 	mov	dpl,r7
      000D02 12 06 C8         [24] 1095 	lcall	_D12_set_endpoint_enable
                                   1096 ;	src/usbcore.c:514: SendLength = 0;
      000D05 E4               [12] 1097 	clr	a
      000D06 F5 40            [12] 1098 	mov	_SendLength,a
      000D08 F5 41            [12] 1099 	mov	(_SendLength + 1),a
                                   1100 ;	src/usbcore.c:515: NeedZeroPacket = 1;
      000D0A 75 42 01         [24] 1101 	mov	_NeedZeroPacket,#0x01
                                   1102 ;	src/usbcore.c:516: usb_bus_ep0_send_data();
                                   1103 ;	src/usbcore.c:517: break;
      000D0D 02 0D D6         [24] 1104 	ljmp	_usb_bus_ep0_send_data
                                   1105 ;	src/usbcore.c:518: case SET_DESCRIPTOR:
      000D10                       1106 00147$:
                                   1107 ;	src/usbcore.c:520: Prints("set descriptor\n");                   
      000D10 90 13 3A         [24] 1108 	mov	dptr,#___str_30
      000D13 75 F0 80         [24] 1109 	mov	b,#0x80
                                   1110 ;	src/usbcore.c:522: break;
      000D16 02 07 20         [24] 1111 	ljmp	_Prints
                                   1112 ;	src/usbcore.c:523: case SET_FEATURE:
      000D19                       1113 00148$:
                                   1114 ;	src/usbcore.c:525: Prints("set feature\n");                   
      000D19 90 13 4A         [24] 1115 	mov	dptr,#___str_31
      000D1C 75 F0 80         [24] 1116 	mov	b,#0x80
                                   1117 ;	src/usbcore.c:527: break;
      000D1F 02 07 20         [24] 1118 	ljmp	_Prints
                                   1119 ;	src/usbcore.c:528: case SET_INTERFACE:
      000D22                       1120 00149$:
                                   1121 ;	src/usbcore.c:530: Prints("set interface\n");                   
      000D22 90 13 57         [24] 1122 	mov	dptr,#___str_32
      000D25 75 F0 80         [24] 1123 	mov	b,#0x80
                                   1124 ;	src/usbcore.c:532: break;
      000D28 02 07 20         [24] 1125 	ljmp	_Prints
                                   1126 ;	src/usbcore.c:533: default:
      000D2B                       1127 00150$:
                                   1128 ;	src/usbcore.c:535: Prints("Error: undefined stander request\n");                   
      000D2B 90 12 65         [24] 1129 	mov	dptr,#___str_22
      000D2E 75 F0 80         [24] 1130 	mov	b,#0x80
                                   1131 ;	src/usbcore.c:539: break;
      000D31 02 07 20         [24] 1132 	ljmp	_Prints
                                   1133 ;	src/usbcore.c:540: case 1:
      000D34                       1134 00152$:
                                   1135 ;	src/usbcore.c:542: Prints("USB class output request:\n");                   
      000D34 90 13 66         [24] 1136 	mov	dptr,#___str_33
      000D37 75 F0 80         [24] 1137 	mov	b,#0x80
      000D3A 12 07 20         [24] 1138 	lcall	_Prints
                                   1139 ;	src/usbcore.c:544: switch (bRequest) {
      000D3D 74 0A            [12] 1140 	mov	a,#0x0a
      000D3F B5 36 15         [24] 1141 	cjne	a,_bRequest,00154$
                                   1142 ;	src/usbcore.c:547: Prints("set idle\n");
      000D42 90 13 81         [24] 1143 	mov	dptr,#___str_34
      000D45 75 F0 80         [24] 1144 	mov	b,#0x80
      000D48 12 07 20         [24] 1145 	lcall	_Prints
                                   1146 ;	src/usbcore.c:549: SendLength = 1;
      000D4B 75 40 01         [24] 1147 	mov	_SendLength,#0x01
      000D4E 75 41 00         [24] 1148 	mov	(_SendLength + 1),#0x00
                                   1149 ;	src/usbcore.c:550: NeedZeroPacket = 1;
      000D51 75 42 01         [24] 1150 	mov	_NeedZeroPacket,#0x01
                                   1151 ;	src/usbcore.c:552: usb_bus_ep0_send_data();
                                   1152 ;	src/usbcore.c:553: break;
                                   1153 ;	src/usbcore.c:554: default:
      000D54 02 0D D6         [24] 1154 	ljmp	_usb_bus_ep0_send_data
      000D57                       1155 00154$:
                                   1156 ;	src/usbcore.c:556: Prints("unknown request\n");                   
      000D57 90 13 8B         [24] 1157 	mov	dptr,#___str_35
      000D5A 75 F0 80         [24] 1158 	mov	b,#0x80
                                   1159 ;	src/usbcore.c:560: break;
                                   1160 ;	src/usbcore.c:561: case 2:
      000D5D 02 07 20         [24] 1161 	ljmp	_Prints
      000D60                       1162 00156$:
                                   1163 ;	src/usbcore.c:563: Prints("USB vendor output request:\n");                   
      000D60 90 13 9C         [24] 1164 	mov	dptr,#___str_36
      000D63 75 F0 80         [24] 1165 	mov	b,#0x80
                                   1166 ;	src/usbcore.c:565: break;
                                   1167 ;	src/usbcore.c:566: default:
      000D66 02 07 20         [24] 1168 	ljmp	_Prints
      000D69                       1169 00157$:
                                   1170 ;	src/usbcore.c:568: Prints("Error: undefined output request.\n");                   
      000D69 90 13 B8         [24] 1171 	mov	dptr,#___str_37
      000D6C 75 F0 80         [24] 1172 	mov	b,#0x80
                                   1173 ;	src/usbcore.c:571: }
      000D6F 02 07 20         [24] 1174 	ljmp	_Prints
      000D72                       1175 00163$:
                                   1176 ;	src/usbcore.c:574: D12_read_endpoint_buffer(0, 16, buffer);
      000D72 75 10 45         [24] 1177 	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep0_out_buffer_65536_55
      000D75 75 11 00         [24] 1178 	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
      000D78 75 12 40         [24] 1179 	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
      000D7B 75 0F 10         [24] 1180 	mov	_D12_read_endpoint_buffer_PARM_2,#0x10
      000D7E 75 82 00         [24] 1181 	mov	dpl,#0x00
      000D81 12 04 DD         [24] 1182 	lcall	_D12_read_endpoint_buffer
                                   1183 ;	src/usbcore.c:575: D12_clear_buffer();
      000D84 12 05 C4         [24] 1184 	lcall	_D12_clear_buffer
                                   1185 ;	src/usbcore.c:576: dump_hex(buffer, 8);
      000D87 75 33 08         [24] 1186 	mov	_dump_hex_PARM_2,#0x08
      000D8A 75 34 00         [24] 1187 	mov	(_dump_hex_PARM_2 + 1),#0x00
      000D8D 90 00 45         [24] 1188 	mov	dptr,#_usb_bus_isr_ep0_out_buffer_65536_55
      000D90 75 F0 40         [24] 1189 	mov	b,#0x40
                                   1190 ;	src/usbcore.c:578: }
      000D93 02 08 54         [24] 1191 	ljmp	_dump_hex
                                   1192 ;------------------------------------------------------------
                                   1193 ;Allocation info for local variables in function 'usb_bus_isr_ep0_in'
                                   1194 ;------------------------------------------------------------
                                   1195 ;	src/usbcore.c:580: void usb_bus_isr_ep0_in()
                                   1196 ;	-----------------------------------------
                                   1197 ;	 function usb_bus_isr_ep0_in
                                   1198 ;	-----------------------------------------
      000D96                       1199 _usb_bus_isr_ep0_in:
                                   1200 ;	src/usbcore.c:583: Prints("usb isr ep0 in\n");
      000D96 90 13 DA         [24] 1201 	mov	dptr,#___str_38
      000D99 75 F0 80         [24] 1202 	mov	b,#0x80
      000D9C 12 07 20         [24] 1203 	lcall	_Prints
                                   1204 ;	src/usbcore.c:585: D12_read_endpoint_last_status(1);
      000D9F 75 82 01         [24] 1205 	mov	dpl,#0x01
      000DA2 12 04 CD         [24] 1206 	lcall	_D12_read_endpoint_last_status
                                   1207 ;	src/usbcore.c:586: usb_bus_ep0_send_data();
                                   1208 ;	src/usbcore.c:587: }
      000DA5 02 0D D6         [24] 1209 	ljmp	_usb_bus_ep0_send_data
                                   1210 ;------------------------------------------------------------
                                   1211 ;Allocation info for local variables in function 'usb_bus_isr_ep1_out'
                                   1212 ;------------------------------------------------------------
                                   1213 ;	src/usbcore.c:589: void usb_bus_isr_ep1_out()
                                   1214 ;	-----------------------------------------
                                   1215 ;	 function usb_bus_isr_ep1_out
                                   1216 ;	-----------------------------------------
      000DA8                       1217 _usb_bus_isr_ep1_out:
                                   1218 ;	src/usbcore.c:592: Prints("usb core ep1 out\n");
      000DA8 90 13 EA         [24] 1219 	mov	dptr,#___str_39
      000DAB 75 F0 80         [24] 1220 	mov	b,#0x80
                                   1221 ;	src/usbcore.c:594: }
      000DAE 02 07 20         [24] 1222 	ljmp	_Prints
                                   1223 ;------------------------------------------------------------
                                   1224 ;Allocation info for local variables in function 'usb_bus_isr_ep1_in'
                                   1225 ;------------------------------------------------------------
                                   1226 ;	src/usbcore.c:596: void usb_bus_isr_ep1_in()
                                   1227 ;	-----------------------------------------
                                   1228 ;	 function usb_bus_isr_ep1_in
                                   1229 ;	-----------------------------------------
      000DB1                       1230 _usb_bus_isr_ep1_in:
                                   1231 ;	src/usbcore.c:599: Prints("usb core ep1 in\n");
      000DB1 90 13 FC         [24] 1232 	mov	dptr,#___str_40
      000DB4 75 F0 80         [24] 1233 	mov	b,#0x80
      000DB7 12 07 20         [24] 1234 	lcall	_Prints
                                   1235 ;	src/usbcore.c:601: D12_read_endpoint_last_status(3);
      000DBA 75 82 03         [24] 1236 	mov	dpl,#0x03
      000DBD 12 04 CD         [24] 1237 	lcall	_D12_read_endpoint_last_status
                                   1238 ;	src/usbcore.c:602: Ep1InIsBusy = 0;
      000DC0 75 43 00         [24] 1239 	mov	_Ep1InIsBusy,#0x00
                                   1240 ;	src/usbcore.c:603: }
      000DC3 22               [24] 1241 	ret
                                   1242 ;------------------------------------------------------------
                                   1243 ;Allocation info for local variables in function 'usb_bus_isr_ep2_out'
                                   1244 ;------------------------------------------------------------
                                   1245 ;	src/usbcore.c:605: void usb_bus_isr_ep2_out()
                                   1246 ;	-----------------------------------------
                                   1247 ;	 function usb_bus_isr_ep2_out
                                   1248 ;	-----------------------------------------
      000DC4                       1249 _usb_bus_isr_ep2_out:
                                   1250 ;	src/usbcore.c:608: Prints("usb core ep2 out\n");
      000DC4 90 14 0D         [24] 1251 	mov	dptr,#___str_41
      000DC7 75 F0 80         [24] 1252 	mov	b,#0x80
                                   1253 ;	src/usbcore.c:610: }
      000DCA 02 07 20         [24] 1254 	ljmp	_Prints
                                   1255 ;------------------------------------------------------------
                                   1256 ;Allocation info for local variables in function 'usb_bus_isr_ep2_in'
                                   1257 ;------------------------------------------------------------
                                   1258 ;	src/usbcore.c:612: void usb_bus_isr_ep2_in()
                                   1259 ;	-----------------------------------------
                                   1260 ;	 function usb_bus_isr_ep2_in
                                   1261 ;	-----------------------------------------
      000DCD                       1262 _usb_bus_isr_ep2_in:
                                   1263 ;	src/usbcore.c:615: Prints("usb core ep2 in\n");
      000DCD 90 14 1F         [24] 1264 	mov	dptr,#___str_42
      000DD0 75 F0 80         [24] 1265 	mov	b,#0x80
                                   1266 ;	src/usbcore.c:617: }
      000DD3 02 07 20         [24] 1267 	ljmp	_Prints
                                   1268 ;------------------------------------------------------------
                                   1269 ;Allocation info for local variables in function 'usb_bus_ep0_send_data'
                                   1270 ;------------------------------------------------------------
                                   1271 ;	src/usbcore.c:619: void usb_bus_ep0_send_data(void)
                                   1272 ;	-----------------------------------------
                                   1273 ;	 function usb_bus_ep0_send_data
                                   1274 ;	-----------------------------------------
      000DD6                       1275 _usb_bus_ep0_send_data:
                                   1276 ;	src/usbcore.c:621: if (SendLength > DeviceDescriptor[7]) {
      000DD6 90 0F F6         [24] 1277 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000DD9 E4               [12] 1278 	clr	a
      000DDA 93               [24] 1279 	movc	a,@a+dptr
      000DDB FF               [12] 1280 	mov	r7,a
      000DDC FD               [12] 1281 	mov	r5,a
      000DDD 7E 00            [12] 1282 	mov	r6,#0x00
      000DDF C3               [12] 1283 	clr	c
      000DE0 ED               [12] 1284 	mov	a,r5
      000DE1 95 40            [12] 1285 	subb	a,_SendLength
      000DE3 EE               [12] 1286 	mov	a,r6
      000DE4 95 41            [12] 1287 	subb	a,(_SendLength + 1)
      000DE6 50 34            [24] 1288 	jnc	00107$
                                   1289 ;	src/usbcore.c:622: D12_write_endpoint_buffer(1, DeviceDescriptor[7], pSendData);
      000DE8 8F 13            [24] 1290 	mov	_D12_write_endpoint_buffer_PARM_2,r7
      000DEA 85 3D 14         [24] 1291 	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
      000DED 85 3E 15         [24] 1292 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
      000DF0 85 3F 16         [24] 1293 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
      000DF3 75 82 01         [24] 1294 	mov	dpl,#0x01
      000DF6 12 05 E8         [24] 1295 	lcall	_D12_write_endpoint_buffer
                                   1296 ;	src/usbcore.c:623: SendLength -= DeviceDescriptor[7];
      000DF9 90 0F F6         [24] 1297 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000DFC E4               [12] 1298 	clr	a
      000DFD 93               [24] 1299 	movc	a,@a+dptr
      000DFE FF               [12] 1300 	mov	r7,a
      000DFF FD               [12] 1301 	mov	r5,a
      000E00 7E 00            [12] 1302 	mov	r6,#0x00
      000E02 AB 40            [24] 1303 	mov	r3,_SendLength
      000E04 AC 41            [24] 1304 	mov	r4,(_SendLength + 1)
      000E06 EB               [12] 1305 	mov	a,r3
      000E07 C3               [12] 1306 	clr	c
      000E08 9D               [12] 1307 	subb	a,r5
      000E09 FB               [12] 1308 	mov	r3,a
      000E0A EC               [12] 1309 	mov	a,r4
      000E0B 9E               [12] 1310 	subb	a,r6
      000E0C FC               [12] 1311 	mov	r4,a
      000E0D 8B 40            [24] 1312 	mov	_SendLength,r3
      000E0F 8C 41            [24] 1313 	mov	(_SendLength + 1),r4
                                   1314 ;	src/usbcore.c:624: pSendData += DeviceDescriptor[7];
      000E11 EF               [12] 1315 	mov	a,r7
      000E12 25 3D            [12] 1316 	add	a,_pSendData
      000E14 F5 3D            [12] 1317 	mov	_pSendData,a
      000E16 E4               [12] 1318 	clr	a
      000E17 35 3E            [12] 1319 	addc	a,(_pSendData + 1)
      000E19 F5 3E            [12] 1320 	mov	(_pSendData + 1),a
      000E1B 22               [24] 1321 	ret
      000E1C                       1322 00107$:
                                   1323 ;	src/usbcore.c:626: if (SendLength != 0) {
      000E1C E5 40            [12] 1324 	mov	a,_SendLength
      000E1E 45 41            [12] 1325 	orl	a,(_SendLength + 1)
      000E20 60 18            [24] 1326 	jz	00104$
                                   1327 ;	src/usbcore.c:627: D12_write_endpoint_buffer(1, SendLength, pSendData);
      000E22 85 40 13         [24] 1328 	mov	_D12_write_endpoint_buffer_PARM_2,_SendLength
      000E25 85 3D 14         [24] 1329 	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
      000E28 85 3E 15         [24] 1330 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
      000E2B 85 3F 16         [24] 1331 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
      000E2E 75 82 01         [24] 1332 	mov	dpl,#0x01
      000E31 12 05 E8         [24] 1333 	lcall	_D12_write_endpoint_buffer
                                   1334 ;	src/usbcore.c:628: SendLength = 0;
      000E34 E4               [12] 1335 	clr	a
      000E35 F5 40            [12] 1336 	mov	_SendLength,a
      000E37 F5 41            [12] 1337 	mov	(_SendLength + 1),a
      000E39 22               [24] 1338 	ret
      000E3A                       1339 00104$:
                                   1340 ;	src/usbcore.c:630: if (NeedZeroPacket == 1) {
      000E3A 74 01            [12] 1341 	mov	a,#0x01
      000E3C B5 42 15         [24] 1342 	cjne	a,_NeedZeroPacket,00109$
                                   1343 ;	src/usbcore.c:631: D12_write_endpoint_buffer(1, 0, pSendData);
      000E3F 75 13 00         [24] 1344 	mov	_D12_write_endpoint_buffer_PARM_2,#0x00
      000E42 85 3D 14         [24] 1345 	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
      000E45 85 3E 15         [24] 1346 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
      000E48 85 3F 16         [24] 1347 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
      000E4B 75 82 01         [24] 1348 	mov	dpl,#0x01
      000E4E 12 05 E8         [24] 1349 	lcall	_D12_write_endpoint_buffer
                                   1350 ;	src/usbcore.c:632: NeedZeroPacket = 0;
      000E51 75 42 00         [24] 1351 	mov	_NeedZeroPacket,#0x00
      000E54                       1352 00109$:
                                   1353 ;	src/usbcore.c:636: }
      000E54 22               [24] 1354 	ret
                                   1355 	.area CSEG    (CODE)
                                   1356 	.area CONST   (CODE)
      000FEF                       1357 _DeviceDescriptor:
      000FEF 12                    1358 	.db #0x12	; 18
      000FF0 01                    1359 	.db #0x01	; 1
      000FF1 10                    1360 	.db #0x10	; 16
      000FF2 01                    1361 	.db #0x01	; 1
      000FF3 00                    1362 	.db #0x00	; 0
      000FF4 00                    1363 	.db #0x00	; 0
      000FF5 00                    1364 	.db #0x00	; 0
      000FF6 10                    1365 	.db #0x10	; 16
      000FF7 88                    1366 	.db #0x88	; 136
      000FF8 88                    1367 	.db #0x88	; 136
      000FF9 01                    1368 	.db #0x01	; 1
      000FFA 00                    1369 	.db #0x00	; 0
      000FFB 00                    1370 	.db #0x00	; 0
      000FFC 01                    1371 	.db #0x01	; 1
      000FFD 01                    1372 	.db #0x01	; 1
      000FFE 02                    1373 	.db #0x02	; 2
      000FFF 03                    1374 	.db #0x03	; 3
      001000 01                    1375 	.db #0x01	; 1
      001001                       1376 _ConfigurationDescriptor:
      001001 09                    1377 	.db #0x09	; 9
      001002 02                    1378 	.db #0x02	; 2
      001003 22                    1379 	.db #0x22	; 34
      001004 00                    1380 	.db #0x00	; 0
      001005 01                    1381 	.db #0x01	; 1
      001006 01                    1382 	.db #0x01	; 1
      001007 00                    1383 	.db #0x00	; 0
      001008 80                    1384 	.db #0x80	; 128
      001009 32                    1385 	.db #0x32	; 50	'2'
      00100A 09                    1386 	.db #0x09	; 9
      00100B 04                    1387 	.db #0x04	; 4
      00100C 00                    1388 	.db #0x00	; 0
      00100D 00                    1389 	.db #0x00	; 0
      00100E 01                    1390 	.db #0x01	; 1
      00100F 03                    1391 	.db #0x03	; 3
      001010 01                    1392 	.db #0x01	; 1
      001011 02                    1393 	.db #0x02	; 2
      001012 00                    1394 	.db #0x00	; 0
      001013 09                    1395 	.db #0x09	; 9
      001014 21                    1396 	.db #0x21	; 33
      001015 10                    1397 	.db #0x10	; 16
      001016 01                    1398 	.db #0x01	; 1
      001017 21                    1399 	.db #0x21	; 33
      001018 01                    1400 	.db #0x01	; 1
      001019 22                    1401 	.db #0x22	; 34
      00101A 34                    1402 	.db #0x34	; 52	'4'
      00101B 00                    1403 	.db #0x00	; 0
      00101C 07                    1404 	.db #0x07	; 7
      00101D 05                    1405 	.db #0x05	; 5
      00101E 81                    1406 	.db #0x81	; 129
      00101F 03                    1407 	.db #0x03	; 3
      001020 10                    1408 	.db #0x10	; 16
      001021 00                    1409 	.db #0x00	; 0
      001022 0A                    1410 	.db #0x0a	; 10
      001023                       1411 _languageId:
      001023 04                    1412 	.db #0x04	; 4
      001024 03                    1413 	.db #0x03	; 3
      001025 09                    1414 	.db #0x09	; 9
      001026 04                    1415 	.db #0x04	; 4
      001027                       1416 _ManufacturerStringDescriptor:
      001027 5E                    1417 	.db #0x5e	; 94
      001028 03                    1418 	.db #0x03	; 3
      001029 43                    1419 	.db #0x43	; 67	'C'
      00102A 00                    1420 	.db #0x00	; 0
      00102B 6F                    1421 	.db #0x6f	; 111	'o'
      00102C 00                    1422 	.db #0x00	; 0
      00102D 6E                    1423 	.db #0x6e	; 110	'n'
      00102E 00                    1424 	.db #0x00	; 0
      00102F 74                    1425 	.db #0x74	; 116	't'
      001030 00                    1426 	.db #0x00	; 0
      001031 61                    1427 	.db #0x61	; 97	'a'
      001032 00                    1428 	.db #0x00	; 0
      001033 63                    1429 	.db #0x63	; 99	'c'
      001034 00                    1430 	.db #0x00	; 0
      001035 74                    1431 	.db #0x74	; 116	't'
      001036 00                    1432 	.db #0x00	; 0
      001037 20                    1433 	.db #0x20	; 32
      001038 00                    1434 	.db #0x00	; 0
      001039 61                    1435 	.db #0x61	; 97	'a'
      00103A 00                    1436 	.db #0x00	; 0
      00103B 75                    1437 	.db #0x75	; 117	'u'
      00103C 00                    1438 	.db #0x00	; 0
      00103D 74                    1439 	.db #0x74	; 116	't'
      00103E 00                    1440 	.db #0x00	; 0
      00103F 68                    1441 	.db #0x68	; 104	'h'
      001040 00                    1442 	.db #0x00	; 0
      001041 6F                    1443 	.db #0x6f	; 111	'o'
      001042 00                    1444 	.db #0x00	; 0
      001043 72                    1445 	.db #0x72	; 114	'r'
      001044 00                    1446 	.db #0x00	; 0
      001045 20                    1447 	.db #0x20	; 32
      001046 00                    1448 	.db #0x00	; 0
      001047 48                    1449 	.db #0x48	; 72	'H'
      001048 00                    1450 	.db #0x00	; 0
      001049 65                    1451 	.db #0x65	; 101	'e'
      00104A 00                    1452 	.db #0x00	; 0
      00104B 6E                    1453 	.db #0x6e	; 110	'n'
      00104C 00                    1454 	.db #0x00	; 0
      00104D 67                    1455 	.db #0x67	; 103	'g'
      00104E 00                    1456 	.db #0x00	; 0
      00104F 20                    1457 	.db #0x20	; 32
      001050 00                    1458 	.db #0x00	; 0
      001051 56                    1459 	.db #0x56	; 86	'V'
      001052 00                    1460 	.db #0x00	; 0
      001053 69                    1461 	.db #0x69	; 105	'i'
      001054 00                    1462 	.db #0x00	; 0
      001055 61                    1463 	.db #0x61	; 97	'a'
      001056 00                    1464 	.db #0x00	; 0
      001057 20                    1465 	.db #0x20	; 32
      001058 00                    1466 	.db #0x00	; 0
      001059 65                    1467 	.db #0x65	; 101	'e'
      00105A 00                    1468 	.db #0x00	; 0
      00105B 6D                    1469 	.db #0x6d	; 109	'm'
      00105C 00                    1470 	.db #0x00	; 0
      00105D 61                    1471 	.db #0x61	; 97	'a'
      00105E 00                    1472 	.db #0x00	; 0
      00105F 69                    1473 	.db #0x69	; 105	'i'
      001060 00                    1474 	.db #0x00	; 0
      001061 6C                    1475 	.db #0x6c	; 108	'l'
      001062 00                    1476 	.db #0x00	; 0
      001063 20                    1477 	.db #0x20	; 32
      001064 00                    1478 	.db #0x00	; 0
      001065 37                    1479 	.db #0x37	; 55	'7'
      001066 00                    1480 	.db #0x00	; 0
      001067 37                    1481 	.db #0x37	; 55	'7'
      001068 00                    1482 	.db #0x00	; 0
      001069 30                    1483 	.db #0x30	; 48	'0'
      00106A 00                    1484 	.db #0x00	; 0
      00106B 31                    1485 	.db #0x31	; 49	'1'
      00106C 00                    1486 	.db #0x00	; 0
      00106D 37                    1487 	.db #0x37	; 55	'7'
      00106E 00                    1488 	.db #0x00	; 0
      00106F 35                    1489 	.db #0x35	; 53	'5'
      001070 00                    1490 	.db #0x00	; 0
      001071 31                    1491 	.db #0x31	; 49	'1'
      001072 00                    1492 	.db #0x00	; 0
      001073 37                    1493 	.db #0x37	; 55	'7'
      001074 00                    1494 	.db #0x00	; 0
      001075 37                    1495 	.db #0x37	; 55	'7'
      001076 00                    1496 	.db #0x00	; 0
      001077 40                    1497 	.db #0x40	; 64
      001078 00                    1498 	.db #0x00	; 0
      001079 71                    1499 	.db #0x71	; 113	'q'
      00107A 00                    1500 	.db #0x00	; 0
      00107B 71                    1501 	.db #0x71	; 113	'q'
      00107C 00                    1502 	.db #0x00	; 0
      00107D 2E                    1503 	.db #0x2e	; 46
      00107E 00                    1504 	.db #0x00	; 0
      00107F 63                    1505 	.db #0x63	; 99	'c'
      001080 00                    1506 	.db #0x00	; 0
      001081 6F                    1507 	.db #0x6f	; 111	'o'
      001082 00                    1508 	.db #0x00	; 0
      001083 6D                    1509 	.db #0x6d	; 109	'm'
      001084 00                    1510 	.db #0x00	; 0
      001085                       1511 _ProductStringDescriptor:
      001085 1A                    1512 	.db #0x1a	; 26
      001086 03                    1513 	.db #0x03	; 3
      001087 48                    1514 	.db #0x48	; 72	'H'
      001088 00                    1515 	.db #0x00	; 0
      001089 65                    1516 	.db #0x65	; 101	'e'
      00108A 00                    1517 	.db #0x00	; 0
      00108B 6E                    1518 	.db #0x6e	; 110	'n'
      00108C 00                    1519 	.db #0x00	; 0
      00108D 67                    1520 	.db #0x67	; 103	'g'
      00108E 00                    1521 	.db #0x00	; 0
      00108F 27                    1522 	.db #0x27	; 39
      001090 00                    1523 	.db #0x00	; 0
      001091 73                    1524 	.db #0x73	; 115	's'
      001092 00                    1525 	.db #0x00	; 0
      001093 20                    1526 	.db #0x20	; 32
      001094 00                    1527 	.db #0x00	; 0
      001095 4D                    1528 	.db #0x4d	; 77	'M'
      001096 00                    1529 	.db #0x00	; 0
      001097 6F                    1530 	.db #0x6f	; 111	'o'
      001098 00                    1531 	.db #0x00	; 0
      001099 75                    1532 	.db #0x75	; 117	'u'
      00109A 00                    1533 	.db #0x00	; 0
      00109B 73                    1534 	.db #0x73	; 115	's'
      00109C 00                    1535 	.db #0x00	; 0
      00109D 65                    1536 	.db #0x65	; 101	'e'
      00109E 00                    1537 	.db #0x00	; 0
      00109F                       1538 _SerialNumberStringDescriptor:
      00109F 16                    1539 	.db #0x16	; 22
      0010A0 03                    1540 	.db #0x03	; 3
      0010A1 32                    1541 	.db #0x32	; 50	'2'
      0010A2 00                    1542 	.db #0x00	; 0
      0010A3 30                    1543 	.db #0x30	; 48	'0'
      0010A4 00                    1544 	.db #0x00	; 0
      0010A5 32                    1545 	.db #0x32	; 50	'2'
      0010A6 00                    1546 	.db #0x00	; 0
      0010A7 33                    1547 	.db #0x33	; 51	'3'
      0010A8 00                    1548 	.db #0x00	; 0
      0010A9 2D                    1549 	.db #0x2d	; 45
      0010AA 00                    1550 	.db #0x00	; 0
      0010AB 30                    1551 	.db #0x30	; 48	'0'
      0010AC 00                    1552 	.db #0x00	; 0
      0010AD 37                    1553 	.db #0x37	; 55	'7'
      0010AE 00                    1554 	.db #0x00	; 0
      0010AF 2D                    1555 	.db #0x2d	; 45
      0010B0 00                    1556 	.db #0x00	; 0
      0010B1 31                    1557 	.db #0x31	; 49	'1'
      0010B2 00                    1558 	.db #0x00	; 0
      0010B3 38                    1559 	.db #0x38	; 56	'8'
      0010B4 00                    1560 	.db #0x00	; 0
      0010B5                       1561 _ReportDescriptor:
      0010B5 05                    1562 	.db #0x05	; 5
      0010B6 01                    1563 	.db #0x01	; 1
      0010B7 09                    1564 	.db #0x09	; 9
      0010B8 02                    1565 	.db #0x02	; 2
      0010B9 A1                    1566 	.db #0xa1	; 161
      0010BA 01                    1567 	.db #0x01	; 1
      0010BB 09                    1568 	.db #0x09	; 9
      0010BC 01                    1569 	.db #0x01	; 1
      0010BD A1                    1570 	.db #0xa1	; 161
      0010BE 00                    1571 	.db #0x00	; 0
      0010BF 05                    1572 	.db #0x05	; 5
      0010C0 09                    1573 	.db #0x09	; 9
      0010C1 19                    1574 	.db #0x19	; 25
      0010C2 01                    1575 	.db #0x01	; 1
      0010C3 29                    1576 	.db #0x29	; 41
      0010C4 03                    1577 	.db #0x03	; 3
      0010C5 15                    1578 	.db #0x15	; 21
      0010C6 00                    1579 	.db #0x00	; 0
      0010C7 25                    1580 	.db #0x25	; 37
      0010C8 01                    1581 	.db #0x01	; 1
      0010C9 95                    1582 	.db #0x95	; 149
      0010CA 03                    1583 	.db #0x03	; 3
      0010CB 75                    1584 	.db #0x75	; 117	'u'
      0010CC 01                    1585 	.db #0x01	; 1
      0010CD 81                    1586 	.db #0x81	; 129
      0010CE 02                    1587 	.db #0x02	; 2
      0010CF 95                    1588 	.db #0x95	; 149
      0010D0 01                    1589 	.db #0x01	; 1
      0010D1 75                    1590 	.db #0x75	; 117	'u'
      0010D2 05                    1591 	.db #0x05	; 5
      0010D3 81                    1592 	.db #0x81	; 129
      0010D4 03                    1593 	.db #0x03	; 3
      0010D5 05                    1594 	.db #0x05	; 5
      0010D6 01                    1595 	.db #0x01	; 1
      0010D7 09                    1596 	.db #0x09	; 9
      0010D8 30                    1597 	.db #0x30	; 48	'0'
      0010D9 09                    1598 	.db #0x09	; 9
      0010DA 31                    1599 	.db #0x31	; 49	'1'
      0010DB 09                    1600 	.db #0x09	; 9
      0010DC 38                    1601 	.db #0x38	; 56	'8'
      0010DD 15                    1602 	.db #0x15	; 21
      0010DE 81                    1603 	.db #0x81	; 129
      0010DF 25                    1604 	.db #0x25	; 37
      0010E0 7F                    1605 	.db #0x7f	; 127
      0010E1 75                    1606 	.db #0x75	; 117	'u'
      0010E2 08                    1607 	.db #0x08	; 8
      0010E3 95                    1608 	.db #0x95	; 149
      0010E4 03                    1609 	.db #0x03	; 3
      0010E5 81                    1610 	.db #0x81	; 129
      0010E6 06                    1611 	.db #0x06	; 6
      0010E7 C0                    1612 	.db #0xc0	; 192
      0010E8 C0                    1613 	.db #0xc0	; 192
                                   1614 	.area CONST   (CODE)
      0010E9                       1615 ___str_0:
      0010E9 75 73 62 20 64 69 73  1616 	.ascii "usb disconnect"
             63 6F 6E 6E 65 63 74
      0010F7 0A                    1617 	.db 0x0a
      0010F8 00                    1618 	.db 0x00
                                   1619 	.area CSEG    (CODE)
                                   1620 	.area CONST   (CODE)
      0010F9                       1621 ___str_1:
      0010F9 75 73 62 20 63 6F 6E  1622 	.ascii "usb connect"
             6E 65 63 74
      001104 0A                    1623 	.db 0x0a
      001105 00                    1624 	.db 0x00
                                   1625 	.area CSEG    (CODE)
                                   1626 	.area CONST   (CODE)
      001106                       1627 ___str_2:
      001106 75 73 62 20 63 6F 72  1628 	.ascii "usb core isr suspend"
             65 20 69 73 72 20 73
             75 73 70 65 6E 64
      00111A 0A                    1629 	.db 0x0a
      00111B 00                    1630 	.db 0x00
                                   1631 	.area CSEG    (CODE)
                                   1632 	.area CONST   (CODE)
      00111C                       1633 ___str_3:
      00111C 75 73 62 20 63 6F 72  1634 	.ascii "usb core isr reset"
             65 20 69 73 72 20 72
             65 73 65 74
      00112E 0A                    1635 	.db 0x0a
      00112F 00                    1636 	.db 0x00
                                   1637 	.area CSEG    (CODE)
                                   1638 	.area CONST   (CODE)
      001130                       1639 ___str_4:
      001130 75 73 62 20 69 73 72  1640 	.ascii "usb isr ep0 out"
             20 65 70 30 20 6F 75
             74
      00113F 0A                    1641 	.db 0x0a
      001140 00                    1642 	.db 0x00
                                   1643 	.area CSEG    (CODE)
                                   1644 	.area CONST   (CODE)
      001141                       1645 ___str_5:
      001141 55 53 42 20 73 74 61  1646 	.ascii "USB stand input request: "
             6E 64 20 69 6E 70 75
             74 20 72 65 71 75 65
             73 74 3A 20
      00115A 00                    1647 	.db 0x00
                                   1648 	.area CSEG    (CODE)
                                   1649 	.area CONST   (CODE)
      00115B                       1650 ___str_6:
      00115B 47 65 74 20 63 6F 6E  1651 	.ascii "Get configuration"
             66 69 67 75 72 61 74
             69 6F 6E
      00116C 0A                    1652 	.db 0x0a
      00116D 00                    1653 	.db 0x00
                                   1654 	.area CSEG    (CODE)
                                   1655 	.area CONST   (CODE)
      00116E                       1656 ___str_7:
      00116E 47 65 74 20 64 65 73  1657 	.ascii "Get descriptor -- "
             63 72 69 70 74 6F 72
             20 2D 2D 20
      001180 00                    1658 	.db 0x00
                                   1659 	.area CSEG    (CODE)
                                   1660 	.area CONST   (CODE)
      001181                       1661 ___str_8:
      001181 64 65 76 69 63 65 20  1662 	.ascii "device descriptor"
             64 65 73 63 72 69 70
             74 6F 72
      001192 0A                    1663 	.db 0x0a
      001193 00                    1664 	.db 0x00
                                   1665 	.area CSEG    (CODE)
                                   1666 	.area CONST   (CODE)
      001194                       1667 ___str_9:
      001194 63 6F 6E 66 69 67 75  1668 	.ascii "configuration descriptor"
             72 61 74 69 6F 6E 20
             64 65 73 63 72 69 70
             74 6F 72
      0011AC 0A                    1669 	.db 0x0a
      0011AD 00                    1670 	.db 0x00
                                   1671 	.area CSEG    (CODE)
                                   1672 	.area CONST   (CODE)
      0011AE                       1673 ___str_10:
      0011AE 73 74 72 69 6E 67 20  1674 	.ascii "string descriptor -- "
             64 65 73 63 72 69 70
             74 6F 72 20 2D 2D 20
      0011C3 00                    1675 	.db 0x00
                                   1676 	.area CSEG    (CODE)
                                   1677 	.area CONST   (CODE)
      0011C4                       1678 ___str_11:
      0011C4 6C 61 6E 67 75 61 67  1679 	.ascii "language ID"
             65 20 49 44
      0011CF 0A                    1680 	.db 0x0a
      0011D0 00                    1681 	.db 0x00
                                   1682 	.area CSEG    (CODE)
                                   1683 	.area CONST   (CODE)
      0011D1                       1684 ___str_12:
      0011D1 6D 61 6E 75 66 61 63  1685 	.ascii "manufacture string"
             74 75 72 65 20 73 74
             72 69 6E 67
      0011E3 0A                    1686 	.db 0x0a
      0011E4 00                    1687 	.db 0x00
                                   1688 	.area CSEG    (CODE)
                                   1689 	.area CONST   (CODE)
      0011E5                       1690 ___str_13:
      0011E5 70 72 6F 64 75 63 74  1691 	.ascii "product string"
             20 73 74 72 69 6E 67
      0011F3 0A                    1692 	.db 0x0a
      0011F4 00                    1693 	.db 0x00
                                   1694 	.area CSEG    (CODE)
                                   1695 	.area CONST   (CODE)
      0011F5                       1696 ___str_14:
      0011F5 73 65 72 69 61 6C 20  1697 	.ascii "serial string"
             73 74 72 69 6E 67
      001202 0A                    1698 	.db 0x0a
      001203 00                    1699 	.db 0x00
                                   1700 	.area CSEG    (CODE)
                                   1701 	.area CONST   (CODE)
      001204                       1702 ___str_15:
      001204 75 6E 6B 6E 6F 77 6E  1703 	.ascii "unknown string"
             20 73 74 72 69 6E 67
      001212 0A                    1704 	.db 0x0a
      001213 00                    1705 	.db 0x00
                                   1706 	.area CSEG    (CODE)
                                   1707 	.area CONST   (CODE)
      001214                       1708 ___str_16:
      001214 52 65 70 6F 72 74 20  1709 	.ascii "Report descriptor: "
             64 65 73 63 72 69 70
             74 6F 72 3A 20
      001227 00                    1710 	.db 0x00
                                   1711 	.area CSEG    (CODE)
                                   1712 	.area CONST   (CODE)
      001228                       1713 ___str_17:
      001228 6F 74 68 65 72 20 64  1714 	.ascii "other descriptor: "
             65 73 63 72 69 70 74
             6F 72 3A 20
      00123A 00                    1715 	.db 0x00
                                   1716 	.area CSEG    (CODE)
                                   1717 	.area CONST   (CODE)
      00123B                       1718 ___str_18:
      00123B 0A                    1719 	.db 0x0a
      00123C 00                    1720 	.db 0x00
                                   1721 	.area CSEG    (CODE)
                                   1722 	.area CONST   (CODE)
      00123D                       1723 ___str_19:
      00123D 47 65 74 20 69 6E 74  1724 	.ascii "Get interface"
             65 72 66 61 63 65
      00124A 0A                    1725 	.db 0x0a
      00124B 00                    1726 	.db 0x00
                                   1727 	.area CSEG    (CODE)
                                   1728 	.area CONST   (CODE)
      00124C                       1729 ___str_20:
      00124C 47 65 74 20 73 74 61  1730 	.ascii "Get status"
             74 75 73
      001256 0A                    1731 	.db 0x0a
      001257 00                    1732 	.db 0x00
                                   1733 	.area CSEG    (CODE)
                                   1734 	.area CONST   (CODE)
      001258                       1735 ___str_21:
      001258 53 79 6E 63 68 20 66  1736 	.ascii "Synch frame"
             72 61 6D 65
      001263 0A                    1737 	.db 0x0a
      001264 00                    1738 	.db 0x00
                                   1739 	.area CSEG    (CODE)
                                   1740 	.area CONST   (CODE)
      001265                       1741 ___str_22:
      001265 45 72 72 6F 72 3A 20  1742 	.ascii "Error: undefined stander request"
             75 6E 64 65 66 69 6E
             65 64 20 73 74 61 6E
             64 65 72 20 72 65 71
             75 65 73 74
      001285 0A                    1743 	.db 0x0a
      001286 00                    1744 	.db 0x00
                                   1745 	.area CSEG    (CODE)
                                   1746 	.area CONST   (CODE)
      001287                       1747 ___str_23:
      001287 55 53 42 20 63 6C 61  1748 	.ascii "USB class input request:"
             73 73 20 69 6E 70 75
             74 20 72 65 71 75 65
             73 74 3A
      00129F 0A                    1749 	.db 0x0a
      0012A0 00                    1750 	.db 0x00
                                   1751 	.area CSEG    (CODE)
                                   1752 	.area CONST   (CODE)
      0012A1                       1753 ___str_24:
      0012A1 55 53 42 20 76 65 6E  1754 	.ascii "USB vendor input request:"
             64 6F 72 20 69 6E 70
             75 74 20 72 65 71 75
             65 73 74 3A
      0012BA 0A                    1755 	.db 0x0a
      0012BB 00                    1756 	.db 0x00
                                   1757 	.area CSEG    (CODE)
                                   1758 	.area CONST   (CODE)
      0012BC                       1759 ___str_25:
      0012BC 45 72 72 6F 72 3A 20  1760 	.ascii "Error: undefined input request:"
             75 6E 64 65 66 69 6E
             65 64 20 69 6E 70 75
             74 20 72 65 71 75 65
             73 74 3A
      0012DB 0A                    1761 	.db 0x0a
      0012DC 00                    1762 	.db 0x00
                                   1763 	.area CSEG    (CODE)
                                   1764 	.area CONST   (CODE)
      0012DD                       1765 ___str_26:
      0012DD 55 53 42 20 73 74 61  1766 	.ascii "USB stander output request: "
             6E 64 65 72 20 6F 75
             74 70 75 74 20 72 65
             71 75 65 73 74 3A 20
      0012F9 00                    1767 	.db 0x00
                                   1768 	.area CSEG    (CODE)
                                   1769 	.area CONST   (CODE)
      0012FA                       1770 ___str_27:
      0012FA 63 6C 65 61 72 20 66  1771 	.ascii "clear feature"
             65 61 74 75 72 65
      001307 0A                    1772 	.db 0x0a
      001308 00                    1773 	.db 0x00
                                   1774 	.area CSEG    (CODE)
                                   1775 	.area CONST   (CODE)
      001309                       1776 ___str_28:
      001309 73 65 74 20 61 64 64  1777 	.ascii "set address, the address is: "
             72 65 73 73 2C 20 74
             68 65 20 61 64 64 72
             65 73 73 20 69 73 3A
             20
      001326 00                    1778 	.db 0x00
                                   1779 	.area CSEG    (CODE)
                                   1780 	.area CONST   (CODE)
      001327                       1781 ___str_29:
      001327 73 65 74 20 63 6F 6E  1782 	.ascii "set configuration"
             66 69 67 75 72 61 74
             69 6F 6E
      001338 0A                    1783 	.db 0x0a
      001339 00                    1784 	.db 0x00
                                   1785 	.area CSEG    (CODE)
                                   1786 	.area CONST   (CODE)
      00133A                       1787 ___str_30:
      00133A 73 65 74 20 64 65 73  1788 	.ascii "set descriptor"
             63 72 69 70 74 6F 72
      001348 0A                    1789 	.db 0x0a
      001349 00                    1790 	.db 0x00
                                   1791 	.area CSEG    (CODE)
                                   1792 	.area CONST   (CODE)
      00134A                       1793 ___str_31:
      00134A 73 65 74 20 66 65 61  1794 	.ascii "set feature"
             74 75 72 65
      001355 0A                    1795 	.db 0x0a
      001356 00                    1796 	.db 0x00
                                   1797 	.area CSEG    (CODE)
                                   1798 	.area CONST   (CODE)
      001357                       1799 ___str_32:
      001357 73 65 74 20 69 6E 74  1800 	.ascii "set interface"
             65 72 66 61 63 65
      001364 0A                    1801 	.db 0x0a
      001365 00                    1802 	.db 0x00
                                   1803 	.area CSEG    (CODE)
                                   1804 	.area CONST   (CODE)
      001366                       1805 ___str_33:
      001366 55 53 42 20 63 6C 61  1806 	.ascii "USB class output request:"
             73 73 20 6F 75 74 70
             75 74 20 72 65 71 75
             65 73 74 3A
      00137F 0A                    1807 	.db 0x0a
      001380 00                    1808 	.db 0x00
                                   1809 	.area CSEG    (CODE)
                                   1810 	.area CONST   (CODE)
      001381                       1811 ___str_34:
      001381 73 65 74 20 69 64 6C  1812 	.ascii "set idle"
             65
      001389 0A                    1813 	.db 0x0a
      00138A 00                    1814 	.db 0x00
                                   1815 	.area CSEG    (CODE)
                                   1816 	.area CONST   (CODE)
      00138B                       1817 ___str_35:
      00138B 75 6E 6B 6E 6F 77 6E  1818 	.ascii "unknown request"
             20 72 65 71 75 65 73
             74
      00139A 0A                    1819 	.db 0x0a
      00139B 00                    1820 	.db 0x00
                                   1821 	.area CSEG    (CODE)
                                   1822 	.area CONST   (CODE)
      00139C                       1823 ___str_36:
      00139C 55 53 42 20 76 65 6E  1824 	.ascii "USB vendor output request:"
             64 6F 72 20 6F 75 74
             70 75 74 20 72 65 71
             75 65 73 74 3A
      0013B6 0A                    1825 	.db 0x0a
      0013B7 00                    1826 	.db 0x00
                                   1827 	.area CSEG    (CODE)
                                   1828 	.area CONST   (CODE)
      0013B8                       1829 ___str_37:
      0013B8 45 72 72 6F 72 3A 20  1830 	.ascii "Error: undefined output request."
             75 6E 64 65 66 69 6E
             65 64 20 6F 75 74 70
             75 74 20 72 65 71 75
             65 73 74 2E
      0013D8 0A                    1831 	.db 0x0a
      0013D9 00                    1832 	.db 0x00
                                   1833 	.area CSEG    (CODE)
                                   1834 	.area CONST   (CODE)
      0013DA                       1835 ___str_38:
      0013DA 75 73 62 20 69 73 72  1836 	.ascii "usb isr ep0 in"
             20 65 70 30 20 69 6E
      0013E8 0A                    1837 	.db 0x0a
      0013E9 00                    1838 	.db 0x00
                                   1839 	.area CSEG    (CODE)
                                   1840 	.area CONST   (CODE)
      0013EA                       1841 ___str_39:
      0013EA 75 73 62 20 63 6F 72  1842 	.ascii "usb core ep1 out"
             65 20 65 70 31 20 6F
             75 74
      0013FA 0A                    1843 	.db 0x0a
      0013FB 00                    1844 	.db 0x00
                                   1845 	.area CSEG    (CODE)
                                   1846 	.area CONST   (CODE)
      0013FC                       1847 ___str_40:
      0013FC 75 73 62 20 63 6F 72  1848 	.ascii "usb core ep1 in"
             65 20 65 70 31 20 69
             6E
      00140B 0A                    1849 	.db 0x0a
      00140C 00                    1850 	.db 0x00
                                   1851 	.area CSEG    (CODE)
                                   1852 	.area CONST   (CODE)
      00140D                       1853 ___str_41:
      00140D 75 73 62 20 63 6F 72  1854 	.ascii "usb core ep2 out"
             65 20 65 70 32 20 6F
             75 74
      00141D 0A                    1855 	.db 0x0a
      00141E 00                    1856 	.db 0x00
                                   1857 	.area CSEG    (CODE)
                                   1858 	.area CONST   (CODE)
      00141F                       1859 ___str_42:
      00141F 75 73 62 20 63 6F 72  1860 	.ascii "usb core ep2 in"
             65 20 65 70 32 20 69
             6E
      00142E 0A                    1861 	.db 0x0a
      00142F 00                    1862 	.db 0x00
                                   1863 	.area CSEG    (CODE)
                                   1864 	.area XINIT   (CODE)
                                   1865 	.area CABS    (ABS,CODE)
