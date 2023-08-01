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
      000045                        330 _usb_bus_isr_ep0_out_buffer_65536_57:
      000045                        331 	.ds 16
      000055                        332 _usb_bus_isr_ep1_out_buf_65536_74:
      000055                        333 	.ds 1
                                    334 ;--------------------------------------------------------
                                    335 ; overlayable items in internal ram 
                                    336 ;--------------------------------------------------------
                                    337 ;--------------------------------------------------------
                                    338 ; indirectly addressable internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area ISEG    (DATA)
                                    341 ;--------------------------------------------------------
                                    342 ; absolute internal ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area IABS    (ABS,DATA)
                                    345 	.area IABS    (ABS,DATA)
                                    346 ;--------------------------------------------------------
                                    347 ; bit data
                                    348 ;--------------------------------------------------------
                                    349 	.area BSEG    (BIT)
                                    350 ;--------------------------------------------------------
                                    351 ; paged external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area PSEG    (PAG,XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XSEG    (XDATA)
                                    358 ;--------------------------------------------------------
                                    359 ; absolute external ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area XABS    (ABS,XDATA)
                                    362 ;--------------------------------------------------------
                                    363 ; external initialized ram data
                                    364 ;--------------------------------------------------------
                                    365 	.area XISEG   (XDATA)
                                    366 	.area HOME    (CODE)
                                    367 	.area GSINIT0 (CODE)
                                    368 	.area GSINIT1 (CODE)
                                    369 	.area GSINIT2 (CODE)
                                    370 	.area GSINIT3 (CODE)
                                    371 	.area GSINIT4 (CODE)
                                    372 	.area GSINIT5 (CODE)
                                    373 	.area GSINIT  (CODE)
                                    374 	.area GSFINAL (CODE)
                                    375 	.area CSEG    (CODE)
                                    376 ;--------------------------------------------------------
                                    377 ; global & static initialisations
                                    378 ;--------------------------------------------------------
                                    379 	.area HOME    (CODE)
                                    380 	.area GSINIT  (CODE)
                                    381 	.area GSFINAL (CODE)
                                    382 	.area GSINIT  (CODE)
                                    383 ;--------------------------------------------------------
                                    384 ; Home
                                    385 ;--------------------------------------------------------
                                    386 	.area HOME    (CODE)
                                    387 	.area HOME    (CODE)
                                    388 ;--------------------------------------------------------
                                    389 ; code
                                    390 ;--------------------------------------------------------
                                    391 	.area CSEG    (CODE)
                                    392 ;------------------------------------------------------------
                                    393 ;Allocation info for local variables in function 'usb_disconnect'
                                    394 ;------------------------------------------------------------
                                    395 ;	src/usbcore.c:285: void usb_disconnect(void)
                                    396 ;	-----------------------------------------
                                    397 ;	 function usb_disconnect
                                    398 ;	-----------------------------------------
      0008C1                        399 _usb_disconnect:
                           000007   400 	ar7 = 0x07
                           000006   401 	ar6 = 0x06
                           000005   402 	ar5 = 0x05
                           000004   403 	ar4 = 0x04
                           000003   404 	ar3 = 0x03
                           000002   405 	ar2 = 0x02
                           000001   406 	ar1 = 0x01
                           000000   407 	ar0 = 0x00
                                    408 ;	src/usbcore.c:288: Prints("usb disconnect\n");
      0008C1 90 11 1C         [24]  409 	mov	dptr,#___str_0
      0008C4 75 F0 80         [24]  410 	mov	b,#0x80
      0008C7 12 07 18         [24]  411 	lcall	_Prints
                                    412 ;	src/usbcore.c:290: D12_write_command(D12_SET_MODE);    /* set mode */
      0008CA 75 82 F3         [24]  413 	mov	dpl,#0xf3
      0008CD 12 04 78         [24]  414 	lcall	_D12_write_command
                                    415 ;	src/usbcore.c:291: D12_write_byte(0x06);               /* byte1, pull-up R disconnect, indicate usb disconnet */
      0008D0 75 82 06         [24]  416 	mov	dpl,#0x06
      0008D3 12 04 B7         [24]  417 	lcall	_D12_write_byte
                                    418 ;	src/usbcore.c:292: D12_write_byte(0x47);               /* byte2 */
      0008D6 75 82 47         [24]  419 	mov	dpl,#0x47
      0008D9 12 04 B7         [24]  420 	lcall	_D12_write_byte
                                    421 ;	src/usbcore.c:293: delay_ms(1000);
      0008DC 90 03 E8         [24]  422 	mov	dptr,#0x03e8
                                    423 ;	src/usbcore.c:294: }
      0008DF 02 00 90         [24]  424 	ljmp	_delay_ms
                                    425 ;------------------------------------------------------------
                                    426 ;Allocation info for local variables in function 'usb_connect'
                                    427 ;------------------------------------------------------------
                                    428 ;	src/usbcore.c:296: void usb_connect(void)
                                    429 ;	-----------------------------------------
                                    430 ;	 function usb_connect
                                    431 ;	-----------------------------------------
      0008E2                        432 _usb_connect:
                                    433 ;	src/usbcore.c:299: Prints("usb connect\n");
      0008E2 90 11 2C         [24]  434 	mov	dptr,#___str_1
      0008E5 75 F0 80         [24]  435 	mov	b,#0x80
      0008E8 12 07 18         [24]  436 	lcall	_Prints
                                    437 ;	src/usbcore.c:301: D12_write_command(D12_SET_MODE);    /* set mode */
      0008EB 75 82 F3         [24]  438 	mov	dpl,#0xf3
      0008EE 12 04 78         [24]  439 	lcall	_D12_write_command
                                    440 ;	src/usbcore.c:302: D12_write_byte(0x16);               /* byte1, pull-up R connect, indicate usb connet */
      0008F1 75 82 16         [24]  441 	mov	dpl,#0x16
      0008F4 12 04 B7         [24]  442 	lcall	_D12_write_byte
                                    443 ;	src/usbcore.c:303: D12_write_byte(0x47);               /* byte2 */
      0008F7 75 82 47         [24]  444 	mov	dpl,#0x47
                                    445 ;	src/usbcore.c:304: }
      0008FA 02 04 B7         [24]  446 	ljmp	_D12_write_byte
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function 'usb_bus_isr_suspend'
                                    449 ;------------------------------------------------------------
                                    450 ;	src/usbcore.c:306: void usb_bus_isr_suspend()
                                    451 ;	-----------------------------------------
                                    452 ;	 function usb_bus_isr_suspend
                                    453 ;	-----------------------------------------
      0008FD                        454 _usb_bus_isr_suspend:
                                    455 ;	src/usbcore.c:309: Prints("usb core isr suspend\n");
      0008FD 90 11 39         [24]  456 	mov	dptr,#___str_2
      000900 75 F0 80         [24]  457 	mov	b,#0x80
                                    458 ;	src/usbcore.c:311: }
      000903 02 07 18         [24]  459 	ljmp	_Prints
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'usb_bus_isr_reset'
                                    462 ;------------------------------------------------------------
                                    463 ;	src/usbcore.c:313: void usb_bus_isr_reset()
                                    464 ;	-----------------------------------------
                                    465 ;	 function usb_bus_isr_reset
                                    466 ;	-----------------------------------------
      000906                        467 _usb_bus_isr_reset:
                                    468 ;	src/usbcore.c:316: Prints("usb core isr reset\n");
      000906 90 11 4F         [24]  469 	mov	dptr,#___str_3
      000909 75 F0 80         [24]  470 	mov	b,#0x80
      00090C 12 07 18         [24]  471 	lcall	_Prints
                                    472 ;	src/usbcore.c:318: Ep1InIsBusy = 0;
      00090F 75 43 00         [24]  473 	mov	_Ep1InIsBusy,#0x00
                                    474 ;	src/usbcore.c:319: }
      000912 22               [24]  475 	ret
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'usb_bus_isr_ep0_out'
                                    478 ;------------------------------------------------------------
                                    479 ;buffer                    Allocated with name '_usb_bus_isr_ep0_out_buffer_65536_57'
                                    480 ;------------------------------------------------------------
                                    481 ;	src/usbcore.c:332: void usb_bus_isr_ep0_out()
                                    482 ;	-----------------------------------------
                                    483 ;	 function usb_bus_isr_ep0_out
                                    484 ;	-----------------------------------------
      000913                        485 _usb_bus_isr_ep0_out:
                                    486 ;	src/usbcore.c:336: Prints("usb isr ep0 out\n");
      000913 90 11 63         [24]  487 	mov	dptr,#___str_4
      000916 75 F0 80         [24]  488 	mov	b,#0x80
      000919 12 07 18         [24]  489 	lcall	_Prints
                                    490 ;	src/usbcore.c:338: memset(buffer, 0, sizeof(buffer));
      00091C 75 1B 00         [24]  491 	mov	_memset_PARM_2,#0x00
      00091F 75 1C 10         [24]  492 	mov	_memset_PARM_3,#0x10
      000922 75 1D 00         [24]  493 	mov	(_memset_PARM_3 + 1),#0x00
      000925 90 00 45         [24]  494 	mov	dptr,#_usb_bus_isr_ep0_out_buffer_65536_57
      000928 75 F0 40         [24]  495 	mov	b,#0x40
      00092B 12 0E 97         [24]  496 	lcall	_memset
                                    497 ;	src/usbcore.c:341: if (D12_read_endpoint_last_status(0) & 0x20) {
      00092E 75 82 00         [24]  498 	mov	dpl,#0x00
      000931 12 04 C5         [24]  499 	lcall	_D12_read_endpoint_last_status
      000934 E5 82            [12]  500 	mov	a,dpl
      000936 20 E5 03         [24]  501 	jb	acc.5,00299$
      000939 02 0D 6A         [24]  502 	ljmp	00163$
      00093C                        503 00299$:
                                    504 ;	src/usbcore.c:342: D12_read_endpoint_buffer(0, 16, buffer);
      00093C 75 14 45         [24]  505 	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep0_out_buffer_65536_57
      00093F 75 15 00         [24]  506 	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
      000942 75 16 40         [24]  507 	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
      000945 75 13 10         [24]  508 	mov	_D12_read_endpoint_buffer_PARM_2,#0x10
      000948 75 82 00         [24]  509 	mov	dpl,#0x00
      00094B 12 04 D5         [24]  510 	lcall	_D12_read_endpoint_buffer
                                    511 ;	src/usbcore.c:343: D12_Acknowlwdge_setup();
      00094E 12 05 C2         [24]  512 	lcall	_D12_Acknowlwdge_setup
                                    513 ;	src/usbcore.c:344: D12_clear_buffer();
      000951 12 05 BC         [24]  514 	lcall	_D12_clear_buffer
                                    515 ;	src/usbcore.c:346: bmRequestType = buffer[0];
      000954 85 45 35         [24]  516 	mov	_bmRequestType,_usb_bus_isr_ep0_out_buffer_65536_57
                                    517 ;	src/usbcore.c:347: bRequest = buffer[1];
      000957 85 46 36         [24]  518 	mov	_bRequest,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0001)
                                    519 ;	src/usbcore.c:348: wValue = buffer[2] | (((uint16)buffer[3]) << 8);
      00095A AF 48            [24]  520 	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0003)
      00095C 7E 00            [12]  521 	mov	r6,#0x00
      00095E AC 47            [24]  522 	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0002)
      000960 7D 00            [12]  523 	mov	r5,#0x00
      000962 EE               [12]  524 	mov	a,r6
      000963 4C               [12]  525 	orl	a,r4
      000964 F5 37            [12]  526 	mov	_wValue,a
      000966 EF               [12]  527 	mov	a,r7
      000967 4D               [12]  528 	orl	a,r5
      000968 F5 38            [12]  529 	mov	(_wValue + 1),a
                                    530 ;	src/usbcore.c:349: wIndex = buffer[4] | (((uint16)buffer[5]) << 8);
      00096A AF 4A            [24]  531 	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0005)
      00096C 7E 00            [12]  532 	mov	r6,#0x00
      00096E AC 49            [24]  533 	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0004)
      000970 7D 00            [12]  534 	mov	r5,#0x00
      000972 EE               [12]  535 	mov	a,r6
      000973 4C               [12]  536 	orl	a,r4
      000974 F5 39            [12]  537 	mov	_wIndex,a
      000976 EF               [12]  538 	mov	a,r7
      000977 4D               [12]  539 	orl	a,r5
      000978 F5 3A            [12]  540 	mov	(_wIndex + 1),a
                                    541 ;	src/usbcore.c:350: wLength = buffer[6] | (((uint16)buffer[7]) << 8);
      00097A AF 4C            [24]  542 	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0007)
      00097C 7E 00            [12]  543 	mov	r6,#0x00
      00097E AC 4B            [24]  544 	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0006)
      000980 7D 00            [12]  545 	mov	r5,#0x00
      000982 EE               [12]  546 	mov	a,r6
      000983 4C               [12]  547 	orl	a,r4
      000984 F5 3B            [12]  548 	mov	_wLength,a
      000986 EF               [12]  549 	mov	a,r7
      000987 4D               [12]  550 	orl	a,r5
      000988 F5 3C            [12]  551 	mov	(_wLength + 1),a
                                    552 ;	src/usbcore.c:352: if ((bmRequestType & 0x80) == 0x80) {   /* input request */
      00098A AE 35            [24]  553 	mov	r6,_bmRequestType
      00098C 53 06 80         [24]  554 	anl	ar6,#0x80
      00098F 7F 00            [12]  555 	mov	r7,#0x00
      000991 BE 80 05         [24]  556 	cjne	r6,#0x80,00300$
      000994 BF 00 02         [24]  557 	cjne	r7,#0x00,00300$
      000997 80 03            [24]  558 	sjmp	00301$
      000999                        559 00300$:
      000999 02 0C 5D         [24]  560 	ljmp	00160$
      00099C                        561 00301$:
                                    562 ;	src/usbcore.c:355: switch ((bmRequestType >> 5) & 0x3) {
      00099C E5 35            [12]  563 	mov	a,_bmRequestType
      00099E C4               [12]  564 	swap	a
      00099F 03               [12]  565 	rr	a
      0009A0 54 07            [12]  566 	anl	a,#0x07
      0009A2 FF               [12]  567 	mov	r7,a
      0009A3 53 07 03         [24]  568 	anl	ar7,#0x03
      0009A6 7E 00            [12]  569 	mov	r6,#0x00
      0009A8 BF 00 05         [24]  570 	cjne	r7,#0x00,00302$
      0009AB BE 00 02         [24]  571 	cjne	r6,#0x00,00302$
      0009AE 80 15            [24]  572 	sjmp	00101$
      0009B0                        573 00302$:
      0009B0 BF 01 06         [24]  574 	cjne	r7,#0x01,00303$
      0009B3 BE 00 03         [24]  575 	cjne	r6,#0x00,00303$
      0009B6 02 0C 42         [24]  576 	ljmp	00139$
      0009B9                        577 00303$:
      0009B9 BF 02 06         [24]  578 	cjne	r7,#0x02,00304$
      0009BC BE 00 03         [24]  579 	cjne	r6,#0x00,00304$
      0009BF 02 0C 4B         [24]  580 	ljmp	00140$
      0009C2                        581 00304$:
      0009C2 02 0C 54         [24]  582 	ljmp	00141$
                                    583 ;	src/usbcore.c:356: case 0:                             /* stander request */
      0009C5                        584 00101$:
                                    585 ;	src/usbcore.c:358: Prints("USB stand input request: ");
      0009C5 90 11 74         [24]  586 	mov	dptr,#___str_5
      0009C8 75 F0 80         [24]  587 	mov	b,#0x80
      0009CB 12 07 18         [24]  588 	lcall	_Prints
                                    589 ;	src/usbcore.c:360: switch (bRequest) {
      0009CE E4               [12]  590 	clr	a
      0009CF B5 36 03         [24]  591 	cjne	a,_bRequest,00305$
      0009D2 02 0C 27         [24]  592 	ljmp	00135$
      0009D5                        593 00305$:
      0009D5 74 06            [12]  594 	mov	a,#0x06
      0009D7 B5 36 02         [24]  595 	cjne	a,_bRequest,00306$
      0009DA 80 23            [24]  596 	sjmp	00103$
      0009DC                        597 00306$:
      0009DC 74 08            [12]  598 	mov	a,#0x08
      0009DE B5 36 02         [24]  599 	cjne	a,_bRequest,00307$
      0009E1 80 13            [24]  600 	sjmp	00102$
      0009E3                        601 00307$:
      0009E3 74 0A            [12]  602 	mov	a,#0x0a
      0009E5 B5 36 03         [24]  603 	cjne	a,_bRequest,00308$
      0009E8 02 0C 1E         [24]  604 	ljmp	00134$
      0009EB                        605 00308$:
      0009EB 74 0C            [12]  606 	mov	a,#0x0c
      0009ED B5 36 03         [24]  607 	cjne	a,_bRequest,00309$
      0009F0 02 0C 30         [24]  608 	ljmp	00136$
      0009F3                        609 00309$:
      0009F3 02 0C 39         [24]  610 	ljmp	00137$
                                    611 ;	src/usbcore.c:361: case GET_CONFIGURATION:         /* get configuration */
      0009F6                        612 00102$:
                                    613 ;	src/usbcore.c:363: Prints("Get configuration\n");
      0009F6 90 11 8E         [24]  614 	mov	dptr,#___str_6
      0009F9 75 F0 80         [24]  615 	mov	b,#0x80
                                    616 ;	src/usbcore.c:365: break;
      0009FC 02 07 18         [24]  617 	ljmp	_Prints
                                    618 ;	src/usbcore.c:366: case GET_DESCRIPTOR:
      0009FF                        619 00103$:
                                    620 ;	src/usbcore.c:368: Prints("Get descriptor -- ");
      0009FF 90 11 A1         [24]  621 	mov	dptr,#___str_7
      000A02 75 F0 80         [24]  622 	mov	b,#0x80
      000A05 12 07 18         [24]  623 	lcall	_Prints
                                    624 ;	src/usbcore.c:372: switch ((wValue >> 8) & 0xFF) {
      000A08 AF 38            [24]  625 	mov	r7,(_wValue + 1)
      000A0A BF 01 02         [24]  626 	cjne	r7,#0x01,00310$
      000A0D 80 14            [24]  627 	sjmp	00104$
      000A0F                        628 00310$:
      000A0F BF 02 02         [24]  629 	cjne	r7,#0x02,00311$
      000A12 80 61            [24]  630 	sjmp	00110$
      000A14                        631 00311$:
      000A14 BF 03 03         [24]  632 	cjne	r7,#0x03,00312$
      000A17 02 0A D6         [24]  633 	ljmp	00116$
      000A1A                        634 00312$:
      000A1A BF 22 03         [24]  635 	cjne	r7,#0x22,00313$
      000A1D 02 0B BF         [24]  636 	ljmp	00127$
      000A20                        637 00313$:
      000A20 02 0C 06         [24]  638 	ljmp	00132$
                                    639 ;	src/usbcore.c:373: case DEVICE_DESCRIPTOR:
      000A23                        640 00104$:
                                    641 ;	src/usbcore.c:375: Prints("device descriptor\n");
      000A23 90 11 B4         [24]  642 	mov	dptr,#___str_8
      000A26 75 F0 80         [24]  643 	mov	b,#0x80
      000A29 12 07 18         [24]  644 	lcall	_Prints
                                    645 ;	src/usbcore.c:377: pSendData = (uint8 *)DeviceDescriptor;
      000A2C 75 3D 08         [24]  646 	mov	_pSendData,#_DeviceDescriptor
      000A2F 75 3E 10         [24]  647 	mov	(_pSendData + 1),#(_DeviceDescriptor >> 8)
      000A32 75 3F 80         [24]  648 	mov	(_pSendData + 2),#0x80
                                    649 ;	src/usbcore.c:378: if (wLength > DeviceDescriptor[0]) {
      000A35 90 10 08         [24]  650 	mov	dptr,#_DeviceDescriptor
      000A38 E4               [12]  651 	clr	a
      000A39 93               [24]  652 	movc	a,@a+dptr
      000A3A FE               [12]  653 	mov	r6,a
      000A3B 7F 00            [12]  654 	mov	r7,#0x00
      000A3D C3               [12]  655 	clr	c
      000A3E EE               [12]  656 	mov	a,r6
      000A3F 95 3B            [12]  657 	subb	a,_wLength
      000A41 EF               [12]  658 	mov	a,r7
      000A42 95 3C            [12]  659 	subb	a,(_wLength + 1)
      000A44 50 26            [24]  660 	jnc	00108$
                                    661 ;	src/usbcore.c:379: SendLength = DeviceDescriptor[0];
      000A46 8E 40            [24]  662 	mov	_SendLength,r6
      000A48 8F 41            [24]  663 	mov	(_SendLength + 1),r7
                                    664 ;	src/usbcore.c:380: if (SendLength % DeviceDescriptor[7] == 0)
      000A4A 90 10 0F         [24]  665 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000A4D E4               [12]  666 	clr	a
      000A4E 93               [24]  667 	movc	a,@a+dptr
      000A4F FF               [12]  668 	mov	r7,a
      000A50 8F 1B            [24]  669 	mov	__moduint_PARM_2,r7
      000A52 75 1C 00         [24]  670 	mov	(__moduint_PARM_2 + 1),#0x00
      000A55 85 40 82         [24]  671 	mov	dpl,_SendLength
      000A58 85 41 83         [24]  672 	mov	dph,(_SendLength + 1)
      000A5B 12 0E D1         [24]  673 	lcall	__moduint
      000A5E E5 82            [12]  674 	mov	a,dpl
      000A60 85 83 F0         [24]  675 	mov	b,dph
      000A63 45 F0            [12]  676 	orl	a,b
      000A65 70 0B            [24]  677 	jnz	00109$
                                    678 ;	src/usbcore.c:381: NeedZeroPacket = 1;
      000A67 75 42 01         [24]  679 	mov	_NeedZeroPacket,#0x01
      000A6A 80 06            [24]  680 	sjmp	00109$
      000A6C                        681 00108$:
                                    682 ;	src/usbcore.c:383: SendLength = wLength;
      000A6C 85 3B 40         [24]  683 	mov	_SendLength,_wLength
      000A6F 85 3C 41         [24]  684 	mov	(_SendLength + 1),(_wLength + 1)
      000A72                        685 00109$:
                                    686 ;	src/usbcore.c:385: usb_bus_ep0_send_data();
                                    687 ;	src/usbcore.c:386: break;
      000A72 02 0D EF         [24]  688 	ljmp	_usb_bus_ep0_send_data
                                    689 ;	src/usbcore.c:387: case CONFIGURATION_DESCRIPTOR:
      000A75                        690 00110$:
                                    691 ;	src/usbcore.c:389: Prints("configuration descriptor\n");
      000A75 90 11 C7         [24]  692 	mov	dptr,#___str_9
      000A78 75 F0 80         [24]  693 	mov	b,#0x80
      000A7B 12 07 18         [24]  694 	lcall	_Prints
                                    695 ;	src/usbcore.c:391: pSendData = (uint8 *)ConfigurationDescriptor;
      000A7E 75 3D 1A         [24]  696 	mov	_pSendData,#_ConfigurationDescriptor
      000A81 75 3E 10         [24]  697 	mov	(_pSendData + 1),#(_ConfigurationDescriptor >> 8)
      000A84 75 3F 80         [24]  698 	mov	(_pSendData + 2),#0x80
                                    699 ;	src/usbcore.c:392: SendLength = ConfigurationDescriptor[3] * 256 + ConfigurationDescriptor[2];
      000A87 90 10 1D         [24]  700 	mov	dptr,#(_ConfigurationDescriptor + 0x0003)
      000A8A E4               [12]  701 	clr	a
      000A8B 93               [24]  702 	movc	a,@a+dptr
      000A8C FE               [12]  703 	mov	r6,a
      000A8D 7F 00            [12]  704 	mov	r7,#0x00
      000A8F 90 10 1C         [24]  705 	mov	dptr,#(_ConfigurationDescriptor + 0x0002)
      000A92 E4               [12]  706 	clr	a
      000A93 93               [24]  707 	movc	a,@a+dptr
      000A94 FD               [12]  708 	mov	r5,a
      000A95 7C 00            [12]  709 	mov	r4,#0x00
      000A97 2F               [12]  710 	add	a,r7
      000A98 FF               [12]  711 	mov	r7,a
      000A99 EC               [12]  712 	mov	a,r4
      000A9A 3E               [12]  713 	addc	a,r6
      000A9B FE               [12]  714 	mov	r6,a
      000A9C 8F 40            [24]  715 	mov	_SendLength,r7
      000A9E 8E 41            [24]  716 	mov	(_SendLength + 1),r6
                                    717 ;	src/usbcore.c:393: if (wLength > SendLength) {
      000AA0 C3               [12]  718 	clr	c
      000AA1 E5 40            [12]  719 	mov	a,_SendLength
      000AA3 95 3B            [12]  720 	subb	a,_wLength
      000AA5 E5 41            [12]  721 	mov	a,(_SendLength + 1)
      000AA7 95 3C            [12]  722 	subb	a,(_wLength + 1)
      000AA9 50 22            [24]  723 	jnc	00114$
                                    724 ;	src/usbcore.c:394: if (SendLength % DeviceDescriptor[7] == 0)
      000AAB 90 10 0F         [24]  725 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000AAE E4               [12]  726 	clr	a
      000AAF 93               [24]  727 	movc	a,@a+dptr
      000AB0 FF               [12]  728 	mov	r7,a
      000AB1 8F 1B            [24]  729 	mov	__moduint_PARM_2,r7
      000AB3 75 1C 00         [24]  730 	mov	(__moduint_PARM_2 + 1),#0x00
      000AB6 85 40 82         [24]  731 	mov	dpl,_SendLength
      000AB9 85 41 83         [24]  732 	mov	dph,(_SendLength + 1)
      000ABC 12 0E D1         [24]  733 	lcall	__moduint
      000ABF E5 82            [12]  734 	mov	a,dpl
      000AC1 85 83 F0         [24]  735 	mov	b,dph
      000AC4 45 F0            [12]  736 	orl	a,b
      000AC6 70 0B            [24]  737 	jnz	00115$
                                    738 ;	src/usbcore.c:395: NeedZeroPacket = 1;
      000AC8 75 42 01         [24]  739 	mov	_NeedZeroPacket,#0x01
      000ACB 80 06            [24]  740 	sjmp	00115$
      000ACD                        741 00114$:
                                    742 ;	src/usbcore.c:397: SendLength = wLength;
      000ACD 85 3B 40         [24]  743 	mov	_SendLength,_wLength
      000AD0 85 3C 41         [24]  744 	mov	(_SendLength + 1),(_wLength + 1)
      000AD3                        745 00115$:
                                    746 ;	src/usbcore.c:399: usb_bus_ep0_send_data();
                                    747 ;	src/usbcore.c:400: break;
      000AD3 02 0D EF         [24]  748 	ljmp	_usb_bus_ep0_send_data
                                    749 ;	src/usbcore.c:401: case STRING_DESCRIPTOR:
      000AD6                        750 00116$:
                                    751 ;	src/usbcore.c:403: Prints("string descriptor -- ");
      000AD6 90 11 E1         [24]  752 	mov	dptr,#___str_10
      000AD9 75 F0 80         [24]  753 	mov	b,#0x80
      000ADC 12 07 18         [24]  754 	lcall	_Prints
                                    755 ;	src/usbcore.c:405: switch (wValue & 0xFF) {
      000ADF AE 37            [24]  756 	mov	r6,_wValue
      000AE1 7F 00            [12]  757 	mov	r7,#0x00
      000AE3 C3               [12]  758 	clr	c
      000AE4 74 03            [12]  759 	mov	a,#0x03
      000AE6 9E               [12]  760 	subb	a,r6
      000AE7 E4               [12]  761 	clr	a
      000AE8 9F               [12]  762 	subb	a,r7
      000AE9 50 03            [24]  763 	jnc	00318$
      000AEB 02 0B 78         [24]  764 	ljmp	00121$
      000AEE                        765 00318$:
      000AEE EE               [12]  766 	mov	a,r6
      000AEF 2E               [12]  767 	add	a,r6
                                    768 ;	src/usbcore.c:406: case 0:         /* get language ID */
      000AF0 90 0A F4         [24]  769 	mov	dptr,#00319$
      000AF3 73               [24]  770 	jmp	@a+dptr
      000AF4                        771 00319$:
      000AF4 80 06            [24]  772 	sjmp	00117$
      000AF6 80 23            [24]  773 	sjmp	00118$
      000AF8 80 40            [24]  774 	sjmp	00119$
      000AFA 80 5D            [24]  775 	sjmp	00120$
      000AFC                        776 00117$:
                                    777 ;	src/usbcore.c:408: Prints("language ID\n");
      000AFC 90 11 F7         [24]  778 	mov	dptr,#___str_11
      000AFF 75 F0 80         [24]  779 	mov	b,#0x80
      000B02 12 07 18         [24]  780 	lcall	_Prints
                                    781 ;	src/usbcore.c:410: pSendData = (uint8 *)languageId;
      000B05 75 3D 43         [24]  782 	mov	_pSendData,#_languageId
      000B08 75 3E 10         [24]  783 	mov	(_pSendData + 1),#(_languageId >> 8)
      000B0B 75 3F 80         [24]  784 	mov	(_pSendData + 2),#0x80
                                    785 ;	src/usbcore.c:411: SendLength = languageId[0];
      000B0E 90 10 43         [24]  786 	mov	dptr,#_languageId
      000B11 E4               [12]  787 	clr	a
      000B12 93               [24]  788 	movc	a,@a+dptr
      000B13 FF               [12]  789 	mov	r7,a
      000B14 8F 40            [24]  790 	mov	_SendLength,r7
      000B16 75 41 00         [24]  791 	mov	(_SendLength + 1),#0x00
                                    792 ;	src/usbcore.c:412: break;
                                    793 ;	src/usbcore.c:413: case 1:         /* Vendor string id is 1  */
      000B19 80 6E            [24]  794 	sjmp	00122$
      000B1B                        795 00118$:
                                    796 ;	src/usbcore.c:415: Prints("manufacture string\n");
      000B1B 90 12 04         [24]  797 	mov	dptr,#___str_12
      000B1E 75 F0 80         [24]  798 	mov	b,#0x80
      000B21 12 07 18         [24]  799 	lcall	_Prints
                                    800 ;	src/usbcore.c:417: pSendData = (uint8 *)ManufacturerStringDescriptor;
      000B24 75 3D 47         [24]  801 	mov	_pSendData,#_ManufacturerStringDescriptor
      000B27 75 3E 10         [24]  802 	mov	(_pSendData + 1),#(_ManufacturerStringDescriptor >> 8)
      000B2A 75 3F 80         [24]  803 	mov	(_pSendData + 2),#0x80
                                    804 ;	src/usbcore.c:418: SendLength = ManufacturerStringDescriptor[0];
      000B2D 90 10 47         [24]  805 	mov	dptr,#_ManufacturerStringDescriptor
      000B30 E4               [12]  806 	clr	a
      000B31 93               [24]  807 	movc	a,@a+dptr
      000B32 FF               [12]  808 	mov	r7,a
      000B33 8F 40            [24]  809 	mov	_SendLength,r7
      000B35 75 41 00         [24]  810 	mov	(_SendLength + 1),#0x00
                                    811 ;	src/usbcore.c:419: break;
                                    812 ;	src/usbcore.c:420: case 2:         /* Vendor string id is 1  */
      000B38 80 4F            [24]  813 	sjmp	00122$
      000B3A                        814 00119$:
                                    815 ;	src/usbcore.c:422: Prints("product string\n");
      000B3A 90 12 18         [24]  816 	mov	dptr,#___str_13
      000B3D 75 F0 80         [24]  817 	mov	b,#0x80
      000B40 12 07 18         [24]  818 	lcall	_Prints
                                    819 ;	src/usbcore.c:424: pSendData = (uint8 *)ProductStringDescriptor;
      000B43 75 3D A5         [24]  820 	mov	_pSendData,#_ProductStringDescriptor
      000B46 75 3E 10         [24]  821 	mov	(_pSendData + 1),#(_ProductStringDescriptor >> 8)
      000B49 75 3F 80         [24]  822 	mov	(_pSendData + 2),#0x80
                                    823 ;	src/usbcore.c:425: SendLength = ProductStringDescriptor[0];
      000B4C 90 10 A5         [24]  824 	mov	dptr,#_ProductStringDescriptor
      000B4F E4               [12]  825 	clr	a
      000B50 93               [24]  826 	movc	a,@a+dptr
      000B51 FF               [12]  827 	mov	r7,a
      000B52 8F 40            [24]  828 	mov	_SendLength,r7
      000B54 75 41 00         [24]  829 	mov	(_SendLength + 1),#0x00
                                    830 ;	src/usbcore.c:426: break;
                                    831 ;	src/usbcore.c:427: case 3:         /* Vendor string id is 1  */
      000B57 80 30            [24]  832 	sjmp	00122$
      000B59                        833 00120$:
                                    834 ;	src/usbcore.c:429: Prints("serial string\n");
      000B59 90 12 28         [24]  835 	mov	dptr,#___str_14
      000B5C 75 F0 80         [24]  836 	mov	b,#0x80
      000B5F 12 07 18         [24]  837 	lcall	_Prints
                                    838 ;	src/usbcore.c:431: pSendData = (uint8 *)SerialNumberStringDescriptor;
      000B62 75 3D C5         [24]  839 	mov	_pSendData,#_SerialNumberStringDescriptor
      000B65 75 3E 10         [24]  840 	mov	(_pSendData + 1),#(_SerialNumberStringDescriptor >> 8)
      000B68 75 3F 80         [24]  841 	mov	(_pSendData + 2),#0x80
                                    842 ;	src/usbcore.c:432: SendLength = SerialNumberStringDescriptor[0];
      000B6B 90 10 C5         [24]  843 	mov	dptr,#_SerialNumberStringDescriptor
      000B6E E4               [12]  844 	clr	a
      000B6F 93               [24]  845 	movc	a,@a+dptr
      000B70 FF               [12]  846 	mov	r7,a
      000B71 8F 40            [24]  847 	mov	_SendLength,r7
      000B73 75 41 00         [24]  848 	mov	(_SendLength + 1),#0x00
                                    849 ;	src/usbcore.c:433: break;
                                    850 ;	src/usbcore.c:434: default:         /* Vendor string id is 1  */
      000B76 80 11            [24]  851 	sjmp	00122$
      000B78                        852 00121$:
                                    853 ;	src/usbcore.c:436: Prints("unknown string\n");
      000B78 90 12 37         [24]  854 	mov	dptr,#___str_15
      000B7B 75 F0 80         [24]  855 	mov	b,#0x80
      000B7E 12 07 18         [24]  856 	lcall	_Prints
                                    857 ;	src/usbcore.c:438: SendLength = 0;
      000B81 E4               [12]  858 	clr	a
      000B82 F5 40            [12]  859 	mov	_SendLength,a
      000B84 F5 41            [12]  860 	mov	(_SendLength + 1),a
                                    861 ;	src/usbcore.c:439: NeedZeroPacket = 1;
      000B86 75 42 01         [24]  862 	mov	_NeedZeroPacket,#0x01
                                    863 ;	src/usbcore.c:441: }
      000B89                        864 00122$:
                                    865 ;	src/usbcore.c:442: if ((wLength > SendLength) &&
      000B89 C3               [12]  866 	clr	c
      000B8A E5 40            [12]  867 	mov	a,_SendLength
      000B8C 95 3B            [12]  868 	subb	a,_wLength
      000B8E E5 41            [12]  869 	mov	a,(_SendLength + 1)
      000B90 95 3C            [12]  870 	subb	a,(_wLength + 1)
      000B92 50 22            [24]  871 	jnc	00124$
                                    872 ;	src/usbcore.c:443: (SendLength % DeviceDescriptor[7] == 0))
      000B94 90 10 0F         [24]  873 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000B97 E4               [12]  874 	clr	a
      000B98 93               [24]  875 	movc	a,@a+dptr
      000B99 FF               [12]  876 	mov	r7,a
      000B9A 8F 1B            [24]  877 	mov	__moduint_PARM_2,r7
      000B9C 75 1C 00         [24]  878 	mov	(__moduint_PARM_2 + 1),#0x00
      000B9F 85 40 82         [24]  879 	mov	dpl,_SendLength
      000BA2 85 41 83         [24]  880 	mov	dph,(_SendLength + 1)
      000BA5 12 0E D1         [24]  881 	lcall	__moduint
      000BA8 E5 82            [12]  882 	mov	a,dpl
      000BAA 85 83 F0         [24]  883 	mov	b,dph
      000BAD 45 F0            [12]  884 	orl	a,b
      000BAF 70 05            [24]  885 	jnz	00124$
                                    886 ;	src/usbcore.c:444: NeedZeroPacket = 1;
      000BB1 75 42 01         [24]  887 	mov	_NeedZeroPacket,#0x01
      000BB4 80 06            [24]  888 	sjmp	00125$
      000BB6                        889 00124$:
                                    890 ;	src/usbcore.c:446: SendLength = wLength;
      000BB6 85 3B 40         [24]  891 	mov	_SendLength,_wLength
      000BB9 85 3C 41         [24]  892 	mov	(_SendLength + 1),(_wLength + 1)
      000BBC                        893 00125$:
                                    894 ;	src/usbcore.c:447: usb_bus_ep0_send_data(); 
                                    895 ;	src/usbcore.c:448: break;
      000BBC 02 0D EF         [24]  896 	ljmp	_usb_bus_ep0_send_data
                                    897 ;	src/usbcore.c:449: case REPORT_DESCRIPTOR:
      000BBF                        898 00127$:
                                    899 ;	src/usbcore.c:451: Prints("Report descriptor: ");
      000BBF 90 12 47         [24]  900 	mov	dptr,#___str_16
      000BC2 75 F0 80         [24]  901 	mov	b,#0x80
      000BC5 12 07 18         [24]  902 	lcall	_Prints
                                    903 ;	src/usbcore.c:453: pSendData = (uint8 *)ReportDescriptor;
      000BC8 75 3D DB         [24]  904 	mov	_pSendData,#_ReportDescriptor
      000BCB 75 3E 10         [24]  905 	mov	(_pSendData + 1),#(_ReportDescriptor >> 8)
      000BCE 75 3F 80         [24]  906 	mov	(_pSendData + 2),#0x80
                                    907 ;	src/usbcore.c:454: SendLength = sizeof(ReportDescriptor);
      000BD1 75 40 41         [24]  908 	mov	_SendLength,#0x41
      000BD4 75 41 00         [24]  909 	mov	(_SendLength + 1),#0x00
                                    910 ;	src/usbcore.c:455: if ((wLength > SendLength) && (SendLength % DeviceDescriptor[7] == 0))
      000BD7 C3               [12]  911 	clr	c
      000BD8 74 41            [12]  912 	mov	a,#0x41
      000BDA 95 3B            [12]  913 	subb	a,_wLength
      000BDC E4               [12]  914 	clr	a
      000BDD 95 3C            [12]  915 	subb	a,(_wLength + 1)
      000BDF 50 1F            [24]  916 	jnc	00129$
      000BE1 90 10 0F         [24]  917 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000BE4 E4               [12]  918 	clr	a
      000BE5 93               [24]  919 	movc	a,@a+dptr
      000BE6 FF               [12]  920 	mov	r7,a
      000BE7 8F 1B            [24]  921 	mov	__moduint_PARM_2,r7
      000BE9 75 1C 00         [24]  922 	mov	(__moduint_PARM_2 + 1),#0x00
      000BEC 90 00 41         [24]  923 	mov	dptr,#0x0041
      000BEF 12 0E D1         [24]  924 	lcall	__moduint
      000BF2 E5 82            [12]  925 	mov	a,dpl
      000BF4 85 83 F0         [24]  926 	mov	b,dph
      000BF7 45 F0            [12]  927 	orl	a,b
      000BF9 70 05            [24]  928 	jnz	00129$
                                    929 ;	src/usbcore.c:456: NeedZeroPacket = 1;
      000BFB 75 42 01         [24]  930 	mov	_NeedZeroPacket,#0x01
      000BFE 80 03            [24]  931 	sjmp	00130$
      000C00                        932 00129$:
                                    933 ;	src/usbcore.c:458: NeedZeroPacket = 0;
      000C00 75 42 00         [24]  934 	mov	_NeedZeroPacket,#0x00
      000C03                        935 00130$:
                                    936 ;	src/usbcore.c:459: usb_bus_ep0_send_data();
                                    937 ;	src/usbcore.c:460: break;
      000C03 02 0D EF         [24]  938 	ljmp	_usb_bus_ep0_send_data
                                    939 ;	src/usbcore.c:461: default:
      000C06                        940 00132$:
                                    941 ;	src/usbcore.c:463: Prints("other descriptor: ");
      000C06 90 12 5B         [24]  942 	mov	dptr,#___str_17
      000C09 75 F0 80         [24]  943 	mov	b,#0x80
      000C0C 12 07 18         [24]  944 	lcall	_Prints
                                    945 ;	src/usbcore.c:465: print_hex((wValue >> 8) & 0xFF);
      000C0F 85 38 82         [24]  946 	mov	dpl,(_wValue + 1)
      000C12 12 08 0D         [24]  947 	lcall	_print_hex
                                    948 ;	src/usbcore.c:466: Prints("\n");
      000C15 90 12 6E         [24]  949 	mov	dptr,#___str_18
      000C18 75 F0 80         [24]  950 	mov	b,#0x80
                                    951 ;	src/usbcore.c:469: break;
      000C1B 02 07 18         [24]  952 	ljmp	_Prints
                                    953 ;	src/usbcore.c:470: case GET_INTERFACE:
      000C1E                        954 00134$:
                                    955 ;	src/usbcore.c:472: Prints("Get interface\n");
      000C1E 90 12 70         [24]  956 	mov	dptr,#___str_19
      000C21 75 F0 80         [24]  957 	mov	b,#0x80
                                    958 ;	src/usbcore.c:474: break;
      000C24 02 07 18         [24]  959 	ljmp	_Prints
                                    960 ;	src/usbcore.c:475: case GET_STATUS:
      000C27                        961 00135$:
                                    962 ;	src/usbcore.c:477: Prints("Get status\n");
      000C27 90 12 7F         [24]  963 	mov	dptr,#___str_20
      000C2A 75 F0 80         [24]  964 	mov	b,#0x80
                                    965 ;	src/usbcore.c:479: break;
      000C2D 02 07 18         [24]  966 	ljmp	_Prints
                                    967 ;	src/usbcore.c:480: case SYNCH_FRAME:
      000C30                        968 00136$:
                                    969 ;	src/usbcore.c:482: Prints("Synch frame\n");
      000C30 90 12 8B         [24]  970 	mov	dptr,#___str_21
      000C33 75 F0 80         [24]  971 	mov	b,#0x80
                                    972 ;	src/usbcore.c:484: break;
      000C36 02 07 18         [24]  973 	ljmp	_Prints
                                    974 ;	src/usbcore.c:485: default:
      000C39                        975 00137$:
                                    976 ;	src/usbcore.c:487: Prints("Error: undefined stander request\n");
      000C39 90 12 98         [24]  977 	mov	dptr,#___str_22
      000C3C 75 F0 80         [24]  978 	mov	b,#0x80
                                    979 ;	src/usbcore.c:491: break;
      000C3F 02 07 18         [24]  980 	ljmp	_Prints
                                    981 ;	src/usbcore.c:492: case 1:                            /* class request */
      000C42                        982 00139$:
                                    983 ;	src/usbcore.c:494: Prints("USB class input request:\n");
      000C42 90 12 BA         [24]  984 	mov	dptr,#___str_23
      000C45 75 F0 80         [24]  985 	mov	b,#0x80
                                    986 ;	src/usbcore.c:496: break;
      000C48 02 07 18         [24]  987 	ljmp	_Prints
                                    988 ;	src/usbcore.c:497: case 2:
      000C4B                        989 00140$:
                                    990 ;	src/usbcore.c:499: Prints("USB vendor input request:\n");
      000C4B 90 12 D4         [24]  991 	mov	dptr,#___str_24
      000C4E 75 F0 80         [24]  992 	mov	b,#0x80
                                    993 ;	src/usbcore.c:501: break;
      000C51 02 07 18         [24]  994 	ljmp	_Prints
                                    995 ;	src/usbcore.c:502: default:
      000C54                        996 00141$:
                                    997 ;	src/usbcore.c:504: Prints("Error: undefined input request:\n");
      000C54 90 12 EF         [24]  998 	mov	dptr,#___str_25
      000C57 75 F0 80         [24]  999 	mov	b,#0x80
                                   1000 ;	src/usbcore.c:507: }
      000C5A 02 07 18         [24] 1001 	ljmp	_Prints
      000C5D                       1002 00160$:
                                   1003 ;	src/usbcore.c:511: switch ((bmRequestType >> 5) & 0x3) {
      000C5D E5 35            [12] 1004 	mov	a,_bmRequestType
      000C5F C4               [12] 1005 	swap	a
      000C60 03               [12] 1006 	rr	a
      000C61 54 07            [12] 1007 	anl	a,#0x07
      000C63 FF               [12] 1008 	mov	r7,a
      000C64 53 07 03         [24] 1009 	anl	ar7,#0x03
      000C67 7E 00            [12] 1010 	mov	r6,#0x00
      000C69 BF 00 05         [24] 1011 	cjne	r7,#0x00,00324$
      000C6C BE 00 02         [24] 1012 	cjne	r6,#0x00,00324$
      000C6F 80 15            [24] 1013 	sjmp	00143$
      000C71                       1014 00324$:
      000C71 BF 01 06         [24] 1015 	cjne	r7,#0x01,00325$
      000C74 BE 00 03         [24] 1016 	cjne	r6,#0x00,00325$
      000C77 02 0D 2C         [24] 1017 	ljmp	00152$
      000C7A                       1018 00325$:
      000C7A BF 02 06         [24] 1019 	cjne	r7,#0x02,00326$
      000C7D BE 00 03         [24] 1020 	cjne	r6,#0x00,00326$
      000C80 02 0D 58         [24] 1021 	ljmp	00156$
      000C83                       1022 00326$:
      000C83 02 0D 61         [24] 1023 	ljmp	00157$
                                   1024 ;	src/usbcore.c:512: case 0:
      000C86                       1025 00143$:
                                   1026 ;	src/usbcore.c:514: Prints("USB stander output request: ");
      000C86 90 13 10         [24] 1027 	mov	dptr,#___str_26
      000C89 75 F0 80         [24] 1028 	mov	b,#0x80
      000C8C 12 07 18         [24] 1029 	lcall	_Prints
                                   1030 ;	src/usbcore.c:516: switch (bRequest) {
      000C8F 74 01            [12] 1031 	mov	a,#0x01
      000C91 B5 36 02         [24] 1032 	cjne	a,_bRequest,00327$
      000C94 80 23            [24] 1033 	sjmp	00144$
      000C96                       1034 00327$:
      000C96 74 03            [12] 1035 	mov	a,#0x03
      000C98 B5 36 02         [24] 1036 	cjne	a,_bRequest,00328$
      000C9B 80 74            [24] 1037 	sjmp	00148$
      000C9D                       1038 00328$:
      000C9D 74 05            [12] 1039 	mov	a,#0x05
      000C9F B5 36 02         [24] 1040 	cjne	a,_bRequest,00329$
      000CA2 80 1E            [24] 1041 	sjmp	00145$
      000CA4                       1042 00329$:
      000CA4 74 07            [12] 1043 	mov	a,#0x07
      000CA6 B5 36 02         [24] 1044 	cjne	a,_bRequest,00330$
      000CA9 80 5D            [24] 1045 	sjmp	00147$
      000CAB                       1046 00330$:
      000CAB 74 09            [12] 1047 	mov	a,#0x09
      000CAD B5 36 02         [24] 1048 	cjne	a,_bRequest,00331$
      000CB0 80 39            [24] 1049 	sjmp	00146$
      000CB2                       1050 00331$:
      000CB2 74 0B            [12] 1051 	mov	a,#0x0b
                                   1052 ;	src/usbcore.c:517: case CLEAR_FEATURE:
      000CB4 B5 36 6C         [24] 1053 	cjne	a,_bRequest,00150$
      000CB7 80 61            [24] 1054 	sjmp	00149$
      000CB9                       1055 00144$:
                                   1056 ;	src/usbcore.c:519: Prints("clear feature\n");                   
      000CB9 90 13 2D         [24] 1057 	mov	dptr,#___str_27
      000CBC 75 F0 80         [24] 1058 	mov	b,#0x80
                                   1059 ;	src/usbcore.c:521: break;
      000CBF 02 07 18         [24] 1060 	ljmp	_Prints
                                   1061 ;	src/usbcore.c:522: case SET_ADDRESS:
      000CC2                       1062 00145$:
                                   1063 ;	src/usbcore.c:524: Prints("set address, the address is: ");
      000CC2 90 13 3C         [24] 1064 	mov	dptr,#___str_28
      000CC5 75 F0 80         [24] 1065 	mov	b,#0x80
      000CC8 12 07 18         [24] 1066 	lcall	_Prints
                                   1067 ;	src/usbcore.c:525: print_hex(wValue & 0xFF);
      000CCB 85 37 82         [24] 1068 	mov	dpl,_wValue
      000CCE 12 08 0D         [24] 1069 	lcall	_print_hex
                                   1070 ;	src/usbcore.c:526: Prints("\n");                
      000CD1 90 12 6E         [24] 1071 	mov	dptr,#___str_18
      000CD4 75 F0 80         [24] 1072 	mov	b,#0x80
      000CD7 12 07 18         [24] 1073 	lcall	_Prints
                                   1074 ;	src/usbcore.c:528: D12_set_address(wValue & 0xFF);
      000CDA 85 37 82         [24] 1075 	mov	dpl,_wValue
      000CDD 12 06 AC         [24] 1076 	lcall	_D12_set_address
                                   1077 ;	src/usbcore.c:529: SendLength = 0;
      000CE0 E4               [12] 1078 	clr	a
      000CE1 F5 40            [12] 1079 	mov	_SendLength,a
      000CE3 F5 41            [12] 1080 	mov	(_SendLength + 1),a
                                   1081 ;	src/usbcore.c:530: NeedZeroPacket = 1;
      000CE5 75 42 01         [24] 1082 	mov	_NeedZeroPacket,#0x01
                                   1083 ;	src/usbcore.c:531: usb_bus_ep0_send_data();
                                   1084 ;	src/usbcore.c:532: break;
      000CE8 02 0D EF         [24] 1085 	ljmp	_usb_bus_ep0_send_data
                                   1086 ;	src/usbcore.c:533: case SET_CONFIGURATION:
      000CEB                       1087 00146$:
                                   1088 ;	src/usbcore.c:535: Prints("set configuration\n");                   
      000CEB 90 13 5A         [24] 1089 	mov	dptr,#___str_29
      000CEE 75 F0 80         [24] 1090 	mov	b,#0x80
      000CF1 12 07 18         [24] 1091 	lcall	_Prints
                                   1092 ;	src/usbcore.c:537: ConfigValue = wValue & 0xFF;
      000CF4 AF 37            [24] 1093 	mov	r7,_wValue
      000CF6 8F 44            [24] 1094 	mov	_ConfigValue,r7
                                   1095 ;	src/usbcore.c:538: D12_set_endpoint_enable(wValue & 0xFF);
      000CF8 8F 82            [24] 1096 	mov	dpl,r7
      000CFA 12 06 C0         [24] 1097 	lcall	_D12_set_endpoint_enable
                                   1098 ;	src/usbcore.c:540: SendLength = 0;
      000CFD E4               [12] 1099 	clr	a
      000CFE F5 40            [12] 1100 	mov	_SendLength,a
      000D00 F5 41            [12] 1101 	mov	(_SendLength + 1),a
                                   1102 ;	src/usbcore.c:541: NeedZeroPacket = 1;
      000D02 75 42 01         [24] 1103 	mov	_NeedZeroPacket,#0x01
                                   1104 ;	src/usbcore.c:542: usb_bus_ep0_send_data();
                                   1105 ;	src/usbcore.c:543: break;
      000D05 02 0D EF         [24] 1106 	ljmp	_usb_bus_ep0_send_data
                                   1107 ;	src/usbcore.c:544: case SET_DESCRIPTOR:
      000D08                       1108 00147$:
                                   1109 ;	src/usbcore.c:546: Prints("set descriptor\n");                   
      000D08 90 13 6D         [24] 1110 	mov	dptr,#___str_30
      000D0B 75 F0 80         [24] 1111 	mov	b,#0x80
                                   1112 ;	src/usbcore.c:548: break;
      000D0E 02 07 18         [24] 1113 	ljmp	_Prints
                                   1114 ;	src/usbcore.c:549: case SET_FEATURE:
      000D11                       1115 00148$:
                                   1116 ;	src/usbcore.c:551: Prints("set feature\n");                   
      000D11 90 13 7D         [24] 1117 	mov	dptr,#___str_31
      000D14 75 F0 80         [24] 1118 	mov	b,#0x80
                                   1119 ;	src/usbcore.c:553: break;
      000D17 02 07 18         [24] 1120 	ljmp	_Prints
                                   1121 ;	src/usbcore.c:554: case SET_INTERFACE:
      000D1A                       1122 00149$:
                                   1123 ;	src/usbcore.c:556: Prints("set interface\n");                   
      000D1A 90 13 8A         [24] 1124 	mov	dptr,#___str_32
      000D1D 75 F0 80         [24] 1125 	mov	b,#0x80
                                   1126 ;	src/usbcore.c:558: break;
      000D20 02 07 18         [24] 1127 	ljmp	_Prints
                                   1128 ;	src/usbcore.c:559: default:
      000D23                       1129 00150$:
                                   1130 ;	src/usbcore.c:561: Prints("Error: undefined stander request\n");                   
      000D23 90 12 98         [24] 1131 	mov	dptr,#___str_22
      000D26 75 F0 80         [24] 1132 	mov	b,#0x80
                                   1133 ;	src/usbcore.c:565: break;
      000D29 02 07 18         [24] 1134 	ljmp	_Prints
                                   1135 ;	src/usbcore.c:566: case 1:
      000D2C                       1136 00152$:
                                   1137 ;	src/usbcore.c:568: Prints("USB class output request:\n");                   
      000D2C 90 13 99         [24] 1138 	mov	dptr,#___str_33
      000D2F 75 F0 80         [24] 1139 	mov	b,#0x80
      000D32 12 07 18         [24] 1140 	lcall	_Prints
                                   1141 ;	src/usbcore.c:570: switch (bRequest) {
      000D35 74 0A            [12] 1142 	mov	a,#0x0a
      000D37 B5 36 15         [24] 1143 	cjne	a,_bRequest,00154$
                                   1144 ;	src/usbcore.c:573: Prints("set idle\n");
      000D3A 90 13 B4         [24] 1145 	mov	dptr,#___str_34
      000D3D 75 F0 80         [24] 1146 	mov	b,#0x80
      000D40 12 07 18         [24] 1147 	lcall	_Prints
                                   1148 ;	src/usbcore.c:575: SendLength = 1;
      000D43 75 40 01         [24] 1149 	mov	_SendLength,#0x01
      000D46 75 41 00         [24] 1150 	mov	(_SendLength + 1),#0x00
                                   1151 ;	src/usbcore.c:576: NeedZeroPacket = 1;
      000D49 75 42 01         [24] 1152 	mov	_NeedZeroPacket,#0x01
                                   1153 ;	src/usbcore.c:578: usb_bus_ep0_send_data();
                                   1154 ;	src/usbcore.c:579: break;
                                   1155 ;	src/usbcore.c:580: default:
      000D4C 02 0D EF         [24] 1156 	ljmp	_usb_bus_ep0_send_data
      000D4F                       1157 00154$:
                                   1158 ;	src/usbcore.c:582: Prints("unknown request\n");                   
      000D4F 90 13 BE         [24] 1159 	mov	dptr,#___str_35
      000D52 75 F0 80         [24] 1160 	mov	b,#0x80
                                   1161 ;	src/usbcore.c:586: break;
                                   1162 ;	src/usbcore.c:587: case 2:
      000D55 02 07 18         [24] 1163 	ljmp	_Prints
      000D58                       1164 00156$:
                                   1165 ;	src/usbcore.c:589: Prints("USB vendor output request:\n");                   
      000D58 90 13 CF         [24] 1166 	mov	dptr,#___str_36
      000D5B 75 F0 80         [24] 1167 	mov	b,#0x80
                                   1168 ;	src/usbcore.c:591: break;
                                   1169 ;	src/usbcore.c:592: default:
      000D5E 02 07 18         [24] 1170 	ljmp	_Prints
      000D61                       1171 00157$:
                                   1172 ;	src/usbcore.c:594: Prints("Error: undefined output request.\n");                   
      000D61 90 13 EB         [24] 1173 	mov	dptr,#___str_37
      000D64 75 F0 80         [24] 1174 	mov	b,#0x80
                                   1175 ;	src/usbcore.c:597: }
      000D67 02 07 18         [24] 1176 	ljmp	_Prints
      000D6A                       1177 00163$:
                                   1178 ;	src/usbcore.c:600: D12_read_endpoint_buffer(0, 16, buffer);
      000D6A 75 14 45         [24] 1179 	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep0_out_buffer_65536_57
      000D6D 75 15 00         [24] 1180 	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
      000D70 75 16 40         [24] 1181 	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
      000D73 75 13 10         [24] 1182 	mov	_D12_read_endpoint_buffer_PARM_2,#0x10
      000D76 75 82 00         [24] 1183 	mov	dpl,#0x00
      000D79 12 04 D5         [24] 1184 	lcall	_D12_read_endpoint_buffer
                                   1185 ;	src/usbcore.c:601: D12_clear_buffer();
      000D7C 12 05 BC         [24] 1186 	lcall	_D12_clear_buffer
                                   1187 ;	src/usbcore.c:602: dump_hex(buffer, 8);
      000D7F 75 33 08         [24] 1188 	mov	_dump_hex_PARM_2,#0x08
      000D82 75 34 00         [24] 1189 	mov	(_dump_hex_PARM_2 + 1),#0x00
      000D85 90 00 45         [24] 1190 	mov	dptr,#_usb_bus_isr_ep0_out_buffer_65536_57
      000D88 75 F0 40         [24] 1191 	mov	b,#0x40
                                   1192 ;	src/usbcore.c:604: }
      000D8B 02 08 4C         [24] 1193 	ljmp	_dump_hex
                                   1194 ;------------------------------------------------------------
                                   1195 ;Allocation info for local variables in function 'usb_bus_isr_ep0_in'
                                   1196 ;------------------------------------------------------------
                                   1197 ;	src/usbcore.c:606: void usb_bus_isr_ep0_in()
                                   1198 ;	-----------------------------------------
                                   1199 ;	 function usb_bus_isr_ep0_in
                                   1200 ;	-----------------------------------------
      000D8E                       1201 _usb_bus_isr_ep0_in:
                                   1202 ;	src/usbcore.c:609: Prints("usb isr ep0 in\n");
      000D8E 90 14 0D         [24] 1203 	mov	dptr,#___str_38
      000D91 75 F0 80         [24] 1204 	mov	b,#0x80
      000D94 12 07 18         [24] 1205 	lcall	_Prints
                                   1206 ;	src/usbcore.c:611: D12_read_endpoint_last_status(1);
      000D97 75 82 01         [24] 1207 	mov	dpl,#0x01
      000D9A 12 04 C5         [24] 1208 	lcall	_D12_read_endpoint_last_status
                                   1209 ;	src/usbcore.c:612: usb_bus_ep0_send_data();
                                   1210 ;	src/usbcore.c:613: }
      000D9D 02 0D EF         [24] 1211 	ljmp	_usb_bus_ep0_send_data
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'usb_bus_isr_ep1_out'
                                   1214 ;------------------------------------------------------------
                                   1215 ;buf                       Allocated with name '_usb_bus_isr_ep1_out_buf_65536_74'
                                   1216 ;------------------------------------------------------------
                                   1217 ;	src/usbcore.c:615: void usb_bus_isr_ep1_out()
                                   1218 ;	-----------------------------------------
                                   1219 ;	 function usb_bus_isr_ep1_out
                                   1220 ;	-----------------------------------------
      000DA0                       1221 _usb_bus_isr_ep1_out:
                                   1222 ;	src/usbcore.c:619: Prints("usb core ep1 out\n");
      000DA0 90 14 1D         [24] 1223 	mov	dptr,#___str_39
      000DA3 75 F0 80         [24] 1224 	mov	b,#0x80
      000DA6 12 07 18         [24] 1225 	lcall	_Prints
                                   1226 ;	src/usbcore.c:622: D12_read_endpoint_last_status(2);
      000DA9 75 82 02         [24] 1227 	mov	dpl,#0x02
      000DAC 12 04 C5         [24] 1228 	lcall	_D12_read_endpoint_last_status
                                   1229 ;	src/usbcore.c:624: D12_read_endpoint_buffer(2, 1, buf);
      000DAF 75 14 55         [24] 1230 	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep1_out_buf_65536_74
      000DB2 75 15 00         [24] 1231 	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
      000DB5 75 16 40         [24] 1232 	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
      000DB8 75 13 01         [24] 1233 	mov	_D12_read_endpoint_buffer_PARM_2,#0x01
      000DBB 75 82 02         [24] 1234 	mov	dpl,#0x02
      000DBE 12 04 D5         [24] 1235 	lcall	_D12_read_endpoint_buffer
                                   1236 ;	src/usbcore.c:626: D12_clear_buffer();
      000DC1 12 05 BC         [24] 1237 	lcall	_D12_clear_buffer
                                   1238 ;	src/usbcore.c:628: LED = ~buf[0];
      000DC4 E5 55            [12] 1239 	mov	a,_usb_bus_isr_ep1_out_buf_65536_74
      000DC6 F4               [12] 1240 	cpl	a
      000DC7 F5 A0            [12] 1241 	mov	_P2,a
                                   1242 ;	src/usbcore.c:629: }
      000DC9 22               [24] 1243 	ret
                                   1244 ;------------------------------------------------------------
                                   1245 ;Allocation info for local variables in function 'usb_bus_isr_ep1_in'
                                   1246 ;------------------------------------------------------------
                                   1247 ;	src/usbcore.c:631: void usb_bus_isr_ep1_in()
                                   1248 ;	-----------------------------------------
                                   1249 ;	 function usb_bus_isr_ep1_in
                                   1250 ;	-----------------------------------------
      000DCA                       1251 _usb_bus_isr_ep1_in:
                                   1252 ;	src/usbcore.c:634: Prints("usb core ep1 in\n");
      000DCA 90 14 2F         [24] 1253 	mov	dptr,#___str_40
      000DCD 75 F0 80         [24] 1254 	mov	b,#0x80
      000DD0 12 07 18         [24] 1255 	lcall	_Prints
                                   1256 ;	src/usbcore.c:636: D12_read_endpoint_last_status(3);
      000DD3 75 82 03         [24] 1257 	mov	dpl,#0x03
      000DD6 12 04 C5         [24] 1258 	lcall	_D12_read_endpoint_last_status
                                   1259 ;	src/usbcore.c:637: Ep1InIsBusy = 0;
      000DD9 75 43 00         [24] 1260 	mov	_Ep1InIsBusy,#0x00
                                   1261 ;	src/usbcore.c:638: }
      000DDC 22               [24] 1262 	ret
                                   1263 ;------------------------------------------------------------
                                   1264 ;Allocation info for local variables in function 'usb_bus_isr_ep2_out'
                                   1265 ;------------------------------------------------------------
                                   1266 ;	src/usbcore.c:640: void usb_bus_isr_ep2_out()
                                   1267 ;	-----------------------------------------
                                   1268 ;	 function usb_bus_isr_ep2_out
                                   1269 ;	-----------------------------------------
      000DDD                       1270 _usb_bus_isr_ep2_out:
                                   1271 ;	src/usbcore.c:643: Prints("usb core ep2 out\n");
      000DDD 90 14 40         [24] 1272 	mov	dptr,#___str_41
      000DE0 75 F0 80         [24] 1273 	mov	b,#0x80
                                   1274 ;	src/usbcore.c:645: }
      000DE3 02 07 18         [24] 1275 	ljmp	_Prints
                                   1276 ;------------------------------------------------------------
                                   1277 ;Allocation info for local variables in function 'usb_bus_isr_ep2_in'
                                   1278 ;------------------------------------------------------------
                                   1279 ;	src/usbcore.c:647: void usb_bus_isr_ep2_in()
                                   1280 ;	-----------------------------------------
                                   1281 ;	 function usb_bus_isr_ep2_in
                                   1282 ;	-----------------------------------------
      000DE6                       1283 _usb_bus_isr_ep2_in:
                                   1284 ;	src/usbcore.c:650: Prints("usb core ep2 in\n");
      000DE6 90 14 52         [24] 1285 	mov	dptr,#___str_42
      000DE9 75 F0 80         [24] 1286 	mov	b,#0x80
                                   1287 ;	src/usbcore.c:652: }
      000DEC 02 07 18         [24] 1288 	ljmp	_Prints
                                   1289 ;------------------------------------------------------------
                                   1290 ;Allocation info for local variables in function 'usb_bus_ep0_send_data'
                                   1291 ;------------------------------------------------------------
                                   1292 ;	src/usbcore.c:654: void usb_bus_ep0_send_data(void)
                                   1293 ;	-----------------------------------------
                                   1294 ;	 function usb_bus_ep0_send_data
                                   1295 ;	-----------------------------------------
      000DEF                       1296 _usb_bus_ep0_send_data:
                                   1297 ;	src/usbcore.c:656: if (SendLength > DeviceDescriptor[7]) {
      000DEF 90 10 0F         [24] 1298 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000DF2 E4               [12] 1299 	clr	a
      000DF3 93               [24] 1300 	movc	a,@a+dptr
      000DF4 FF               [12] 1301 	mov	r7,a
      000DF5 FD               [12] 1302 	mov	r5,a
      000DF6 7E 00            [12] 1303 	mov	r6,#0x00
      000DF8 C3               [12] 1304 	clr	c
      000DF9 ED               [12] 1305 	mov	a,r5
      000DFA 95 40            [12] 1306 	subb	a,_SendLength
      000DFC EE               [12] 1307 	mov	a,r6
      000DFD 95 41            [12] 1308 	subb	a,(_SendLength + 1)
      000DFF 50 34            [24] 1309 	jnc	00107$
                                   1310 ;	src/usbcore.c:657: D12_write_endpoint_buffer(1, DeviceDescriptor[7], pSendData);
      000E01 8F 17            [24] 1311 	mov	_D12_write_endpoint_buffer_PARM_2,r7
      000E03 85 3D 18         [24] 1312 	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
      000E06 85 3E 19         [24] 1313 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
      000E09 85 3F 1A         [24] 1314 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
      000E0C 75 82 01         [24] 1315 	mov	dpl,#0x01
      000E0F 12 05 E0         [24] 1316 	lcall	_D12_write_endpoint_buffer
                                   1317 ;	src/usbcore.c:658: SendLength -= DeviceDescriptor[7];
      000E12 90 10 0F         [24] 1318 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000E15 E4               [12] 1319 	clr	a
      000E16 93               [24] 1320 	movc	a,@a+dptr
      000E17 FF               [12] 1321 	mov	r7,a
      000E18 FD               [12] 1322 	mov	r5,a
      000E19 7E 00            [12] 1323 	mov	r6,#0x00
      000E1B AB 40            [24] 1324 	mov	r3,_SendLength
      000E1D AC 41            [24] 1325 	mov	r4,(_SendLength + 1)
      000E1F EB               [12] 1326 	mov	a,r3
      000E20 C3               [12] 1327 	clr	c
      000E21 9D               [12] 1328 	subb	a,r5
      000E22 FB               [12] 1329 	mov	r3,a
      000E23 EC               [12] 1330 	mov	a,r4
      000E24 9E               [12] 1331 	subb	a,r6
      000E25 FC               [12] 1332 	mov	r4,a
      000E26 8B 40            [24] 1333 	mov	_SendLength,r3
      000E28 8C 41            [24] 1334 	mov	(_SendLength + 1),r4
                                   1335 ;	src/usbcore.c:659: pSendData += DeviceDescriptor[7];
      000E2A EF               [12] 1336 	mov	a,r7
      000E2B 25 3D            [12] 1337 	add	a,_pSendData
      000E2D F5 3D            [12] 1338 	mov	_pSendData,a
      000E2F E4               [12] 1339 	clr	a
      000E30 35 3E            [12] 1340 	addc	a,(_pSendData + 1)
      000E32 F5 3E            [12] 1341 	mov	(_pSendData + 1),a
      000E34 22               [24] 1342 	ret
      000E35                       1343 00107$:
                                   1344 ;	src/usbcore.c:661: if (SendLength != 0) {
      000E35 E5 40            [12] 1345 	mov	a,_SendLength
      000E37 45 41            [12] 1346 	orl	a,(_SendLength + 1)
      000E39 60 18            [24] 1347 	jz	00104$
                                   1348 ;	src/usbcore.c:662: D12_write_endpoint_buffer(1, SendLength, pSendData);
      000E3B 85 40 17         [24] 1349 	mov	_D12_write_endpoint_buffer_PARM_2,_SendLength
      000E3E 85 3D 18         [24] 1350 	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
      000E41 85 3E 19         [24] 1351 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
      000E44 85 3F 1A         [24] 1352 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
      000E47 75 82 01         [24] 1353 	mov	dpl,#0x01
      000E4A 12 05 E0         [24] 1354 	lcall	_D12_write_endpoint_buffer
                                   1355 ;	src/usbcore.c:663: SendLength = 0;
      000E4D E4               [12] 1356 	clr	a
      000E4E F5 40            [12] 1357 	mov	_SendLength,a
      000E50 F5 41            [12] 1358 	mov	(_SendLength + 1),a
      000E52 22               [24] 1359 	ret
      000E53                       1360 00104$:
                                   1361 ;	src/usbcore.c:665: if (NeedZeroPacket == 1) {
      000E53 74 01            [12] 1362 	mov	a,#0x01
      000E55 B5 42 15         [24] 1363 	cjne	a,_NeedZeroPacket,00109$
                                   1364 ;	src/usbcore.c:666: D12_write_endpoint_buffer(1, 0, pSendData);
      000E58 75 17 00         [24] 1365 	mov	_D12_write_endpoint_buffer_PARM_2,#0x00
      000E5B 85 3D 18         [24] 1366 	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
      000E5E 85 3E 19         [24] 1367 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
      000E61 85 3F 1A         [24] 1368 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
      000E64 75 82 01         [24] 1369 	mov	dpl,#0x01
      000E67 12 05 E0         [24] 1370 	lcall	_D12_write_endpoint_buffer
                                   1371 ;	src/usbcore.c:667: NeedZeroPacket = 0;
      000E6A 75 42 00         [24] 1372 	mov	_NeedZeroPacket,#0x00
      000E6D                       1373 00109$:
                                   1374 ;	src/usbcore.c:671: }
      000E6D 22               [24] 1375 	ret
                                   1376 	.area CSEG    (CODE)
                                   1377 	.area CONST   (CODE)
      001008                       1378 _DeviceDescriptor:
      001008 12                    1379 	.db #0x12	; 18
      001009 01                    1380 	.db #0x01	; 1
      00100A 10                    1381 	.db #0x10	; 16
      00100B 01                    1382 	.db #0x01	; 1
      00100C 00                    1383 	.db #0x00	; 0
      00100D 00                    1384 	.db #0x00	; 0
      00100E 00                    1385 	.db #0x00	; 0
      00100F 10                    1386 	.db #0x10	; 16
      001010 88                    1387 	.db #0x88	; 136
      001011 88                    1388 	.db #0x88	; 136
      001012 02                    1389 	.db #0x02	; 2
      001013 00                    1390 	.db #0x00	; 0
      001014 00                    1391 	.db #0x00	; 0
      001015 01                    1392 	.db #0x01	; 1
      001016 01                    1393 	.db #0x01	; 1
      001017 02                    1394 	.db #0x02	; 2
      001018 03                    1395 	.db #0x03	; 3
      001019 01                    1396 	.db #0x01	; 1
      00101A                       1397 _ConfigurationDescriptor:
      00101A 09                    1398 	.db #0x09	; 9
      00101B 02                    1399 	.db #0x02	; 2
      00101C 29                    1400 	.db #0x29	; 41
      00101D 00                    1401 	.db #0x00	; 0
      00101E 01                    1402 	.db #0x01	; 1
      00101F 01                    1403 	.db #0x01	; 1
      001020 00                    1404 	.db #0x00	; 0
      001021 80                    1405 	.db #0x80	; 128
      001022 32                    1406 	.db #0x32	; 50	'2'
      001023 09                    1407 	.db #0x09	; 9
      001024 04                    1408 	.db #0x04	; 4
      001025 00                    1409 	.db #0x00	; 0
      001026 00                    1410 	.db #0x00	; 0
      001027 02                    1411 	.db #0x02	; 2
      001028 03                    1412 	.db #0x03	; 3
      001029 01                    1413 	.db #0x01	; 1
      00102A 01                    1414 	.db #0x01	; 1
      00102B 00                    1415 	.db #0x00	; 0
      00102C 09                    1416 	.db #0x09	; 9
      00102D 21                    1417 	.db #0x21	; 33
      00102E 10                    1418 	.db #0x10	; 16
      00102F 01                    1419 	.db #0x01	; 1
      001030 21                    1420 	.db #0x21	; 33
      001031 01                    1421 	.db #0x01	; 1
      001032 22                    1422 	.db #0x22	; 34
      001033 41                    1423 	.db #0x41	; 65	'A'
      001034 00                    1424 	.db #0x00	; 0
      001035 07                    1425 	.db #0x07	; 7
      001036 05                    1426 	.db #0x05	; 5
      001037 81                    1427 	.db #0x81	; 129
      001038 03                    1428 	.db #0x03	; 3
      001039 10                    1429 	.db #0x10	; 16
      00103A 00                    1430 	.db #0x00	; 0
      00103B 0A                    1431 	.db #0x0a	; 10
      00103C 07                    1432 	.db #0x07	; 7
      00103D 05                    1433 	.db #0x05	; 5
      00103E 01                    1434 	.db #0x01	; 1
      00103F 03                    1435 	.db #0x03	; 3
      001040 10                    1436 	.db #0x10	; 16
      001041 00                    1437 	.db #0x00	; 0
      001042 0A                    1438 	.db #0x0a	; 10
      001043                       1439 _languageId:
      001043 04                    1440 	.db #0x04	; 4
      001044 03                    1441 	.db #0x03	; 3
      001045 09                    1442 	.db #0x09	; 9
      001046 04                    1443 	.db #0x04	; 4
      001047                       1444 _ManufacturerStringDescriptor:
      001047 5E                    1445 	.db #0x5e	; 94
      001048 03                    1446 	.db #0x03	; 3
      001049 43                    1447 	.db #0x43	; 67	'C'
      00104A 00                    1448 	.db #0x00	; 0
      00104B 6F                    1449 	.db #0x6f	; 111	'o'
      00104C 00                    1450 	.db #0x00	; 0
      00104D 6E                    1451 	.db #0x6e	; 110	'n'
      00104E 00                    1452 	.db #0x00	; 0
      00104F 74                    1453 	.db #0x74	; 116	't'
      001050 00                    1454 	.db #0x00	; 0
      001051 61                    1455 	.db #0x61	; 97	'a'
      001052 00                    1456 	.db #0x00	; 0
      001053 63                    1457 	.db #0x63	; 99	'c'
      001054 00                    1458 	.db #0x00	; 0
      001055 74                    1459 	.db #0x74	; 116	't'
      001056 00                    1460 	.db #0x00	; 0
      001057 20                    1461 	.db #0x20	; 32
      001058 00                    1462 	.db #0x00	; 0
      001059 61                    1463 	.db #0x61	; 97	'a'
      00105A 00                    1464 	.db #0x00	; 0
      00105B 75                    1465 	.db #0x75	; 117	'u'
      00105C 00                    1466 	.db #0x00	; 0
      00105D 74                    1467 	.db #0x74	; 116	't'
      00105E 00                    1468 	.db #0x00	; 0
      00105F 68                    1469 	.db #0x68	; 104	'h'
      001060 00                    1470 	.db #0x00	; 0
      001061 6F                    1471 	.db #0x6f	; 111	'o'
      001062 00                    1472 	.db #0x00	; 0
      001063 72                    1473 	.db #0x72	; 114	'r'
      001064 00                    1474 	.db #0x00	; 0
      001065 20                    1475 	.db #0x20	; 32
      001066 00                    1476 	.db #0x00	; 0
      001067 48                    1477 	.db #0x48	; 72	'H'
      001068 00                    1478 	.db #0x00	; 0
      001069 65                    1479 	.db #0x65	; 101	'e'
      00106A 00                    1480 	.db #0x00	; 0
      00106B 6E                    1481 	.db #0x6e	; 110	'n'
      00106C 00                    1482 	.db #0x00	; 0
      00106D 67                    1483 	.db #0x67	; 103	'g'
      00106E 00                    1484 	.db #0x00	; 0
      00106F 20                    1485 	.db #0x20	; 32
      001070 00                    1486 	.db #0x00	; 0
      001071 56                    1487 	.db #0x56	; 86	'V'
      001072 00                    1488 	.db #0x00	; 0
      001073 69                    1489 	.db #0x69	; 105	'i'
      001074 00                    1490 	.db #0x00	; 0
      001075 61                    1491 	.db #0x61	; 97	'a'
      001076 00                    1492 	.db #0x00	; 0
      001077 20                    1493 	.db #0x20	; 32
      001078 00                    1494 	.db #0x00	; 0
      001079 65                    1495 	.db #0x65	; 101	'e'
      00107A 00                    1496 	.db #0x00	; 0
      00107B 6D                    1497 	.db #0x6d	; 109	'm'
      00107C 00                    1498 	.db #0x00	; 0
      00107D 61                    1499 	.db #0x61	; 97	'a'
      00107E 00                    1500 	.db #0x00	; 0
      00107F 69                    1501 	.db #0x69	; 105	'i'
      001080 00                    1502 	.db #0x00	; 0
      001081 6C                    1503 	.db #0x6c	; 108	'l'
      001082 00                    1504 	.db #0x00	; 0
      001083 20                    1505 	.db #0x20	; 32
      001084 00                    1506 	.db #0x00	; 0
      001085 37                    1507 	.db #0x37	; 55	'7'
      001086 00                    1508 	.db #0x00	; 0
      001087 37                    1509 	.db #0x37	; 55	'7'
      001088 00                    1510 	.db #0x00	; 0
      001089 30                    1511 	.db #0x30	; 48	'0'
      00108A 00                    1512 	.db #0x00	; 0
      00108B 31                    1513 	.db #0x31	; 49	'1'
      00108C 00                    1514 	.db #0x00	; 0
      00108D 37                    1515 	.db #0x37	; 55	'7'
      00108E 00                    1516 	.db #0x00	; 0
      00108F 35                    1517 	.db #0x35	; 53	'5'
      001090 00                    1518 	.db #0x00	; 0
      001091 31                    1519 	.db #0x31	; 49	'1'
      001092 00                    1520 	.db #0x00	; 0
      001093 37                    1521 	.db #0x37	; 55	'7'
      001094 00                    1522 	.db #0x00	; 0
      001095 37                    1523 	.db #0x37	; 55	'7'
      001096 00                    1524 	.db #0x00	; 0
      001097 40                    1525 	.db #0x40	; 64
      001098 00                    1526 	.db #0x00	; 0
      001099 71                    1527 	.db #0x71	; 113	'q'
      00109A 00                    1528 	.db #0x00	; 0
      00109B 71                    1529 	.db #0x71	; 113	'q'
      00109C 00                    1530 	.db #0x00	; 0
      00109D 2E                    1531 	.db #0x2e	; 46
      00109E 00                    1532 	.db #0x00	; 0
      00109F 63                    1533 	.db #0x63	; 99	'c'
      0010A0 00                    1534 	.db #0x00	; 0
      0010A1 6F                    1535 	.db #0x6f	; 111	'o'
      0010A2 00                    1536 	.db #0x00	; 0
      0010A3 6D                    1537 	.db #0x6d	; 109	'm'
      0010A4 00                    1538 	.db #0x00	; 0
      0010A5                       1539 _ProductStringDescriptor:
      0010A5 20                    1540 	.db #0x20	; 32
      0010A6 03                    1541 	.db #0x03	; 3
      0010A7 48                    1542 	.db #0x48	; 72	'H'
      0010A8 00                    1543 	.db #0x00	; 0
      0010A9 65                    1544 	.db #0x65	; 101	'e'
      0010AA 00                    1545 	.db #0x00	; 0
      0010AB 6E                    1546 	.db #0x6e	; 110	'n'
      0010AC 00                    1547 	.db #0x00	; 0
      0010AD 67                    1548 	.db #0x67	; 103	'g'
      0010AE 00                    1549 	.db #0x00	; 0
      0010AF 27                    1550 	.db #0x27	; 39
      0010B0 00                    1551 	.db #0x00	; 0
      0010B1 73                    1552 	.db #0x73	; 115	's'
      0010B2 00                    1553 	.db #0x00	; 0
      0010B3 20                    1554 	.db #0x20	; 32
      0010B4 00                    1555 	.db #0x00	; 0
      0010B5 4B                    1556 	.db #0x4b	; 75	'K'
      0010B6 00                    1557 	.db #0x00	; 0
      0010B7 65                    1558 	.db #0x65	; 101	'e'
      0010B8 00                    1559 	.db #0x00	; 0
      0010B9 79                    1560 	.db #0x79	; 121	'y'
      0010BA 00                    1561 	.db #0x00	; 0
      0010BB 62                    1562 	.db #0x62	; 98	'b'
      0010BC 00                    1563 	.db #0x00	; 0
      0010BD 6F                    1564 	.db #0x6f	; 111	'o'
      0010BE 00                    1565 	.db #0x00	; 0
      0010BF 61                    1566 	.db #0x61	; 97	'a'
      0010C0 00                    1567 	.db #0x00	; 0
      0010C1 72                    1568 	.db #0x72	; 114	'r'
      0010C2 00                    1569 	.db #0x00	; 0
      0010C3 64                    1570 	.db #0x64	; 100	'd'
      0010C4 00                    1571 	.db #0x00	; 0
      0010C5                       1572 _SerialNumberStringDescriptor:
      0010C5 16                    1573 	.db #0x16	; 22
      0010C6 03                    1574 	.db #0x03	; 3
      0010C7 32                    1575 	.db #0x32	; 50	'2'
      0010C8 00                    1576 	.db #0x00	; 0
      0010C9 30                    1577 	.db #0x30	; 48	'0'
      0010CA 00                    1578 	.db #0x00	; 0
      0010CB 32                    1579 	.db #0x32	; 50	'2'
      0010CC 00                    1580 	.db #0x00	; 0
      0010CD 33                    1581 	.db #0x33	; 51	'3'
      0010CE 00                    1582 	.db #0x00	; 0
      0010CF 2D                    1583 	.db #0x2d	; 45
      0010D0 00                    1584 	.db #0x00	; 0
      0010D1 30                    1585 	.db #0x30	; 48	'0'
      0010D2 00                    1586 	.db #0x00	; 0
      0010D3 37                    1587 	.db #0x37	; 55	'7'
      0010D4 00                    1588 	.db #0x00	; 0
      0010D5 2D                    1589 	.db #0x2d	; 45
      0010D6 00                    1590 	.db #0x00	; 0
      0010D7 32                    1591 	.db #0x32	; 50	'2'
      0010D8 00                    1592 	.db #0x00	; 0
      0010D9 33                    1593 	.db #0x33	; 51	'3'
      0010DA 00                    1594 	.db #0x00	; 0
      0010DB                       1595 _ReportDescriptor:
      0010DB 05                    1596 	.db #0x05	; 5
      0010DC 01                    1597 	.db #0x01	; 1
      0010DD 09                    1598 	.db #0x09	; 9
      0010DE 06                    1599 	.db #0x06	; 6
      0010DF A1                    1600 	.db #0xa1	; 161
      0010E0 01                    1601 	.db #0x01	; 1
      0010E1 05                    1602 	.db #0x05	; 5
      0010E2 07                    1603 	.db #0x07	; 7
      0010E3 19                    1604 	.db #0x19	; 25
      0010E4 E0                    1605 	.db #0xe0	; 224
      0010E5 29                    1606 	.db #0x29	; 41
      0010E6 E7                    1607 	.db #0xe7	; 231
      0010E7 15                    1608 	.db #0x15	; 21
      0010E8 00                    1609 	.db #0x00	; 0
      0010E9 25                    1610 	.db #0x25	; 37
      0010EA 01                    1611 	.db #0x01	; 1
      0010EB 95                    1612 	.db #0x95	; 149
      0010EC 08                    1613 	.db #0x08	; 8
      0010ED 75                    1614 	.db #0x75	; 117	'u'
      0010EE 01                    1615 	.db #0x01	; 1
      0010EF 81                    1616 	.db #0x81	; 129
      0010F0 02                    1617 	.db #0x02	; 2
      0010F1 95                    1618 	.db #0x95	; 149
      0010F2 01                    1619 	.db #0x01	; 1
      0010F3 75                    1620 	.db #0x75	; 117	'u'
      0010F4 08                    1621 	.db #0x08	; 8
      0010F5 81                    1622 	.db #0x81	; 129
      0010F6 03                    1623 	.db #0x03	; 3
      0010F7 95                    1624 	.db #0x95	; 149
      0010F8 06                    1625 	.db #0x06	; 6
      0010F9 75                    1626 	.db #0x75	; 117	'u'
      0010FA 08                    1627 	.db #0x08	; 8
      0010FB 15                    1628 	.db #0x15	; 21
      0010FC 00                    1629 	.db #0x00	; 0
      0010FD 25                    1630 	.db #0x25	; 37
      0010FE FF                    1631 	.db #0xff	; 255
      0010FF 05                    1632 	.db #0x05	; 5
      001100 07                    1633 	.db #0x07	; 7
      001101 19                    1634 	.db #0x19	; 25
      001102 00                    1635 	.db #0x00	; 0
      001103 29                    1636 	.db #0x29	; 41
      001104 65                    1637 	.db #0x65	; 101	'e'
      001105 81                    1638 	.db #0x81	; 129
      001106 00                    1639 	.db #0x00	; 0
      001107 25                    1640 	.db #0x25	; 37
      001108 01                    1641 	.db #0x01	; 1
      001109 95                    1642 	.db #0x95	; 149
      00110A 05                    1643 	.db #0x05	; 5
      00110B 75                    1644 	.db #0x75	; 117	'u'
      00110C 01                    1645 	.db #0x01	; 1
      00110D 05                    1646 	.db #0x05	; 5
      00110E 08                    1647 	.db #0x08	; 8
      00110F 19                    1648 	.db #0x19	; 25
      001110 01                    1649 	.db #0x01	; 1
      001111 29                    1650 	.db #0x29	; 41
      001112 05                    1651 	.db #0x05	; 5
      001113 91                    1652 	.db #0x91	; 145
      001114 02                    1653 	.db #0x02	; 2
      001115 95                    1654 	.db #0x95	; 149
      001116 01                    1655 	.db #0x01	; 1
      001117 75                    1656 	.db #0x75	; 117	'u'
      001118 03                    1657 	.db #0x03	; 3
      001119 91                    1658 	.db #0x91	; 145
      00111A 03                    1659 	.db #0x03	; 3
      00111B C0                    1660 	.db #0xc0	; 192
                                   1661 	.area CONST   (CODE)
      00111C                       1662 ___str_0:
      00111C 75 73 62 20 64 69 73  1663 	.ascii "usb disconnect"
             63 6F 6E 6E 65 63 74
      00112A 0A                    1664 	.db 0x0a
      00112B 00                    1665 	.db 0x00
                                   1666 	.area CSEG    (CODE)
                                   1667 	.area CONST   (CODE)
      00112C                       1668 ___str_1:
      00112C 75 73 62 20 63 6F 6E  1669 	.ascii "usb connect"
             6E 65 63 74
      001137 0A                    1670 	.db 0x0a
      001138 00                    1671 	.db 0x00
                                   1672 	.area CSEG    (CODE)
                                   1673 	.area CONST   (CODE)
      001139                       1674 ___str_2:
      001139 75 73 62 20 63 6F 72  1675 	.ascii "usb core isr suspend"
             65 20 69 73 72 20 73
             75 73 70 65 6E 64
      00114D 0A                    1676 	.db 0x0a
      00114E 00                    1677 	.db 0x00
                                   1678 	.area CSEG    (CODE)
                                   1679 	.area CONST   (CODE)
      00114F                       1680 ___str_3:
      00114F 75 73 62 20 63 6F 72  1681 	.ascii "usb core isr reset"
             65 20 69 73 72 20 72
             65 73 65 74
      001161 0A                    1682 	.db 0x0a
      001162 00                    1683 	.db 0x00
                                   1684 	.area CSEG    (CODE)
                                   1685 	.area CONST   (CODE)
      001163                       1686 ___str_4:
      001163 75 73 62 20 69 73 72  1687 	.ascii "usb isr ep0 out"
             20 65 70 30 20 6F 75
             74
      001172 0A                    1688 	.db 0x0a
      001173 00                    1689 	.db 0x00
                                   1690 	.area CSEG    (CODE)
                                   1691 	.area CONST   (CODE)
      001174                       1692 ___str_5:
      001174 55 53 42 20 73 74 61  1693 	.ascii "USB stand input request: "
             6E 64 20 69 6E 70 75
             74 20 72 65 71 75 65
             73 74 3A 20
      00118D 00                    1694 	.db 0x00
                                   1695 	.area CSEG    (CODE)
                                   1696 	.area CONST   (CODE)
      00118E                       1697 ___str_6:
      00118E 47 65 74 20 63 6F 6E  1698 	.ascii "Get configuration"
             66 69 67 75 72 61 74
             69 6F 6E
      00119F 0A                    1699 	.db 0x0a
      0011A0 00                    1700 	.db 0x00
                                   1701 	.area CSEG    (CODE)
                                   1702 	.area CONST   (CODE)
      0011A1                       1703 ___str_7:
      0011A1 47 65 74 20 64 65 73  1704 	.ascii "Get descriptor -- "
             63 72 69 70 74 6F 72
             20 2D 2D 20
      0011B3 00                    1705 	.db 0x00
                                   1706 	.area CSEG    (CODE)
                                   1707 	.area CONST   (CODE)
      0011B4                       1708 ___str_8:
      0011B4 64 65 76 69 63 65 20  1709 	.ascii "device descriptor"
             64 65 73 63 72 69 70
             74 6F 72
      0011C5 0A                    1710 	.db 0x0a
      0011C6 00                    1711 	.db 0x00
                                   1712 	.area CSEG    (CODE)
                                   1713 	.area CONST   (CODE)
      0011C7                       1714 ___str_9:
      0011C7 63 6F 6E 66 69 67 75  1715 	.ascii "configuration descriptor"
             72 61 74 69 6F 6E 20
             64 65 73 63 72 69 70
             74 6F 72
      0011DF 0A                    1716 	.db 0x0a
      0011E0 00                    1717 	.db 0x00
                                   1718 	.area CSEG    (CODE)
                                   1719 	.area CONST   (CODE)
      0011E1                       1720 ___str_10:
      0011E1 73 74 72 69 6E 67 20  1721 	.ascii "string descriptor -- "
             64 65 73 63 72 69 70
             74 6F 72 20 2D 2D 20
      0011F6 00                    1722 	.db 0x00
                                   1723 	.area CSEG    (CODE)
                                   1724 	.area CONST   (CODE)
      0011F7                       1725 ___str_11:
      0011F7 6C 61 6E 67 75 61 67  1726 	.ascii "language ID"
             65 20 49 44
      001202 0A                    1727 	.db 0x0a
      001203 00                    1728 	.db 0x00
                                   1729 	.area CSEG    (CODE)
                                   1730 	.area CONST   (CODE)
      001204                       1731 ___str_12:
      001204 6D 61 6E 75 66 61 63  1732 	.ascii "manufacture string"
             74 75 72 65 20 73 74
             72 69 6E 67
      001216 0A                    1733 	.db 0x0a
      001217 00                    1734 	.db 0x00
                                   1735 	.area CSEG    (CODE)
                                   1736 	.area CONST   (CODE)
      001218                       1737 ___str_13:
      001218 70 72 6F 64 75 63 74  1738 	.ascii "product string"
             20 73 74 72 69 6E 67
      001226 0A                    1739 	.db 0x0a
      001227 00                    1740 	.db 0x00
                                   1741 	.area CSEG    (CODE)
                                   1742 	.area CONST   (CODE)
      001228                       1743 ___str_14:
      001228 73 65 72 69 61 6C 20  1744 	.ascii "serial string"
             73 74 72 69 6E 67
      001235 0A                    1745 	.db 0x0a
      001236 00                    1746 	.db 0x00
                                   1747 	.area CSEG    (CODE)
                                   1748 	.area CONST   (CODE)
      001237                       1749 ___str_15:
      001237 75 6E 6B 6E 6F 77 6E  1750 	.ascii "unknown string"
             20 73 74 72 69 6E 67
      001245 0A                    1751 	.db 0x0a
      001246 00                    1752 	.db 0x00
                                   1753 	.area CSEG    (CODE)
                                   1754 	.area CONST   (CODE)
      001247                       1755 ___str_16:
      001247 52 65 70 6F 72 74 20  1756 	.ascii "Report descriptor: "
             64 65 73 63 72 69 70
             74 6F 72 3A 20
      00125A 00                    1757 	.db 0x00
                                   1758 	.area CSEG    (CODE)
                                   1759 	.area CONST   (CODE)
      00125B                       1760 ___str_17:
      00125B 6F 74 68 65 72 20 64  1761 	.ascii "other descriptor: "
             65 73 63 72 69 70 74
             6F 72 3A 20
      00126D 00                    1762 	.db 0x00
                                   1763 	.area CSEG    (CODE)
                                   1764 	.area CONST   (CODE)
      00126E                       1765 ___str_18:
      00126E 0A                    1766 	.db 0x0a
      00126F 00                    1767 	.db 0x00
                                   1768 	.area CSEG    (CODE)
                                   1769 	.area CONST   (CODE)
      001270                       1770 ___str_19:
      001270 47 65 74 20 69 6E 74  1771 	.ascii "Get interface"
             65 72 66 61 63 65
      00127D 0A                    1772 	.db 0x0a
      00127E 00                    1773 	.db 0x00
                                   1774 	.area CSEG    (CODE)
                                   1775 	.area CONST   (CODE)
      00127F                       1776 ___str_20:
      00127F 47 65 74 20 73 74 61  1777 	.ascii "Get status"
             74 75 73
      001289 0A                    1778 	.db 0x0a
      00128A 00                    1779 	.db 0x00
                                   1780 	.area CSEG    (CODE)
                                   1781 	.area CONST   (CODE)
      00128B                       1782 ___str_21:
      00128B 53 79 6E 63 68 20 66  1783 	.ascii "Synch frame"
             72 61 6D 65
      001296 0A                    1784 	.db 0x0a
      001297 00                    1785 	.db 0x00
                                   1786 	.area CSEG    (CODE)
                                   1787 	.area CONST   (CODE)
      001298                       1788 ___str_22:
      001298 45 72 72 6F 72 3A 20  1789 	.ascii "Error: undefined stander request"
             75 6E 64 65 66 69 6E
             65 64 20 73 74 61 6E
             64 65 72 20 72 65 71
             75 65 73 74
      0012B8 0A                    1790 	.db 0x0a
      0012B9 00                    1791 	.db 0x00
                                   1792 	.area CSEG    (CODE)
                                   1793 	.area CONST   (CODE)
      0012BA                       1794 ___str_23:
      0012BA 55 53 42 20 63 6C 61  1795 	.ascii "USB class input request:"
             73 73 20 69 6E 70 75
             74 20 72 65 71 75 65
             73 74 3A
      0012D2 0A                    1796 	.db 0x0a
      0012D3 00                    1797 	.db 0x00
                                   1798 	.area CSEG    (CODE)
                                   1799 	.area CONST   (CODE)
      0012D4                       1800 ___str_24:
      0012D4 55 53 42 20 76 65 6E  1801 	.ascii "USB vendor input request:"
             64 6F 72 20 69 6E 70
             75 74 20 72 65 71 75
             65 73 74 3A
      0012ED 0A                    1802 	.db 0x0a
      0012EE 00                    1803 	.db 0x00
                                   1804 	.area CSEG    (CODE)
                                   1805 	.area CONST   (CODE)
      0012EF                       1806 ___str_25:
      0012EF 45 72 72 6F 72 3A 20  1807 	.ascii "Error: undefined input request:"
             75 6E 64 65 66 69 6E
             65 64 20 69 6E 70 75
             74 20 72 65 71 75 65
             73 74 3A
      00130E 0A                    1808 	.db 0x0a
      00130F 00                    1809 	.db 0x00
                                   1810 	.area CSEG    (CODE)
                                   1811 	.area CONST   (CODE)
      001310                       1812 ___str_26:
      001310 55 53 42 20 73 74 61  1813 	.ascii "USB stander output request: "
             6E 64 65 72 20 6F 75
             74 70 75 74 20 72 65
             71 75 65 73 74 3A 20
      00132C 00                    1814 	.db 0x00
                                   1815 	.area CSEG    (CODE)
                                   1816 	.area CONST   (CODE)
      00132D                       1817 ___str_27:
      00132D 63 6C 65 61 72 20 66  1818 	.ascii "clear feature"
             65 61 74 75 72 65
      00133A 0A                    1819 	.db 0x0a
      00133B 00                    1820 	.db 0x00
                                   1821 	.area CSEG    (CODE)
                                   1822 	.area CONST   (CODE)
      00133C                       1823 ___str_28:
      00133C 73 65 74 20 61 64 64  1824 	.ascii "set address, the address is: "
             72 65 73 73 2C 20 74
             68 65 20 61 64 64 72
             65 73 73 20 69 73 3A
             20
      001359 00                    1825 	.db 0x00
                                   1826 	.area CSEG    (CODE)
                                   1827 	.area CONST   (CODE)
      00135A                       1828 ___str_29:
      00135A 73 65 74 20 63 6F 6E  1829 	.ascii "set configuration"
             66 69 67 75 72 61 74
             69 6F 6E
      00136B 0A                    1830 	.db 0x0a
      00136C 00                    1831 	.db 0x00
                                   1832 	.area CSEG    (CODE)
                                   1833 	.area CONST   (CODE)
      00136D                       1834 ___str_30:
      00136D 73 65 74 20 64 65 73  1835 	.ascii "set descriptor"
             63 72 69 70 74 6F 72
      00137B 0A                    1836 	.db 0x0a
      00137C 00                    1837 	.db 0x00
                                   1838 	.area CSEG    (CODE)
                                   1839 	.area CONST   (CODE)
      00137D                       1840 ___str_31:
      00137D 73 65 74 20 66 65 61  1841 	.ascii "set feature"
             74 75 72 65
      001388 0A                    1842 	.db 0x0a
      001389 00                    1843 	.db 0x00
                                   1844 	.area CSEG    (CODE)
                                   1845 	.area CONST   (CODE)
      00138A                       1846 ___str_32:
      00138A 73 65 74 20 69 6E 74  1847 	.ascii "set interface"
             65 72 66 61 63 65
      001397 0A                    1848 	.db 0x0a
      001398 00                    1849 	.db 0x00
                                   1850 	.area CSEG    (CODE)
                                   1851 	.area CONST   (CODE)
      001399                       1852 ___str_33:
      001399 55 53 42 20 63 6C 61  1853 	.ascii "USB class output request:"
             73 73 20 6F 75 74 70
             75 74 20 72 65 71 75
             65 73 74 3A
      0013B2 0A                    1854 	.db 0x0a
      0013B3 00                    1855 	.db 0x00
                                   1856 	.area CSEG    (CODE)
                                   1857 	.area CONST   (CODE)
      0013B4                       1858 ___str_34:
      0013B4 73 65 74 20 69 64 6C  1859 	.ascii "set idle"
             65
      0013BC 0A                    1860 	.db 0x0a
      0013BD 00                    1861 	.db 0x00
                                   1862 	.area CSEG    (CODE)
                                   1863 	.area CONST   (CODE)
      0013BE                       1864 ___str_35:
      0013BE 75 6E 6B 6E 6F 77 6E  1865 	.ascii "unknown request"
             20 72 65 71 75 65 73
             74
      0013CD 0A                    1866 	.db 0x0a
      0013CE 00                    1867 	.db 0x00
                                   1868 	.area CSEG    (CODE)
                                   1869 	.area CONST   (CODE)
      0013CF                       1870 ___str_36:
      0013CF 55 53 42 20 76 65 6E  1871 	.ascii "USB vendor output request:"
             64 6F 72 20 6F 75 74
             70 75 74 20 72 65 71
             75 65 73 74 3A
      0013E9 0A                    1872 	.db 0x0a
      0013EA 00                    1873 	.db 0x00
                                   1874 	.area CSEG    (CODE)
                                   1875 	.area CONST   (CODE)
      0013EB                       1876 ___str_37:
      0013EB 45 72 72 6F 72 3A 20  1877 	.ascii "Error: undefined output request."
             75 6E 64 65 66 69 6E
             65 64 20 6F 75 74 70
             75 74 20 72 65 71 75
             65 73 74 2E
      00140B 0A                    1878 	.db 0x0a
      00140C 00                    1879 	.db 0x00
                                   1880 	.area CSEG    (CODE)
                                   1881 	.area CONST   (CODE)
      00140D                       1882 ___str_38:
      00140D 75 73 62 20 69 73 72  1883 	.ascii "usb isr ep0 in"
             20 65 70 30 20 69 6E
      00141B 0A                    1884 	.db 0x0a
      00141C 00                    1885 	.db 0x00
                                   1886 	.area CSEG    (CODE)
                                   1887 	.area CONST   (CODE)
      00141D                       1888 ___str_39:
      00141D 75 73 62 20 63 6F 72  1889 	.ascii "usb core ep1 out"
             65 20 65 70 31 20 6F
             75 74
      00142D 0A                    1890 	.db 0x0a
      00142E 00                    1891 	.db 0x00
                                   1892 	.area CSEG    (CODE)
                                   1893 	.area CONST   (CODE)
      00142F                       1894 ___str_40:
      00142F 75 73 62 20 63 6F 72  1895 	.ascii "usb core ep1 in"
             65 20 65 70 31 20 69
             6E
      00143E 0A                    1896 	.db 0x0a
      00143F 00                    1897 	.db 0x00
                                   1898 	.area CSEG    (CODE)
                                   1899 	.area CONST   (CODE)
      001440                       1900 ___str_41:
      001440 75 73 62 20 63 6F 72  1901 	.ascii "usb core ep2 out"
             65 20 65 70 32 20 6F
             75 74
      001450 0A                    1902 	.db 0x0a
      001451 00                    1903 	.db 0x00
                                   1904 	.area CSEG    (CODE)
                                   1905 	.area CONST   (CODE)
      001452                       1906 ___str_42:
      001452 75 73 62 20 63 6F 72  1907 	.ascii "usb core ep2 in"
             65 20 65 70 32 20 69
             6E
      001461 0A                    1908 	.db 0x0a
      001462 00                    1909 	.db 0x00
                                   1910 	.area CSEG    (CODE)
                                   1911 	.area XINIT   (CODE)
                                   1912 	.area CABS    (ABS,CODE)
