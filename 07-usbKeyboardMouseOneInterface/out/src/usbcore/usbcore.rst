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
      000055                        333 	.ds 2
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
                                    395 ;	src/usbcore.c:362: void usb_disconnect(void)
                                    396 ;	-----------------------------------------
                                    397 ;	 function usb_disconnect
                                    398 ;	-----------------------------------------
      000920                        399 _usb_disconnect:
                           000007   400 	ar7 = 0x07
                           000006   401 	ar6 = 0x06
                           000005   402 	ar5 = 0x05
                           000004   403 	ar4 = 0x04
                           000003   404 	ar3 = 0x03
                           000002   405 	ar2 = 0x02
                           000001   406 	ar1 = 0x01
                           000000   407 	ar0 = 0x00
                                    408 ;	src/usbcore.c:365: Prints("usb disconnect\n");
      000920 90 11 CE         [24]  409 	mov	dptr,#___str_0
      000923 75 F0 80         [24]  410 	mov	b,#0x80
      000926 12 07 77         [24]  411 	lcall	_Prints
                                    412 ;	src/usbcore.c:367: D12_write_command(D12_SET_MODE);    /* set mode */
      000929 75 82 F3         [24]  413 	mov	dpl,#0xf3
      00092C 12 04 D7         [24]  414 	lcall	_D12_write_command
                                    415 ;	src/usbcore.c:368: D12_write_byte(0x06);               /* byte1, pull-up R disconnect, indicate usb disconnet */
      00092F 75 82 06         [24]  416 	mov	dpl,#0x06
      000932 12 05 16         [24]  417 	lcall	_D12_write_byte
                                    418 ;	src/usbcore.c:369: D12_write_byte(0x47);               /* byte2 */
      000935 75 82 47         [24]  419 	mov	dpl,#0x47
      000938 12 05 16         [24]  420 	lcall	_D12_write_byte
                                    421 ;	src/usbcore.c:370: delay_ms(1000);
      00093B 90 03 E8         [24]  422 	mov	dptr,#0x03e8
                                    423 ;	src/usbcore.c:371: }
      00093E 02 00 90         [24]  424 	ljmp	_delay_ms
                                    425 ;------------------------------------------------------------
                                    426 ;Allocation info for local variables in function 'usb_connect'
                                    427 ;------------------------------------------------------------
                                    428 ;	src/usbcore.c:373: void usb_connect(void)
                                    429 ;	-----------------------------------------
                                    430 ;	 function usb_connect
                                    431 ;	-----------------------------------------
      000941                        432 _usb_connect:
                                    433 ;	src/usbcore.c:376: Prints("usb connect\n");
      000941 90 11 DE         [24]  434 	mov	dptr,#___str_1
      000944 75 F0 80         [24]  435 	mov	b,#0x80
      000947 12 07 77         [24]  436 	lcall	_Prints
                                    437 ;	src/usbcore.c:378: D12_write_command(D12_SET_MODE);    /* set mode */
      00094A 75 82 F3         [24]  438 	mov	dpl,#0xf3
      00094D 12 04 D7         [24]  439 	lcall	_D12_write_command
                                    440 ;	src/usbcore.c:379: D12_write_byte(0x16);               /* byte1, pull-up R connect, indicate usb connet */
      000950 75 82 16         [24]  441 	mov	dpl,#0x16
      000953 12 05 16         [24]  442 	lcall	_D12_write_byte
                                    443 ;	src/usbcore.c:380: D12_write_byte(0x47);               /* byte2 */
      000956 75 82 47         [24]  444 	mov	dpl,#0x47
                                    445 ;	src/usbcore.c:381: }
      000959 02 05 16         [24]  446 	ljmp	_D12_write_byte
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function 'usb_bus_isr_suspend'
                                    449 ;------------------------------------------------------------
                                    450 ;	src/usbcore.c:383: void usb_bus_isr_suspend()
                                    451 ;	-----------------------------------------
                                    452 ;	 function usb_bus_isr_suspend
                                    453 ;	-----------------------------------------
      00095C                        454 _usb_bus_isr_suspend:
                                    455 ;	src/usbcore.c:386: Prints("usb core isr suspend\n");
      00095C 90 11 EB         [24]  456 	mov	dptr,#___str_2
      00095F 75 F0 80         [24]  457 	mov	b,#0x80
                                    458 ;	src/usbcore.c:388: }
      000962 02 07 77         [24]  459 	ljmp	_Prints
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'usb_bus_isr_reset'
                                    462 ;------------------------------------------------------------
                                    463 ;	src/usbcore.c:390: void usb_bus_isr_reset()
                                    464 ;	-----------------------------------------
                                    465 ;	 function usb_bus_isr_reset
                                    466 ;	-----------------------------------------
      000965                        467 _usb_bus_isr_reset:
                                    468 ;	src/usbcore.c:393: Prints("usb core isr reset\n");
      000965 90 12 01         [24]  469 	mov	dptr,#___str_3
      000968 75 F0 80         [24]  470 	mov	b,#0x80
      00096B 12 07 77         [24]  471 	lcall	_Prints
                                    472 ;	src/usbcore.c:395: Ep1InIsBusy = 0;
      00096E 75 43 00         [24]  473 	mov	_Ep1InIsBusy,#0x00
                                    474 ;	src/usbcore.c:396: }
      000971 22               [24]  475 	ret
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'usb_bus_isr_ep0_out'
                                    478 ;------------------------------------------------------------
                                    479 ;buffer                    Allocated with name '_usb_bus_isr_ep0_out_buffer_65536_57'
                                    480 ;------------------------------------------------------------
                                    481 ;	src/usbcore.c:409: void usb_bus_isr_ep0_out()
                                    482 ;	-----------------------------------------
                                    483 ;	 function usb_bus_isr_ep0_out
                                    484 ;	-----------------------------------------
      000972                        485 _usb_bus_isr_ep0_out:
                                    486 ;	src/usbcore.c:413: Prints("usb isr ep0 out\n");
      000972 90 12 15         [24]  487 	mov	dptr,#___str_4
      000975 75 F0 80         [24]  488 	mov	b,#0x80
      000978 12 07 77         [24]  489 	lcall	_Prints
                                    490 ;	src/usbcore.c:415: memset(buffer, 0, sizeof(buffer));
      00097B 75 1C 00         [24]  491 	mov	_memset_PARM_2,#0x00
      00097E 75 1D 10         [24]  492 	mov	_memset_PARM_3,#0x10
      000981 75 1E 00         [24]  493 	mov	(_memset_PARM_3 + 1),#0x00
      000984 90 00 45         [24]  494 	mov	dptr,#_usb_bus_isr_ep0_out_buffer_65536_57
      000987 75 F0 40         [24]  495 	mov	b,#0x40
      00098A 12 0E FB         [24]  496 	lcall	_memset
                                    497 ;	src/usbcore.c:418: if (D12_read_endpoint_last_status(0) & 0x20) {
      00098D 75 82 00         [24]  498 	mov	dpl,#0x00
      000990 12 05 24         [24]  499 	lcall	_D12_read_endpoint_last_status
      000993 E5 82            [12]  500 	mov	a,dpl
      000995 20 E5 03         [24]  501 	jb	acc.5,00299$
      000998 02 0D C9         [24]  502 	ljmp	00163$
      00099B                        503 00299$:
                                    504 ;	src/usbcore.c:419: D12_read_endpoint_buffer(0, 16, buffer);
      00099B 75 15 45         [24]  505 	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep0_out_buffer_65536_57
      00099E 75 16 00         [24]  506 	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
      0009A1 75 17 40         [24]  507 	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
      0009A4 75 14 10         [24]  508 	mov	_D12_read_endpoint_buffer_PARM_2,#0x10
      0009A7 75 82 00         [24]  509 	mov	dpl,#0x00
      0009AA 12 05 34         [24]  510 	lcall	_D12_read_endpoint_buffer
                                    511 ;	src/usbcore.c:420: D12_Acknowlwdge_setup();
      0009AD 12 06 21         [24]  512 	lcall	_D12_Acknowlwdge_setup
                                    513 ;	src/usbcore.c:421: D12_clear_buffer();
      0009B0 12 06 1B         [24]  514 	lcall	_D12_clear_buffer
                                    515 ;	src/usbcore.c:423: bmRequestType = buffer[0];
      0009B3 85 45 35         [24]  516 	mov	_bmRequestType,_usb_bus_isr_ep0_out_buffer_65536_57
                                    517 ;	src/usbcore.c:424: bRequest = buffer[1];
      0009B6 85 46 36         [24]  518 	mov	_bRequest,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0001)
                                    519 ;	src/usbcore.c:425: wValue = buffer[2] | (((uint16)buffer[3]) << 8);
      0009B9 AF 48            [24]  520 	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0003)
      0009BB 7E 00            [12]  521 	mov	r6,#0x00
      0009BD AC 47            [24]  522 	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0002)
      0009BF 7D 00            [12]  523 	mov	r5,#0x00
      0009C1 EE               [12]  524 	mov	a,r6
      0009C2 4C               [12]  525 	orl	a,r4
      0009C3 F5 37            [12]  526 	mov	_wValue,a
      0009C5 EF               [12]  527 	mov	a,r7
      0009C6 4D               [12]  528 	orl	a,r5
      0009C7 F5 38            [12]  529 	mov	(_wValue + 1),a
                                    530 ;	src/usbcore.c:426: wIndex = buffer[4] | (((uint16)buffer[5]) << 8);
      0009C9 AF 4A            [24]  531 	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0005)
      0009CB 7E 00            [12]  532 	mov	r6,#0x00
      0009CD AC 49            [24]  533 	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0004)
      0009CF 7D 00            [12]  534 	mov	r5,#0x00
      0009D1 EE               [12]  535 	mov	a,r6
      0009D2 4C               [12]  536 	orl	a,r4
      0009D3 F5 39            [12]  537 	mov	_wIndex,a
      0009D5 EF               [12]  538 	mov	a,r7
      0009D6 4D               [12]  539 	orl	a,r5
      0009D7 F5 3A            [12]  540 	mov	(_wIndex + 1),a
                                    541 ;	src/usbcore.c:427: wLength = buffer[6] | (((uint16)buffer[7]) << 8);
      0009D9 AF 4C            [24]  542 	mov	r7,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0007)
      0009DB 7E 00            [12]  543 	mov	r6,#0x00
      0009DD AC 4B            [24]  544 	mov	r4,(_usb_bus_isr_ep0_out_buffer_65536_57 + 0x0006)
      0009DF 7D 00            [12]  545 	mov	r5,#0x00
      0009E1 EE               [12]  546 	mov	a,r6
      0009E2 4C               [12]  547 	orl	a,r4
      0009E3 F5 3B            [12]  548 	mov	_wLength,a
      0009E5 EF               [12]  549 	mov	a,r7
      0009E6 4D               [12]  550 	orl	a,r5
      0009E7 F5 3C            [12]  551 	mov	(_wLength + 1),a
                                    552 ;	src/usbcore.c:429: if ((bmRequestType & 0x80) == 0x80) {   /* input request */
      0009E9 AE 35            [24]  553 	mov	r6,_bmRequestType
      0009EB 53 06 80         [24]  554 	anl	ar6,#0x80
      0009EE 7F 00            [12]  555 	mov	r7,#0x00
      0009F0 BE 80 05         [24]  556 	cjne	r6,#0x80,00300$
      0009F3 BF 00 02         [24]  557 	cjne	r7,#0x00,00300$
      0009F6 80 03            [24]  558 	sjmp	00301$
      0009F8                        559 00300$:
      0009F8 02 0C BC         [24]  560 	ljmp	00160$
      0009FB                        561 00301$:
                                    562 ;	src/usbcore.c:432: switch ((bmRequestType >> 5) & 0x3) {
      0009FB E5 35            [12]  563 	mov	a,_bmRequestType
      0009FD C4               [12]  564 	swap	a
      0009FE 03               [12]  565 	rr	a
      0009FF 54 07            [12]  566 	anl	a,#0x07
      000A01 FF               [12]  567 	mov	r7,a
      000A02 53 07 03         [24]  568 	anl	ar7,#0x03
      000A05 7E 00            [12]  569 	mov	r6,#0x00
      000A07 BF 00 05         [24]  570 	cjne	r7,#0x00,00302$
      000A0A BE 00 02         [24]  571 	cjne	r6,#0x00,00302$
      000A0D 80 15            [24]  572 	sjmp	00101$
      000A0F                        573 00302$:
      000A0F BF 01 06         [24]  574 	cjne	r7,#0x01,00303$
      000A12 BE 00 03         [24]  575 	cjne	r6,#0x00,00303$
      000A15 02 0C A1         [24]  576 	ljmp	00139$
      000A18                        577 00303$:
      000A18 BF 02 06         [24]  578 	cjne	r7,#0x02,00304$
      000A1B BE 00 03         [24]  579 	cjne	r6,#0x00,00304$
      000A1E 02 0C AA         [24]  580 	ljmp	00140$
      000A21                        581 00304$:
      000A21 02 0C B3         [24]  582 	ljmp	00141$
                                    583 ;	src/usbcore.c:433: case 0:                             /* stander request */
      000A24                        584 00101$:
                                    585 ;	src/usbcore.c:435: Prints("USB stand input request: ");
      000A24 90 12 26         [24]  586 	mov	dptr,#___str_5
      000A27 75 F0 80         [24]  587 	mov	b,#0x80
      000A2A 12 07 77         [24]  588 	lcall	_Prints
                                    589 ;	src/usbcore.c:437: switch (bRequest) {
      000A2D E4               [12]  590 	clr	a
      000A2E B5 36 03         [24]  591 	cjne	a,_bRequest,00305$
      000A31 02 0C 86         [24]  592 	ljmp	00135$
      000A34                        593 00305$:
      000A34 74 06            [12]  594 	mov	a,#0x06
      000A36 B5 36 02         [24]  595 	cjne	a,_bRequest,00306$
      000A39 80 23            [24]  596 	sjmp	00103$
      000A3B                        597 00306$:
      000A3B 74 08            [12]  598 	mov	a,#0x08
      000A3D B5 36 02         [24]  599 	cjne	a,_bRequest,00307$
      000A40 80 13            [24]  600 	sjmp	00102$
      000A42                        601 00307$:
      000A42 74 0A            [12]  602 	mov	a,#0x0a
      000A44 B5 36 03         [24]  603 	cjne	a,_bRequest,00308$
      000A47 02 0C 7D         [24]  604 	ljmp	00134$
      000A4A                        605 00308$:
      000A4A 74 0C            [12]  606 	mov	a,#0x0c
      000A4C B5 36 03         [24]  607 	cjne	a,_bRequest,00309$
      000A4F 02 0C 8F         [24]  608 	ljmp	00136$
      000A52                        609 00309$:
      000A52 02 0C 98         [24]  610 	ljmp	00137$
                                    611 ;	src/usbcore.c:438: case GET_CONFIGURATION:         /* get configuration */
      000A55                        612 00102$:
                                    613 ;	src/usbcore.c:440: Prints("Get configuration\n");
      000A55 90 12 40         [24]  614 	mov	dptr,#___str_6
      000A58 75 F0 80         [24]  615 	mov	b,#0x80
                                    616 ;	src/usbcore.c:442: break;
      000A5B 02 07 77         [24]  617 	ljmp	_Prints
                                    618 ;	src/usbcore.c:443: case GET_DESCRIPTOR:
      000A5E                        619 00103$:
                                    620 ;	src/usbcore.c:445: Prints("Get descriptor -- ");
      000A5E 90 12 53         [24]  621 	mov	dptr,#___str_7
      000A61 75 F0 80         [24]  622 	mov	b,#0x80
      000A64 12 07 77         [24]  623 	lcall	_Prints
                                    624 ;	src/usbcore.c:449: switch ((wValue >> 8) & 0xFF) {
      000A67 AF 38            [24]  625 	mov	r7,(_wValue + 1)
      000A69 BF 01 02         [24]  626 	cjne	r7,#0x01,00310$
      000A6C 80 14            [24]  627 	sjmp	00104$
      000A6E                        628 00310$:
      000A6E BF 02 02         [24]  629 	cjne	r7,#0x02,00311$
      000A71 80 61            [24]  630 	sjmp	00110$
      000A73                        631 00311$:
      000A73 BF 03 03         [24]  632 	cjne	r7,#0x03,00312$
      000A76 02 0B 35         [24]  633 	ljmp	00116$
      000A79                        634 00312$:
      000A79 BF 22 03         [24]  635 	cjne	r7,#0x22,00313$
      000A7C 02 0C 1E         [24]  636 	ljmp	00127$
      000A7F                        637 00313$:
      000A7F 02 0C 65         [24]  638 	ljmp	00132$
                                    639 ;	src/usbcore.c:450: case DEVICE_DESCRIPTOR:
      000A82                        640 00104$:
                                    641 ;	src/usbcore.c:452: Prints("device descriptor\n");
      000A82 90 12 66         [24]  642 	mov	dptr,#___str_8
      000A85 75 F0 80         [24]  643 	mov	b,#0x80
      000A88 12 07 77         [24]  644 	lcall	_Prints
                                    645 ;	src/usbcore.c:454: pSendData = (uint8 *)DeviceDescriptor;
      000A8B 75 3D 6C         [24]  646 	mov	_pSendData,#_DeviceDescriptor
      000A8E 75 3E 10         [24]  647 	mov	(_pSendData + 1),#(_DeviceDescriptor >> 8)
      000A91 75 3F 80         [24]  648 	mov	(_pSendData + 2),#0x80
                                    649 ;	src/usbcore.c:455: if (wLength > DeviceDescriptor[0]) {
      000A94 90 10 6C         [24]  650 	mov	dptr,#_DeviceDescriptor
      000A97 E4               [12]  651 	clr	a
      000A98 93               [24]  652 	movc	a,@a+dptr
      000A99 FE               [12]  653 	mov	r6,a
      000A9A 7F 00            [12]  654 	mov	r7,#0x00
      000A9C C3               [12]  655 	clr	c
      000A9D EE               [12]  656 	mov	a,r6
      000A9E 95 3B            [12]  657 	subb	a,_wLength
      000AA0 EF               [12]  658 	mov	a,r7
      000AA1 95 3C            [12]  659 	subb	a,(_wLength + 1)
      000AA3 50 26            [24]  660 	jnc	00108$
                                    661 ;	src/usbcore.c:456: SendLength = DeviceDescriptor[0];
      000AA5 8E 40            [24]  662 	mov	_SendLength,r6
      000AA7 8F 41            [24]  663 	mov	(_SendLength + 1),r7
                                    664 ;	src/usbcore.c:457: if (SendLength % DeviceDescriptor[7] == 0)
      000AA9 90 10 73         [24]  665 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000AAC E4               [12]  666 	clr	a
      000AAD 93               [24]  667 	movc	a,@a+dptr
      000AAE FF               [12]  668 	mov	r7,a
      000AAF 8F 1C            [24]  669 	mov	__moduint_PARM_2,r7
      000AB1 75 1D 00         [24]  670 	mov	(__moduint_PARM_2 + 1),#0x00
      000AB4 85 40 82         [24]  671 	mov	dpl,_SendLength
      000AB7 85 41 83         [24]  672 	mov	dph,(_SendLength + 1)
      000ABA 12 0F 35         [24]  673 	lcall	__moduint
      000ABD E5 82            [12]  674 	mov	a,dpl
      000ABF 85 83 F0         [24]  675 	mov	b,dph
      000AC2 45 F0            [12]  676 	orl	a,b
      000AC4 70 0B            [24]  677 	jnz	00109$
                                    678 ;	src/usbcore.c:458: NeedZeroPacket = 1;
      000AC6 75 42 01         [24]  679 	mov	_NeedZeroPacket,#0x01
      000AC9 80 06            [24]  680 	sjmp	00109$
      000ACB                        681 00108$:
                                    682 ;	src/usbcore.c:460: SendLength = wLength;
      000ACB 85 3B 40         [24]  683 	mov	_SendLength,_wLength
      000ACE 85 3C 41         [24]  684 	mov	(_SendLength + 1),(_wLength + 1)
      000AD1                        685 00109$:
                                    686 ;	src/usbcore.c:462: usb_bus_ep0_send_data();
                                    687 ;	src/usbcore.c:463: break;
      000AD1 02 0E 53         [24]  688 	ljmp	_usb_bus_ep0_send_data
                                    689 ;	src/usbcore.c:464: case CONFIGURATION_DESCRIPTOR:
      000AD4                        690 00110$:
                                    691 ;	src/usbcore.c:466: Prints("configuration descriptor\n");
      000AD4 90 12 79         [24]  692 	mov	dptr,#___str_9
      000AD7 75 F0 80         [24]  693 	mov	b,#0x80
      000ADA 12 07 77         [24]  694 	lcall	_Prints
                                    695 ;	src/usbcore.c:468: pSendData = (uint8 *)ConfigurationDescriptor;
      000ADD 75 3D 7E         [24]  696 	mov	_pSendData,#_ConfigurationDescriptor
      000AE0 75 3E 10         [24]  697 	mov	(_pSendData + 1),#(_ConfigurationDescriptor >> 8)
      000AE3 75 3F 80         [24]  698 	mov	(_pSendData + 2),#0x80
                                    699 ;	src/usbcore.c:469: SendLength = ConfigurationDescriptor[3] * 256 + ConfigurationDescriptor[2];
      000AE6 90 10 81         [24]  700 	mov	dptr,#(_ConfigurationDescriptor + 0x0003)
      000AE9 E4               [12]  701 	clr	a
      000AEA 93               [24]  702 	movc	a,@a+dptr
      000AEB FE               [12]  703 	mov	r6,a
      000AEC 7F 00            [12]  704 	mov	r7,#0x00
      000AEE 90 10 80         [24]  705 	mov	dptr,#(_ConfigurationDescriptor + 0x0002)
      000AF1 E4               [12]  706 	clr	a
      000AF2 93               [24]  707 	movc	a,@a+dptr
      000AF3 FD               [12]  708 	mov	r5,a
      000AF4 7C 00            [12]  709 	mov	r4,#0x00
      000AF6 2F               [12]  710 	add	a,r7
      000AF7 FF               [12]  711 	mov	r7,a
      000AF8 EC               [12]  712 	mov	a,r4
      000AF9 3E               [12]  713 	addc	a,r6
      000AFA FE               [12]  714 	mov	r6,a
      000AFB 8F 40            [24]  715 	mov	_SendLength,r7
      000AFD 8E 41            [24]  716 	mov	(_SendLength + 1),r6
                                    717 ;	src/usbcore.c:470: if (wLength > SendLength) {
      000AFF C3               [12]  718 	clr	c
      000B00 E5 40            [12]  719 	mov	a,_SendLength
      000B02 95 3B            [12]  720 	subb	a,_wLength
      000B04 E5 41            [12]  721 	mov	a,(_SendLength + 1)
      000B06 95 3C            [12]  722 	subb	a,(_wLength + 1)
      000B08 50 22            [24]  723 	jnc	00114$
                                    724 ;	src/usbcore.c:471: if (SendLength % DeviceDescriptor[7] == 0)
      000B0A 90 10 73         [24]  725 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000B0D E4               [12]  726 	clr	a
      000B0E 93               [24]  727 	movc	a,@a+dptr
      000B0F FF               [12]  728 	mov	r7,a
      000B10 8F 1C            [24]  729 	mov	__moduint_PARM_2,r7
      000B12 75 1D 00         [24]  730 	mov	(__moduint_PARM_2 + 1),#0x00
      000B15 85 40 82         [24]  731 	mov	dpl,_SendLength
      000B18 85 41 83         [24]  732 	mov	dph,(_SendLength + 1)
      000B1B 12 0F 35         [24]  733 	lcall	__moduint
      000B1E E5 82            [12]  734 	mov	a,dpl
      000B20 85 83 F0         [24]  735 	mov	b,dph
      000B23 45 F0            [12]  736 	orl	a,b
      000B25 70 0B            [24]  737 	jnz	00115$
                                    738 ;	src/usbcore.c:472: NeedZeroPacket = 1;
      000B27 75 42 01         [24]  739 	mov	_NeedZeroPacket,#0x01
      000B2A 80 06            [24]  740 	sjmp	00115$
      000B2C                        741 00114$:
                                    742 ;	src/usbcore.c:474: SendLength = wLength;
      000B2C 85 3B 40         [24]  743 	mov	_SendLength,_wLength
      000B2F 85 3C 41         [24]  744 	mov	(_SendLength + 1),(_wLength + 1)
      000B32                        745 00115$:
                                    746 ;	src/usbcore.c:476: usb_bus_ep0_send_data();
                                    747 ;	src/usbcore.c:477: break;
      000B32 02 0E 53         [24]  748 	ljmp	_usb_bus_ep0_send_data
                                    749 ;	src/usbcore.c:478: case STRING_DESCRIPTOR:
      000B35                        750 00116$:
                                    751 ;	src/usbcore.c:480: Prints("string descriptor -- ");
      000B35 90 12 93         [24]  752 	mov	dptr,#___str_10
      000B38 75 F0 80         [24]  753 	mov	b,#0x80
      000B3B 12 07 77         [24]  754 	lcall	_Prints
                                    755 ;	src/usbcore.c:482: switch (wValue & 0xFF) {
      000B3E AE 37            [24]  756 	mov	r6,_wValue
      000B40 7F 00            [12]  757 	mov	r7,#0x00
      000B42 C3               [12]  758 	clr	c
      000B43 74 03            [12]  759 	mov	a,#0x03
      000B45 9E               [12]  760 	subb	a,r6
      000B46 E4               [12]  761 	clr	a
      000B47 9F               [12]  762 	subb	a,r7
      000B48 50 03            [24]  763 	jnc	00318$
      000B4A 02 0B D7         [24]  764 	ljmp	00121$
      000B4D                        765 00318$:
      000B4D EE               [12]  766 	mov	a,r6
      000B4E 2E               [12]  767 	add	a,r6
                                    768 ;	src/usbcore.c:483: case 0:         /* get language ID */
      000B4F 90 0B 53         [24]  769 	mov	dptr,#00319$
      000B52 73               [24]  770 	jmp	@a+dptr
      000B53                        771 00319$:
      000B53 80 06            [24]  772 	sjmp	00117$
      000B55 80 23            [24]  773 	sjmp	00118$
      000B57 80 40            [24]  774 	sjmp	00119$
      000B59 80 5D            [24]  775 	sjmp	00120$
      000B5B                        776 00117$:
                                    777 ;	src/usbcore.c:485: Prints("language ID\n");
      000B5B 90 12 A9         [24]  778 	mov	dptr,#___str_11
      000B5E 75 F0 80         [24]  779 	mov	b,#0x80
      000B61 12 07 77         [24]  780 	lcall	_Prints
                                    781 ;	src/usbcore.c:487: pSendData = (uint8 *)languageId;
      000B64 75 3D A7         [24]  782 	mov	_pSendData,#_languageId
      000B67 75 3E 10         [24]  783 	mov	(_pSendData + 1),#(_languageId >> 8)
      000B6A 75 3F 80         [24]  784 	mov	(_pSendData + 2),#0x80
                                    785 ;	src/usbcore.c:488: SendLength = languageId[0];
      000B6D 90 10 A7         [24]  786 	mov	dptr,#_languageId
      000B70 E4               [12]  787 	clr	a
      000B71 93               [24]  788 	movc	a,@a+dptr
      000B72 FF               [12]  789 	mov	r7,a
      000B73 8F 40            [24]  790 	mov	_SendLength,r7
      000B75 75 41 00         [24]  791 	mov	(_SendLength + 1),#0x00
                                    792 ;	src/usbcore.c:489: break;
                                    793 ;	src/usbcore.c:490: case 1:         /* Vendor string id is 1  */
      000B78 80 6E            [24]  794 	sjmp	00122$
      000B7A                        795 00118$:
                                    796 ;	src/usbcore.c:492: Prints("manufacture string\n");
      000B7A 90 12 B6         [24]  797 	mov	dptr,#___str_12
      000B7D 75 F0 80         [24]  798 	mov	b,#0x80
      000B80 12 07 77         [24]  799 	lcall	_Prints
                                    800 ;	src/usbcore.c:494: pSendData = (uint8 *)ManufacturerStringDescriptor;
      000B83 75 3D AB         [24]  801 	mov	_pSendData,#_ManufacturerStringDescriptor
      000B86 75 3E 10         [24]  802 	mov	(_pSendData + 1),#(_ManufacturerStringDescriptor >> 8)
      000B89 75 3F 80         [24]  803 	mov	(_pSendData + 2),#0x80
                                    804 ;	src/usbcore.c:495: SendLength = ManufacturerStringDescriptor[0];
      000B8C 90 10 AB         [24]  805 	mov	dptr,#_ManufacturerStringDescriptor
      000B8F E4               [12]  806 	clr	a
      000B90 93               [24]  807 	movc	a,@a+dptr
      000B91 FF               [12]  808 	mov	r7,a
      000B92 8F 40            [24]  809 	mov	_SendLength,r7
      000B94 75 41 00         [24]  810 	mov	(_SendLength + 1),#0x00
                                    811 ;	src/usbcore.c:496: break;
                                    812 ;	src/usbcore.c:497: case 2:         /* Vendor string id is 1  */
      000B97 80 4F            [24]  813 	sjmp	00122$
      000B99                        814 00119$:
                                    815 ;	src/usbcore.c:499: Prints("product string\n");
      000B99 90 12 CA         [24]  816 	mov	dptr,#___str_13
      000B9C 75 F0 80         [24]  817 	mov	b,#0x80
      000B9F 12 07 77         [24]  818 	lcall	_Prints
                                    819 ;	src/usbcore.c:501: pSendData = (uint8 *)ProductStringDescriptor;
      000BA2 75 3D 09         [24]  820 	mov	_pSendData,#_ProductStringDescriptor
      000BA5 75 3E 11         [24]  821 	mov	(_pSendData + 1),#(_ProductStringDescriptor >> 8)
      000BA8 75 3F 80         [24]  822 	mov	(_pSendData + 2),#0x80
                                    823 ;	src/usbcore.c:502: SendLength = ProductStringDescriptor[0];
      000BAB 90 11 09         [24]  824 	mov	dptr,#_ProductStringDescriptor
      000BAE E4               [12]  825 	clr	a
      000BAF 93               [24]  826 	movc	a,@a+dptr
      000BB0 FF               [12]  827 	mov	r7,a
      000BB1 8F 40            [24]  828 	mov	_SendLength,r7
      000BB3 75 41 00         [24]  829 	mov	(_SendLength + 1),#0x00
                                    830 ;	src/usbcore.c:503: break;
                                    831 ;	src/usbcore.c:504: case 3:         /* Vendor string id is 1  */
      000BB6 80 30            [24]  832 	sjmp	00122$
      000BB8                        833 00120$:
                                    834 ;	src/usbcore.c:506: Prints("serial string\n");
      000BB8 90 12 DA         [24]  835 	mov	dptr,#___str_14
      000BBB 75 F0 80         [24]  836 	mov	b,#0x80
      000BBE 12 07 77         [24]  837 	lcall	_Prints
                                    838 ;	src/usbcore.c:508: pSendData = (uint8 *)SerialNumberStringDescriptor;
      000BC1 75 3D 3F         [24]  839 	mov	_pSendData,#_SerialNumberStringDescriptor
      000BC4 75 3E 11         [24]  840 	mov	(_pSendData + 1),#(_SerialNumberStringDescriptor >> 8)
      000BC7 75 3F 80         [24]  841 	mov	(_pSendData + 2),#0x80
                                    842 ;	src/usbcore.c:509: SendLength = SerialNumberStringDescriptor[0];
      000BCA 90 11 3F         [24]  843 	mov	dptr,#_SerialNumberStringDescriptor
      000BCD E4               [12]  844 	clr	a
      000BCE 93               [24]  845 	movc	a,@a+dptr
      000BCF FF               [12]  846 	mov	r7,a
      000BD0 8F 40            [24]  847 	mov	_SendLength,r7
      000BD2 75 41 00         [24]  848 	mov	(_SendLength + 1),#0x00
                                    849 ;	src/usbcore.c:510: break;
                                    850 ;	src/usbcore.c:511: default:         /* Vendor string id is 1  */
      000BD5 80 11            [24]  851 	sjmp	00122$
      000BD7                        852 00121$:
                                    853 ;	src/usbcore.c:513: Prints("unknown string\n");
      000BD7 90 12 E9         [24]  854 	mov	dptr,#___str_15
      000BDA 75 F0 80         [24]  855 	mov	b,#0x80
      000BDD 12 07 77         [24]  856 	lcall	_Prints
                                    857 ;	src/usbcore.c:515: SendLength = 0;
      000BE0 E4               [12]  858 	clr	a
      000BE1 F5 40            [12]  859 	mov	_SendLength,a
      000BE3 F5 41            [12]  860 	mov	(_SendLength + 1),a
                                    861 ;	src/usbcore.c:516: NeedZeroPacket = 1;
      000BE5 75 42 01         [24]  862 	mov	_NeedZeroPacket,#0x01
                                    863 ;	src/usbcore.c:518: }
      000BE8                        864 00122$:
                                    865 ;	src/usbcore.c:519: if ((wLength > SendLength) &&
      000BE8 C3               [12]  866 	clr	c
      000BE9 E5 40            [12]  867 	mov	a,_SendLength
      000BEB 95 3B            [12]  868 	subb	a,_wLength
      000BED E5 41            [12]  869 	mov	a,(_SendLength + 1)
      000BEF 95 3C            [12]  870 	subb	a,(_wLength + 1)
      000BF1 50 22            [24]  871 	jnc	00124$
                                    872 ;	src/usbcore.c:520: (SendLength % DeviceDescriptor[7] == 0))
      000BF3 90 10 73         [24]  873 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000BF6 E4               [12]  874 	clr	a
      000BF7 93               [24]  875 	movc	a,@a+dptr
      000BF8 FF               [12]  876 	mov	r7,a
      000BF9 8F 1C            [24]  877 	mov	__moduint_PARM_2,r7
      000BFB 75 1D 00         [24]  878 	mov	(__moduint_PARM_2 + 1),#0x00
      000BFE 85 40 82         [24]  879 	mov	dpl,_SendLength
      000C01 85 41 83         [24]  880 	mov	dph,(_SendLength + 1)
      000C04 12 0F 35         [24]  881 	lcall	__moduint
      000C07 E5 82            [12]  882 	mov	a,dpl
      000C09 85 83 F0         [24]  883 	mov	b,dph
      000C0C 45 F0            [12]  884 	orl	a,b
      000C0E 70 05            [24]  885 	jnz	00124$
                                    886 ;	src/usbcore.c:521: NeedZeroPacket = 1;
      000C10 75 42 01         [24]  887 	mov	_NeedZeroPacket,#0x01
      000C13 80 06            [24]  888 	sjmp	00125$
      000C15                        889 00124$:
                                    890 ;	src/usbcore.c:523: SendLength = wLength;
      000C15 85 3B 40         [24]  891 	mov	_SendLength,_wLength
      000C18 85 3C 41         [24]  892 	mov	(_SendLength + 1),(_wLength + 1)
      000C1B                        893 00125$:
                                    894 ;	src/usbcore.c:524: usb_bus_ep0_send_data(); 
                                    895 ;	src/usbcore.c:525: break;
      000C1B 02 0E 53         [24]  896 	ljmp	_usb_bus_ep0_send_data
                                    897 ;	src/usbcore.c:526: case REPORT_DESCRIPTOR:
      000C1E                        898 00127$:
                                    899 ;	src/usbcore.c:528: Prints("Report descriptor: ");
      000C1E 90 12 F9         [24]  900 	mov	dptr,#___str_16
      000C21 75 F0 80         [24]  901 	mov	b,#0x80
      000C24 12 07 77         [24]  902 	lcall	_Prints
                                    903 ;	src/usbcore.c:530: pSendData = (uint8 *)ReportDescriptor;
      000C27 75 3D 55         [24]  904 	mov	_pSendData,#_ReportDescriptor
      000C2A 75 3E 11         [24]  905 	mov	(_pSendData + 1),#(_ReportDescriptor >> 8)
      000C2D 75 3F 80         [24]  906 	mov	(_pSendData + 2),#0x80
                                    907 ;	src/usbcore.c:531: SendLength = sizeof(ReportDescriptor);
      000C30 75 40 79         [24]  908 	mov	_SendLength,#0x79
      000C33 75 41 00         [24]  909 	mov	(_SendLength + 1),#0x00
                                    910 ;	src/usbcore.c:532: if ((wLength > SendLength) && (SendLength % DeviceDescriptor[7] == 0))
      000C36 C3               [12]  911 	clr	c
      000C37 74 79            [12]  912 	mov	a,#0x79
      000C39 95 3B            [12]  913 	subb	a,_wLength
      000C3B E4               [12]  914 	clr	a
      000C3C 95 3C            [12]  915 	subb	a,(_wLength + 1)
      000C3E 50 1F            [24]  916 	jnc	00129$
      000C40 90 10 73         [24]  917 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000C43 E4               [12]  918 	clr	a
      000C44 93               [24]  919 	movc	a,@a+dptr
      000C45 FF               [12]  920 	mov	r7,a
      000C46 8F 1C            [24]  921 	mov	__moduint_PARM_2,r7
      000C48 75 1D 00         [24]  922 	mov	(__moduint_PARM_2 + 1),#0x00
      000C4B 90 00 79         [24]  923 	mov	dptr,#0x0079
      000C4E 12 0F 35         [24]  924 	lcall	__moduint
      000C51 E5 82            [12]  925 	mov	a,dpl
      000C53 85 83 F0         [24]  926 	mov	b,dph
      000C56 45 F0            [12]  927 	orl	a,b
      000C58 70 05            [24]  928 	jnz	00129$
                                    929 ;	src/usbcore.c:533: NeedZeroPacket = 1;
      000C5A 75 42 01         [24]  930 	mov	_NeedZeroPacket,#0x01
      000C5D 80 03            [24]  931 	sjmp	00130$
      000C5F                        932 00129$:
                                    933 ;	src/usbcore.c:535: NeedZeroPacket = 0;
      000C5F 75 42 00         [24]  934 	mov	_NeedZeroPacket,#0x00
      000C62                        935 00130$:
                                    936 ;	src/usbcore.c:536: usb_bus_ep0_send_data();
                                    937 ;	src/usbcore.c:537: break;
      000C62 02 0E 53         [24]  938 	ljmp	_usb_bus_ep0_send_data
                                    939 ;	src/usbcore.c:538: default:
      000C65                        940 00132$:
                                    941 ;	src/usbcore.c:540: Prints("other descriptor: ");
      000C65 90 13 0D         [24]  942 	mov	dptr,#___str_17
      000C68 75 F0 80         [24]  943 	mov	b,#0x80
      000C6B 12 07 77         [24]  944 	lcall	_Prints
                                    945 ;	src/usbcore.c:542: print_hex((wValue >> 8) & 0xFF);
      000C6E 85 38 82         [24]  946 	mov	dpl,(_wValue + 1)
      000C71 12 08 6C         [24]  947 	lcall	_print_hex
                                    948 ;	src/usbcore.c:543: Prints("\n");
      000C74 90 13 20         [24]  949 	mov	dptr,#___str_18
      000C77 75 F0 80         [24]  950 	mov	b,#0x80
                                    951 ;	src/usbcore.c:546: break;
      000C7A 02 07 77         [24]  952 	ljmp	_Prints
                                    953 ;	src/usbcore.c:547: case GET_INTERFACE:
      000C7D                        954 00134$:
                                    955 ;	src/usbcore.c:549: Prints("Get interface\n");
      000C7D 90 13 22         [24]  956 	mov	dptr,#___str_19
      000C80 75 F0 80         [24]  957 	mov	b,#0x80
                                    958 ;	src/usbcore.c:551: break;
      000C83 02 07 77         [24]  959 	ljmp	_Prints
                                    960 ;	src/usbcore.c:552: case GET_STATUS:
      000C86                        961 00135$:
                                    962 ;	src/usbcore.c:554: Prints("Get status\n");
      000C86 90 13 31         [24]  963 	mov	dptr,#___str_20
      000C89 75 F0 80         [24]  964 	mov	b,#0x80
                                    965 ;	src/usbcore.c:556: break;
      000C8C 02 07 77         [24]  966 	ljmp	_Prints
                                    967 ;	src/usbcore.c:557: case SYNCH_FRAME:
      000C8F                        968 00136$:
                                    969 ;	src/usbcore.c:559: Prints("Synch frame\n");
      000C8F 90 13 3D         [24]  970 	mov	dptr,#___str_21
      000C92 75 F0 80         [24]  971 	mov	b,#0x80
                                    972 ;	src/usbcore.c:561: break;
      000C95 02 07 77         [24]  973 	ljmp	_Prints
                                    974 ;	src/usbcore.c:562: default:
      000C98                        975 00137$:
                                    976 ;	src/usbcore.c:564: Prints("Error: undefined stander request\n");
      000C98 90 13 4A         [24]  977 	mov	dptr,#___str_22
      000C9B 75 F0 80         [24]  978 	mov	b,#0x80
                                    979 ;	src/usbcore.c:568: break;
      000C9E 02 07 77         [24]  980 	ljmp	_Prints
                                    981 ;	src/usbcore.c:569: case 1:                            /* class request */
      000CA1                        982 00139$:
                                    983 ;	src/usbcore.c:571: Prints("USB class input request:\n");
      000CA1 90 13 6C         [24]  984 	mov	dptr,#___str_23
      000CA4 75 F0 80         [24]  985 	mov	b,#0x80
                                    986 ;	src/usbcore.c:573: break;
      000CA7 02 07 77         [24]  987 	ljmp	_Prints
                                    988 ;	src/usbcore.c:574: case 2:
      000CAA                        989 00140$:
                                    990 ;	src/usbcore.c:576: Prints("USB vendor input request:\n");
      000CAA 90 13 86         [24]  991 	mov	dptr,#___str_24
      000CAD 75 F0 80         [24]  992 	mov	b,#0x80
                                    993 ;	src/usbcore.c:578: break;
      000CB0 02 07 77         [24]  994 	ljmp	_Prints
                                    995 ;	src/usbcore.c:579: default:
      000CB3                        996 00141$:
                                    997 ;	src/usbcore.c:581: Prints("Error: undefined input request:\n");
      000CB3 90 13 A1         [24]  998 	mov	dptr,#___str_25
      000CB6 75 F0 80         [24]  999 	mov	b,#0x80
                                   1000 ;	src/usbcore.c:584: }
      000CB9 02 07 77         [24] 1001 	ljmp	_Prints
      000CBC                       1002 00160$:
                                   1003 ;	src/usbcore.c:588: switch ((bmRequestType >> 5) & 0x3) {
      000CBC E5 35            [12] 1004 	mov	a,_bmRequestType
      000CBE C4               [12] 1005 	swap	a
      000CBF 03               [12] 1006 	rr	a
      000CC0 54 07            [12] 1007 	anl	a,#0x07
      000CC2 FF               [12] 1008 	mov	r7,a
      000CC3 53 07 03         [24] 1009 	anl	ar7,#0x03
      000CC6 7E 00            [12] 1010 	mov	r6,#0x00
      000CC8 BF 00 05         [24] 1011 	cjne	r7,#0x00,00324$
      000CCB BE 00 02         [24] 1012 	cjne	r6,#0x00,00324$
      000CCE 80 15            [24] 1013 	sjmp	00143$
      000CD0                       1014 00324$:
      000CD0 BF 01 06         [24] 1015 	cjne	r7,#0x01,00325$
      000CD3 BE 00 03         [24] 1016 	cjne	r6,#0x00,00325$
      000CD6 02 0D 8B         [24] 1017 	ljmp	00152$
      000CD9                       1018 00325$:
      000CD9 BF 02 06         [24] 1019 	cjne	r7,#0x02,00326$
      000CDC BE 00 03         [24] 1020 	cjne	r6,#0x00,00326$
      000CDF 02 0D B7         [24] 1021 	ljmp	00156$
      000CE2                       1022 00326$:
      000CE2 02 0D C0         [24] 1023 	ljmp	00157$
                                   1024 ;	src/usbcore.c:589: case 0:
      000CE5                       1025 00143$:
                                   1026 ;	src/usbcore.c:591: Prints("USB stander output request: ");
      000CE5 90 13 C2         [24] 1027 	mov	dptr,#___str_26
      000CE8 75 F0 80         [24] 1028 	mov	b,#0x80
      000CEB 12 07 77         [24] 1029 	lcall	_Prints
                                   1030 ;	src/usbcore.c:593: switch (bRequest) {
      000CEE 74 01            [12] 1031 	mov	a,#0x01
      000CF0 B5 36 02         [24] 1032 	cjne	a,_bRequest,00327$
      000CF3 80 23            [24] 1033 	sjmp	00144$
      000CF5                       1034 00327$:
      000CF5 74 03            [12] 1035 	mov	a,#0x03
      000CF7 B5 36 02         [24] 1036 	cjne	a,_bRequest,00328$
      000CFA 80 74            [24] 1037 	sjmp	00148$
      000CFC                       1038 00328$:
      000CFC 74 05            [12] 1039 	mov	a,#0x05
      000CFE B5 36 02         [24] 1040 	cjne	a,_bRequest,00329$
      000D01 80 1E            [24] 1041 	sjmp	00145$
      000D03                       1042 00329$:
      000D03 74 07            [12] 1043 	mov	a,#0x07
      000D05 B5 36 02         [24] 1044 	cjne	a,_bRequest,00330$
      000D08 80 5D            [24] 1045 	sjmp	00147$
      000D0A                       1046 00330$:
      000D0A 74 09            [12] 1047 	mov	a,#0x09
      000D0C B5 36 02         [24] 1048 	cjne	a,_bRequest,00331$
      000D0F 80 39            [24] 1049 	sjmp	00146$
      000D11                       1050 00331$:
      000D11 74 0B            [12] 1051 	mov	a,#0x0b
                                   1052 ;	src/usbcore.c:594: case CLEAR_FEATURE:
      000D13 B5 36 6C         [24] 1053 	cjne	a,_bRequest,00150$
      000D16 80 61            [24] 1054 	sjmp	00149$
      000D18                       1055 00144$:
                                   1056 ;	src/usbcore.c:596: Prints("clear feature\n");                   
      000D18 90 13 DF         [24] 1057 	mov	dptr,#___str_27
      000D1B 75 F0 80         [24] 1058 	mov	b,#0x80
                                   1059 ;	src/usbcore.c:598: break;
      000D1E 02 07 77         [24] 1060 	ljmp	_Prints
                                   1061 ;	src/usbcore.c:599: case SET_ADDRESS:
      000D21                       1062 00145$:
                                   1063 ;	src/usbcore.c:601: Prints("set address, the address is: ");
      000D21 90 13 EE         [24] 1064 	mov	dptr,#___str_28
      000D24 75 F0 80         [24] 1065 	mov	b,#0x80
      000D27 12 07 77         [24] 1066 	lcall	_Prints
                                   1067 ;	src/usbcore.c:602: print_hex(wValue & 0xFF);
      000D2A 85 37 82         [24] 1068 	mov	dpl,_wValue
      000D2D 12 08 6C         [24] 1069 	lcall	_print_hex
                                   1070 ;	src/usbcore.c:603: Prints("\n");                
      000D30 90 13 20         [24] 1071 	mov	dptr,#___str_18
      000D33 75 F0 80         [24] 1072 	mov	b,#0x80
      000D36 12 07 77         [24] 1073 	lcall	_Prints
                                   1074 ;	src/usbcore.c:605: D12_set_address(wValue & 0xFF);
      000D39 85 37 82         [24] 1075 	mov	dpl,_wValue
      000D3C 12 07 0B         [24] 1076 	lcall	_D12_set_address
                                   1077 ;	src/usbcore.c:606: SendLength = 0;
      000D3F E4               [12] 1078 	clr	a
      000D40 F5 40            [12] 1079 	mov	_SendLength,a
      000D42 F5 41            [12] 1080 	mov	(_SendLength + 1),a
                                   1081 ;	src/usbcore.c:607: NeedZeroPacket = 1;
      000D44 75 42 01         [24] 1082 	mov	_NeedZeroPacket,#0x01
                                   1083 ;	src/usbcore.c:608: usb_bus_ep0_send_data();
                                   1084 ;	src/usbcore.c:609: break;
      000D47 02 0E 53         [24] 1085 	ljmp	_usb_bus_ep0_send_data
                                   1086 ;	src/usbcore.c:610: case SET_CONFIGURATION:
      000D4A                       1087 00146$:
                                   1088 ;	src/usbcore.c:612: Prints("set configuration\n");                   
      000D4A 90 14 0C         [24] 1089 	mov	dptr,#___str_29
      000D4D 75 F0 80         [24] 1090 	mov	b,#0x80
      000D50 12 07 77         [24] 1091 	lcall	_Prints
                                   1092 ;	src/usbcore.c:614: ConfigValue = wValue & 0xFF;
      000D53 AF 37            [24] 1093 	mov	r7,_wValue
      000D55 8F 44            [24] 1094 	mov	_ConfigValue,r7
                                   1095 ;	src/usbcore.c:615: D12_set_endpoint_enable(wValue & 0xFF);
      000D57 8F 82            [24] 1096 	mov	dpl,r7
      000D59 12 07 1F         [24] 1097 	lcall	_D12_set_endpoint_enable
                                   1098 ;	src/usbcore.c:617: SendLength = 0;
      000D5C E4               [12] 1099 	clr	a
      000D5D F5 40            [12] 1100 	mov	_SendLength,a
      000D5F F5 41            [12] 1101 	mov	(_SendLength + 1),a
                                   1102 ;	src/usbcore.c:618: NeedZeroPacket = 1;
      000D61 75 42 01         [24] 1103 	mov	_NeedZeroPacket,#0x01
                                   1104 ;	src/usbcore.c:619: usb_bus_ep0_send_data();
                                   1105 ;	src/usbcore.c:620: break;
      000D64 02 0E 53         [24] 1106 	ljmp	_usb_bus_ep0_send_data
                                   1107 ;	src/usbcore.c:621: case SET_DESCRIPTOR:
      000D67                       1108 00147$:
                                   1109 ;	src/usbcore.c:623: Prints("set descriptor\n");                   
      000D67 90 14 1F         [24] 1110 	mov	dptr,#___str_30
      000D6A 75 F0 80         [24] 1111 	mov	b,#0x80
                                   1112 ;	src/usbcore.c:625: break;
      000D6D 02 07 77         [24] 1113 	ljmp	_Prints
                                   1114 ;	src/usbcore.c:626: case SET_FEATURE:
      000D70                       1115 00148$:
                                   1116 ;	src/usbcore.c:628: Prints("set feature\n");                   
      000D70 90 14 2F         [24] 1117 	mov	dptr,#___str_31
      000D73 75 F0 80         [24] 1118 	mov	b,#0x80
                                   1119 ;	src/usbcore.c:630: break;
      000D76 02 07 77         [24] 1120 	ljmp	_Prints
                                   1121 ;	src/usbcore.c:631: case SET_INTERFACE:
      000D79                       1122 00149$:
                                   1123 ;	src/usbcore.c:633: Prints("set interface\n");                   
      000D79 90 14 3C         [24] 1124 	mov	dptr,#___str_32
      000D7C 75 F0 80         [24] 1125 	mov	b,#0x80
                                   1126 ;	src/usbcore.c:635: break;
      000D7F 02 07 77         [24] 1127 	ljmp	_Prints
                                   1128 ;	src/usbcore.c:636: default:
      000D82                       1129 00150$:
                                   1130 ;	src/usbcore.c:638: Prints("Error: undefined stander request\n");                   
      000D82 90 13 4A         [24] 1131 	mov	dptr,#___str_22
      000D85 75 F0 80         [24] 1132 	mov	b,#0x80
                                   1133 ;	src/usbcore.c:642: break;
      000D88 02 07 77         [24] 1134 	ljmp	_Prints
                                   1135 ;	src/usbcore.c:643: case 1:
      000D8B                       1136 00152$:
                                   1137 ;	src/usbcore.c:645: Prints("USB class output request:\n");                   
      000D8B 90 14 4B         [24] 1138 	mov	dptr,#___str_33
      000D8E 75 F0 80         [24] 1139 	mov	b,#0x80
      000D91 12 07 77         [24] 1140 	lcall	_Prints
                                   1141 ;	src/usbcore.c:647: switch (bRequest) {
      000D94 74 0A            [12] 1142 	mov	a,#0x0a
      000D96 B5 36 15         [24] 1143 	cjne	a,_bRequest,00154$
                                   1144 ;	src/usbcore.c:650: Prints("set idle\n");
      000D99 90 14 66         [24] 1145 	mov	dptr,#___str_34
      000D9C 75 F0 80         [24] 1146 	mov	b,#0x80
      000D9F 12 07 77         [24] 1147 	lcall	_Prints
                                   1148 ;	src/usbcore.c:652: SendLength = 1;
      000DA2 75 40 01         [24] 1149 	mov	_SendLength,#0x01
      000DA5 75 41 00         [24] 1150 	mov	(_SendLength + 1),#0x00
                                   1151 ;	src/usbcore.c:653: NeedZeroPacket = 1;
      000DA8 75 42 01         [24] 1152 	mov	_NeedZeroPacket,#0x01
                                   1153 ;	src/usbcore.c:655: usb_bus_ep0_send_data();
                                   1154 ;	src/usbcore.c:656: break;
                                   1155 ;	src/usbcore.c:657: default:
      000DAB 02 0E 53         [24] 1156 	ljmp	_usb_bus_ep0_send_data
      000DAE                       1157 00154$:
                                   1158 ;	src/usbcore.c:659: Prints("unknown request\n");                   
      000DAE 90 14 70         [24] 1159 	mov	dptr,#___str_35
      000DB1 75 F0 80         [24] 1160 	mov	b,#0x80
                                   1161 ;	src/usbcore.c:663: break;
                                   1162 ;	src/usbcore.c:664: case 2:
      000DB4 02 07 77         [24] 1163 	ljmp	_Prints
      000DB7                       1164 00156$:
                                   1165 ;	src/usbcore.c:666: Prints("USB vendor output request:\n");                   
      000DB7 90 14 81         [24] 1166 	mov	dptr,#___str_36
      000DBA 75 F0 80         [24] 1167 	mov	b,#0x80
                                   1168 ;	src/usbcore.c:668: break;
                                   1169 ;	src/usbcore.c:669: default:
      000DBD 02 07 77         [24] 1170 	ljmp	_Prints
      000DC0                       1171 00157$:
                                   1172 ;	src/usbcore.c:671: Prints("Error: undefined output request.\n");                   
      000DC0 90 14 9D         [24] 1173 	mov	dptr,#___str_37
      000DC3 75 F0 80         [24] 1174 	mov	b,#0x80
                                   1175 ;	src/usbcore.c:674: }
      000DC6 02 07 77         [24] 1176 	ljmp	_Prints
      000DC9                       1177 00163$:
                                   1178 ;	src/usbcore.c:677: D12_read_endpoint_buffer(0, 16, buffer);
      000DC9 75 15 45         [24] 1179 	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep0_out_buffer_65536_57
      000DCC 75 16 00         [24] 1180 	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
      000DCF 75 17 40         [24] 1181 	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
      000DD2 75 14 10         [24] 1182 	mov	_D12_read_endpoint_buffer_PARM_2,#0x10
      000DD5 75 82 00         [24] 1183 	mov	dpl,#0x00
      000DD8 12 05 34         [24] 1184 	lcall	_D12_read_endpoint_buffer
                                   1185 ;	src/usbcore.c:678: D12_clear_buffer();
      000DDB 12 06 1B         [24] 1186 	lcall	_D12_clear_buffer
                                   1187 ;	src/usbcore.c:679: dump_hex(buffer, 8);
      000DDE 75 33 08         [24] 1188 	mov	_dump_hex_PARM_2,#0x08
      000DE1 75 34 00         [24] 1189 	mov	(_dump_hex_PARM_2 + 1),#0x00
      000DE4 90 00 45         [24] 1190 	mov	dptr,#_usb_bus_isr_ep0_out_buffer_65536_57
      000DE7 75 F0 40         [24] 1191 	mov	b,#0x40
                                   1192 ;	src/usbcore.c:681: }
      000DEA 02 08 AB         [24] 1193 	ljmp	_dump_hex
                                   1194 ;------------------------------------------------------------
                                   1195 ;Allocation info for local variables in function 'usb_bus_isr_ep0_in'
                                   1196 ;------------------------------------------------------------
                                   1197 ;	src/usbcore.c:683: void usb_bus_isr_ep0_in()
                                   1198 ;	-----------------------------------------
                                   1199 ;	 function usb_bus_isr_ep0_in
                                   1200 ;	-----------------------------------------
      000DED                       1201 _usb_bus_isr_ep0_in:
                                   1202 ;	src/usbcore.c:686: Prints("usb isr ep0 in\n");
      000DED 90 14 BF         [24] 1203 	mov	dptr,#___str_38
      000DF0 75 F0 80         [24] 1204 	mov	b,#0x80
      000DF3 12 07 77         [24] 1205 	lcall	_Prints
                                   1206 ;	src/usbcore.c:688: D12_read_endpoint_last_status(1);
      000DF6 75 82 01         [24] 1207 	mov	dpl,#0x01
      000DF9 12 05 24         [24] 1208 	lcall	_D12_read_endpoint_last_status
                                   1209 ;	src/usbcore.c:689: usb_bus_ep0_send_data();
                                   1210 ;	src/usbcore.c:690: }
      000DFC 02 0E 53         [24] 1211 	ljmp	_usb_bus_ep0_send_data
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'usb_bus_isr_ep1_out'
                                   1214 ;------------------------------------------------------------
                                   1215 ;buf                       Allocated with name '_usb_bus_isr_ep1_out_buf_65536_74'
                                   1216 ;------------------------------------------------------------
                                   1217 ;	src/usbcore.c:692: void usb_bus_isr_ep1_out()
                                   1218 ;	-----------------------------------------
                                   1219 ;	 function usb_bus_isr_ep1_out
                                   1220 ;	-----------------------------------------
      000DFF                       1221 _usb_bus_isr_ep1_out:
                                   1222 ;	src/usbcore.c:696: Prints("usb core ep1 out\n");
      000DFF 90 14 CF         [24] 1223 	mov	dptr,#___str_39
      000E02 75 F0 80         [24] 1224 	mov	b,#0x80
      000E05 12 07 77         [24] 1225 	lcall	_Prints
                                   1226 ;	src/usbcore.c:699: D12_read_endpoint_last_status(2);
      000E08 75 82 02         [24] 1227 	mov	dpl,#0x02
      000E0B 12 05 24         [24] 1228 	lcall	_D12_read_endpoint_last_status
                                   1229 ;	src/usbcore.c:701: D12_read_endpoint_buffer(2, 2, buf);
      000E0E 75 15 55         [24] 1230 	mov	_D12_read_endpoint_buffer_PARM_3,#_usb_bus_isr_ep1_out_buf_65536_74
      000E11 75 16 00         [24] 1231 	mov	(_D12_read_endpoint_buffer_PARM_3 + 1),#0x00
      000E14 75 17 40         [24] 1232 	mov	(_D12_read_endpoint_buffer_PARM_3 + 2),#0x40
      000E17 75 14 02         [24] 1233 	mov	_D12_read_endpoint_buffer_PARM_2,#0x02
      000E1A 75 82 02         [24] 1234 	mov	dpl,#0x02
      000E1D 12 05 34         [24] 1235 	lcall	_D12_read_endpoint_buffer
                                   1236 ;	src/usbcore.c:703: D12_clear_buffer();
      000E20 12 06 1B         [24] 1237 	lcall	_D12_clear_buffer
                                   1238 ;	src/usbcore.c:705: if (buf[0] == 0x1)
      000E23 74 01            [12] 1239 	mov	a,#0x01
      000E25 B5 55 05         [24] 1240 	cjne	a,_usb_bus_isr_ep1_out_buf_65536_74,00103$
                                   1241 ;	src/usbcore.c:706: LED = ~buf[1];
      000E28 E5 56            [12] 1242 	mov	a,(_usb_bus_isr_ep1_out_buf_65536_74 + 0x0001)
      000E2A F4               [12] 1243 	cpl	a
      000E2B F5 A0            [12] 1244 	mov	_P2,a
      000E2D                       1245 00103$:
                                   1246 ;	src/usbcore.c:707: }
      000E2D 22               [24] 1247 	ret
                                   1248 ;------------------------------------------------------------
                                   1249 ;Allocation info for local variables in function 'usb_bus_isr_ep1_in'
                                   1250 ;------------------------------------------------------------
                                   1251 ;	src/usbcore.c:709: void usb_bus_isr_ep1_in()
                                   1252 ;	-----------------------------------------
                                   1253 ;	 function usb_bus_isr_ep1_in
                                   1254 ;	-----------------------------------------
      000E2E                       1255 _usb_bus_isr_ep1_in:
                                   1256 ;	src/usbcore.c:712: Prints("usb core ep1 in\n");
      000E2E 90 14 E1         [24] 1257 	mov	dptr,#___str_40
      000E31 75 F0 80         [24] 1258 	mov	b,#0x80
      000E34 12 07 77         [24] 1259 	lcall	_Prints
                                   1260 ;	src/usbcore.c:714: D12_read_endpoint_last_status(3);
      000E37 75 82 03         [24] 1261 	mov	dpl,#0x03
      000E3A 12 05 24         [24] 1262 	lcall	_D12_read_endpoint_last_status
                                   1263 ;	src/usbcore.c:715: Ep1InIsBusy = 0;
      000E3D 75 43 00         [24] 1264 	mov	_Ep1InIsBusy,#0x00
                                   1265 ;	src/usbcore.c:716: }
      000E40 22               [24] 1266 	ret
                                   1267 ;------------------------------------------------------------
                                   1268 ;Allocation info for local variables in function 'usb_bus_isr_ep2_out'
                                   1269 ;------------------------------------------------------------
                                   1270 ;	src/usbcore.c:718: void usb_bus_isr_ep2_out()
                                   1271 ;	-----------------------------------------
                                   1272 ;	 function usb_bus_isr_ep2_out
                                   1273 ;	-----------------------------------------
      000E41                       1274 _usb_bus_isr_ep2_out:
                                   1275 ;	src/usbcore.c:721: Prints("usb core ep2 out\n");
      000E41 90 14 F2         [24] 1276 	mov	dptr,#___str_41
      000E44 75 F0 80         [24] 1277 	mov	b,#0x80
                                   1278 ;	src/usbcore.c:723: }
      000E47 02 07 77         [24] 1279 	ljmp	_Prints
                                   1280 ;------------------------------------------------------------
                                   1281 ;Allocation info for local variables in function 'usb_bus_isr_ep2_in'
                                   1282 ;------------------------------------------------------------
                                   1283 ;	src/usbcore.c:725: void usb_bus_isr_ep2_in()
                                   1284 ;	-----------------------------------------
                                   1285 ;	 function usb_bus_isr_ep2_in
                                   1286 ;	-----------------------------------------
      000E4A                       1287 _usb_bus_isr_ep2_in:
                                   1288 ;	src/usbcore.c:728: Prints("usb core ep2 in\n");
      000E4A 90 15 04         [24] 1289 	mov	dptr,#___str_42
      000E4D 75 F0 80         [24] 1290 	mov	b,#0x80
                                   1291 ;	src/usbcore.c:730: }
      000E50 02 07 77         [24] 1292 	ljmp	_Prints
                                   1293 ;------------------------------------------------------------
                                   1294 ;Allocation info for local variables in function 'usb_bus_ep0_send_data'
                                   1295 ;------------------------------------------------------------
                                   1296 ;	src/usbcore.c:732: void usb_bus_ep0_send_data(void)
                                   1297 ;	-----------------------------------------
                                   1298 ;	 function usb_bus_ep0_send_data
                                   1299 ;	-----------------------------------------
      000E53                       1300 _usb_bus_ep0_send_data:
                                   1301 ;	src/usbcore.c:734: if (SendLength > DeviceDescriptor[7]) {
      000E53 90 10 73         [24] 1302 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000E56 E4               [12] 1303 	clr	a
      000E57 93               [24] 1304 	movc	a,@a+dptr
      000E58 FF               [12] 1305 	mov	r7,a
      000E59 FD               [12] 1306 	mov	r5,a
      000E5A 7E 00            [12] 1307 	mov	r6,#0x00
      000E5C C3               [12] 1308 	clr	c
      000E5D ED               [12] 1309 	mov	a,r5
      000E5E 95 40            [12] 1310 	subb	a,_SendLength
      000E60 EE               [12] 1311 	mov	a,r6
      000E61 95 41            [12] 1312 	subb	a,(_SendLength + 1)
      000E63 50 34            [24] 1313 	jnc	00107$
                                   1314 ;	src/usbcore.c:735: D12_write_endpoint_buffer(1, DeviceDescriptor[7], pSendData);
      000E65 8F 18            [24] 1315 	mov	_D12_write_endpoint_buffer_PARM_2,r7
      000E67 85 3D 19         [24] 1316 	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
      000E6A 85 3E 1A         [24] 1317 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
      000E6D 85 3F 1B         [24] 1318 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
      000E70 75 82 01         [24] 1319 	mov	dpl,#0x01
      000E73 12 06 3F         [24] 1320 	lcall	_D12_write_endpoint_buffer
                                   1321 ;	src/usbcore.c:736: SendLength -= DeviceDescriptor[7];
      000E76 90 10 73         [24] 1322 	mov	dptr,#(_DeviceDescriptor + 0x0007)
      000E79 E4               [12] 1323 	clr	a
      000E7A 93               [24] 1324 	movc	a,@a+dptr
      000E7B FF               [12] 1325 	mov	r7,a
      000E7C FD               [12] 1326 	mov	r5,a
      000E7D 7E 00            [12] 1327 	mov	r6,#0x00
      000E7F AB 40            [24] 1328 	mov	r3,_SendLength
      000E81 AC 41            [24] 1329 	mov	r4,(_SendLength + 1)
      000E83 EB               [12] 1330 	mov	a,r3
      000E84 C3               [12] 1331 	clr	c
      000E85 9D               [12] 1332 	subb	a,r5
      000E86 FB               [12] 1333 	mov	r3,a
      000E87 EC               [12] 1334 	mov	a,r4
      000E88 9E               [12] 1335 	subb	a,r6
      000E89 FC               [12] 1336 	mov	r4,a
      000E8A 8B 40            [24] 1337 	mov	_SendLength,r3
      000E8C 8C 41            [24] 1338 	mov	(_SendLength + 1),r4
                                   1339 ;	src/usbcore.c:737: pSendData += DeviceDescriptor[7];
      000E8E EF               [12] 1340 	mov	a,r7
      000E8F 25 3D            [12] 1341 	add	a,_pSendData
      000E91 F5 3D            [12] 1342 	mov	_pSendData,a
      000E93 E4               [12] 1343 	clr	a
      000E94 35 3E            [12] 1344 	addc	a,(_pSendData + 1)
      000E96 F5 3E            [12] 1345 	mov	(_pSendData + 1),a
      000E98 22               [24] 1346 	ret
      000E99                       1347 00107$:
                                   1348 ;	src/usbcore.c:739: if (SendLength != 0) {
      000E99 E5 40            [12] 1349 	mov	a,_SendLength
      000E9B 45 41            [12] 1350 	orl	a,(_SendLength + 1)
      000E9D 60 18            [24] 1351 	jz	00104$
                                   1352 ;	src/usbcore.c:740: D12_write_endpoint_buffer(1, SendLength, pSendData);
      000E9F 85 40 18         [24] 1353 	mov	_D12_write_endpoint_buffer_PARM_2,_SendLength
      000EA2 85 3D 19         [24] 1354 	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
      000EA5 85 3E 1A         [24] 1355 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
      000EA8 85 3F 1B         [24] 1356 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
      000EAB 75 82 01         [24] 1357 	mov	dpl,#0x01
      000EAE 12 06 3F         [24] 1358 	lcall	_D12_write_endpoint_buffer
                                   1359 ;	src/usbcore.c:741: SendLength = 0;
      000EB1 E4               [12] 1360 	clr	a
      000EB2 F5 40            [12] 1361 	mov	_SendLength,a
      000EB4 F5 41            [12] 1362 	mov	(_SendLength + 1),a
      000EB6 22               [24] 1363 	ret
      000EB7                       1364 00104$:
                                   1365 ;	src/usbcore.c:743: if (NeedZeroPacket == 1) {
      000EB7 74 01            [12] 1366 	mov	a,#0x01
      000EB9 B5 42 15         [24] 1367 	cjne	a,_NeedZeroPacket,00109$
                                   1368 ;	src/usbcore.c:744: D12_write_endpoint_buffer(1, 0, pSendData);
      000EBC 75 18 00         [24] 1369 	mov	_D12_write_endpoint_buffer_PARM_2,#0x00
      000EBF 85 3D 19         [24] 1370 	mov	_D12_write_endpoint_buffer_PARM_3,_pSendData
      000EC2 85 3E 1A         [24] 1371 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),(_pSendData + 1)
      000EC5 85 3F 1B         [24] 1372 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),(_pSendData + 2)
      000EC8 75 82 01         [24] 1373 	mov	dpl,#0x01
      000ECB 12 06 3F         [24] 1374 	lcall	_D12_write_endpoint_buffer
                                   1375 ;	src/usbcore.c:745: NeedZeroPacket = 0;
      000ECE 75 42 00         [24] 1376 	mov	_NeedZeroPacket,#0x00
      000ED1                       1377 00109$:
                                   1378 ;	src/usbcore.c:749: }
      000ED1 22               [24] 1379 	ret
                                   1380 	.area CSEG    (CODE)
                                   1381 	.area CONST   (CODE)
      00106C                       1382 _DeviceDescriptor:
      00106C 12                    1383 	.db #0x12	; 18
      00106D 01                    1384 	.db #0x01	; 1
      00106E 10                    1385 	.db #0x10	; 16
      00106F 01                    1386 	.db #0x01	; 1
      001070 00                    1387 	.db #0x00	; 0
      001071 00                    1388 	.db #0x00	; 0
      001072 00                    1389 	.db #0x00	; 0
      001073 10                    1390 	.db #0x10	; 16
      001074 88                    1391 	.db #0x88	; 136
      001075 88                    1392 	.db #0x88	; 136
      001076 03                    1393 	.db #0x03	; 3
      001077 00                    1394 	.db #0x00	; 0
      001078 00                    1395 	.db #0x00	; 0
      001079 01                    1396 	.db #0x01	; 1
      00107A 01                    1397 	.db #0x01	; 1
      00107B 02                    1398 	.db #0x02	; 2
      00107C 03                    1399 	.db #0x03	; 3
      00107D 01                    1400 	.db #0x01	; 1
      00107E                       1401 _ConfigurationDescriptor:
      00107E 09                    1402 	.db #0x09	; 9
      00107F 02                    1403 	.db #0x02	; 2
      001080 29                    1404 	.db #0x29	; 41
      001081 00                    1405 	.db #0x00	; 0
      001082 01                    1406 	.db #0x01	; 1
      001083 01                    1407 	.db #0x01	; 1
      001084 00                    1408 	.db #0x00	; 0
      001085 80                    1409 	.db #0x80	; 128
      001086 32                    1410 	.db #0x32	; 50	'2'
      001087 09                    1411 	.db #0x09	; 9
      001088 04                    1412 	.db #0x04	; 4
      001089 00                    1413 	.db #0x00	; 0
      00108A 00                    1414 	.db #0x00	; 0
      00108B 02                    1415 	.db #0x02	; 2
      00108C 03                    1416 	.db #0x03	; 3
      00108D 01                    1417 	.db #0x01	; 1
      00108E 01                    1418 	.db #0x01	; 1
      00108F 00                    1419 	.db #0x00	; 0
      001090 09                    1420 	.db #0x09	; 9
      001091 21                    1421 	.db #0x21	; 33
      001092 10                    1422 	.db #0x10	; 16
      001093 01                    1423 	.db #0x01	; 1
      001094 21                    1424 	.db #0x21	; 33
      001095 01                    1425 	.db #0x01	; 1
      001096 22                    1426 	.db #0x22	; 34
      001097 79                    1427 	.db #0x79	; 121	'y'
      001098 00                    1428 	.db #0x00	; 0
      001099 07                    1429 	.db #0x07	; 7
      00109A 05                    1430 	.db #0x05	; 5
      00109B 81                    1431 	.db #0x81	; 129
      00109C 03                    1432 	.db #0x03	; 3
      00109D 10                    1433 	.db #0x10	; 16
      00109E 00                    1434 	.db #0x00	; 0
      00109F 0A                    1435 	.db #0x0a	; 10
      0010A0 07                    1436 	.db #0x07	; 7
      0010A1 05                    1437 	.db #0x05	; 5
      0010A2 01                    1438 	.db #0x01	; 1
      0010A3 03                    1439 	.db #0x03	; 3
      0010A4 10                    1440 	.db #0x10	; 16
      0010A5 00                    1441 	.db #0x00	; 0
      0010A6 0A                    1442 	.db #0x0a	; 10
      0010A7                       1443 _languageId:
      0010A7 04                    1444 	.db #0x04	; 4
      0010A8 03                    1445 	.db #0x03	; 3
      0010A9 09                    1446 	.db #0x09	; 9
      0010AA 04                    1447 	.db #0x04	; 4
      0010AB                       1448 _ManufacturerStringDescriptor:
      0010AB 5E                    1449 	.db #0x5e	; 94
      0010AC 03                    1450 	.db #0x03	; 3
      0010AD 43                    1451 	.db #0x43	; 67	'C'
      0010AE 00                    1452 	.db #0x00	; 0
      0010AF 6F                    1453 	.db #0x6f	; 111	'o'
      0010B0 00                    1454 	.db #0x00	; 0
      0010B1 6E                    1455 	.db #0x6e	; 110	'n'
      0010B2 00                    1456 	.db #0x00	; 0
      0010B3 74                    1457 	.db #0x74	; 116	't'
      0010B4 00                    1458 	.db #0x00	; 0
      0010B5 61                    1459 	.db #0x61	; 97	'a'
      0010B6 00                    1460 	.db #0x00	; 0
      0010B7 63                    1461 	.db #0x63	; 99	'c'
      0010B8 00                    1462 	.db #0x00	; 0
      0010B9 74                    1463 	.db #0x74	; 116	't'
      0010BA 00                    1464 	.db #0x00	; 0
      0010BB 20                    1465 	.db #0x20	; 32
      0010BC 00                    1466 	.db #0x00	; 0
      0010BD 61                    1467 	.db #0x61	; 97	'a'
      0010BE 00                    1468 	.db #0x00	; 0
      0010BF 75                    1469 	.db #0x75	; 117	'u'
      0010C0 00                    1470 	.db #0x00	; 0
      0010C1 74                    1471 	.db #0x74	; 116	't'
      0010C2 00                    1472 	.db #0x00	; 0
      0010C3 68                    1473 	.db #0x68	; 104	'h'
      0010C4 00                    1474 	.db #0x00	; 0
      0010C5 6F                    1475 	.db #0x6f	; 111	'o'
      0010C6 00                    1476 	.db #0x00	; 0
      0010C7 72                    1477 	.db #0x72	; 114	'r'
      0010C8 00                    1478 	.db #0x00	; 0
      0010C9 20                    1479 	.db #0x20	; 32
      0010CA 00                    1480 	.db #0x00	; 0
      0010CB 48                    1481 	.db #0x48	; 72	'H'
      0010CC 00                    1482 	.db #0x00	; 0
      0010CD 65                    1483 	.db #0x65	; 101	'e'
      0010CE 00                    1484 	.db #0x00	; 0
      0010CF 6E                    1485 	.db #0x6e	; 110	'n'
      0010D0 00                    1486 	.db #0x00	; 0
      0010D1 67                    1487 	.db #0x67	; 103	'g'
      0010D2 00                    1488 	.db #0x00	; 0
      0010D3 20                    1489 	.db #0x20	; 32
      0010D4 00                    1490 	.db #0x00	; 0
      0010D5 56                    1491 	.db #0x56	; 86	'V'
      0010D6 00                    1492 	.db #0x00	; 0
      0010D7 69                    1493 	.db #0x69	; 105	'i'
      0010D8 00                    1494 	.db #0x00	; 0
      0010D9 61                    1495 	.db #0x61	; 97	'a'
      0010DA 00                    1496 	.db #0x00	; 0
      0010DB 20                    1497 	.db #0x20	; 32
      0010DC 00                    1498 	.db #0x00	; 0
      0010DD 65                    1499 	.db #0x65	; 101	'e'
      0010DE 00                    1500 	.db #0x00	; 0
      0010DF 6D                    1501 	.db #0x6d	; 109	'm'
      0010E0 00                    1502 	.db #0x00	; 0
      0010E1 61                    1503 	.db #0x61	; 97	'a'
      0010E2 00                    1504 	.db #0x00	; 0
      0010E3 69                    1505 	.db #0x69	; 105	'i'
      0010E4 00                    1506 	.db #0x00	; 0
      0010E5 6C                    1507 	.db #0x6c	; 108	'l'
      0010E6 00                    1508 	.db #0x00	; 0
      0010E7 20                    1509 	.db #0x20	; 32
      0010E8 00                    1510 	.db #0x00	; 0
      0010E9 37                    1511 	.db #0x37	; 55	'7'
      0010EA 00                    1512 	.db #0x00	; 0
      0010EB 37                    1513 	.db #0x37	; 55	'7'
      0010EC 00                    1514 	.db #0x00	; 0
      0010ED 30                    1515 	.db #0x30	; 48	'0'
      0010EE 00                    1516 	.db #0x00	; 0
      0010EF 31                    1517 	.db #0x31	; 49	'1'
      0010F0 00                    1518 	.db #0x00	; 0
      0010F1 37                    1519 	.db #0x37	; 55	'7'
      0010F2 00                    1520 	.db #0x00	; 0
      0010F3 35                    1521 	.db #0x35	; 53	'5'
      0010F4 00                    1522 	.db #0x00	; 0
      0010F5 31                    1523 	.db #0x31	; 49	'1'
      0010F6 00                    1524 	.db #0x00	; 0
      0010F7 37                    1525 	.db #0x37	; 55	'7'
      0010F8 00                    1526 	.db #0x00	; 0
      0010F9 37                    1527 	.db #0x37	; 55	'7'
      0010FA 00                    1528 	.db #0x00	; 0
      0010FB 40                    1529 	.db #0x40	; 64
      0010FC 00                    1530 	.db #0x00	; 0
      0010FD 71                    1531 	.db #0x71	; 113	'q'
      0010FE 00                    1532 	.db #0x00	; 0
      0010FF 71                    1533 	.db #0x71	; 113	'q'
      001100 00                    1534 	.db #0x00	; 0
      001101 2E                    1535 	.db #0x2e	; 46
      001102 00                    1536 	.db #0x00	; 0
      001103 63                    1537 	.db #0x63	; 99	'c'
      001104 00                    1538 	.db #0x00	; 0
      001105 6F                    1539 	.db #0x6f	; 111	'o'
      001106 00                    1540 	.db #0x00	; 0
      001107 6D                    1541 	.db #0x6d	; 109	'm'
      001108 00                    1542 	.db #0x00	; 0
      001109                       1543 _ProductStringDescriptor:
      001109 36                    1544 	.db #0x36	; 54	'6'
      00110A 03                    1545 	.db #0x03	; 3
      00110B 48                    1546 	.db #0x48	; 72	'H'
      00110C 00                    1547 	.db #0x00	; 0
      00110D 65                    1548 	.db #0x65	; 101	'e'
      00110E 00                    1549 	.db #0x00	; 0
      00110F 6E                    1550 	.db #0x6e	; 110	'n'
      001110 00                    1551 	.db #0x00	; 0
      001111 67                    1552 	.db #0x67	; 103	'g'
      001112 00                    1553 	.db #0x00	; 0
      001113 27                    1554 	.db #0x27	; 39
      001114 00                    1555 	.db #0x00	; 0
      001115 73                    1556 	.db #0x73	; 115	's'
      001116 00                    1557 	.db #0x00	; 0
      001117 20                    1558 	.db #0x20	; 32
      001118 00                    1559 	.db #0x00	; 0
      001119 4B                    1560 	.db #0x4b	; 75	'K'
      00111A 00                    1561 	.db #0x00	; 0
      00111B 65                    1562 	.db #0x65	; 101	'e'
      00111C 00                    1563 	.db #0x00	; 0
      00111D 79                    1564 	.db #0x79	; 121	'y'
      00111E 00                    1565 	.db #0x00	; 0
      00111F 62                    1566 	.db #0x62	; 98	'b'
      001120 00                    1567 	.db #0x00	; 0
      001121 6F                    1568 	.db #0x6f	; 111	'o'
      001122 00                    1569 	.db #0x00	; 0
      001123 61                    1570 	.db #0x61	; 97	'a'
      001124 00                    1571 	.db #0x00	; 0
      001125 72                    1572 	.db #0x72	; 114	'r'
      001126 00                    1573 	.db #0x00	; 0
      001127 64                    1574 	.db #0x64	; 100	'd'
      001128 00                    1575 	.db #0x00	; 0
      001129 20                    1576 	.db #0x20	; 32
      00112A 00                    1577 	.db #0x00	; 0
      00112B 77                    1578 	.db #0x77	; 119	'w'
      00112C 00                    1579 	.db #0x00	; 0
      00112D 69                    1580 	.db #0x69	; 105	'i'
      00112E 00                    1581 	.db #0x00	; 0
      00112F 74                    1582 	.db #0x74	; 116	't'
      001130 00                    1583 	.db #0x00	; 0
      001131 68                    1584 	.db #0x68	; 104	'h'
      001132 00                    1585 	.db #0x00	; 0
      001133 20                    1586 	.db #0x20	; 32
      001134 00                    1587 	.db #0x00	; 0
      001135 4D                    1588 	.db #0x4d	; 77	'M'
      001136 00                    1589 	.db #0x00	; 0
      001137 6F                    1590 	.db #0x6f	; 111	'o'
      001138 00                    1591 	.db #0x00	; 0
      001139 75                    1592 	.db #0x75	; 117	'u'
      00113A 00                    1593 	.db #0x00	; 0
      00113B 73                    1594 	.db #0x73	; 115	's'
      00113C 00                    1595 	.db #0x00	; 0
      00113D 65                    1596 	.db #0x65	; 101	'e'
      00113E 00                    1597 	.db #0x00	; 0
      00113F                       1598 _SerialNumberStringDescriptor:
      00113F 16                    1599 	.db #0x16	; 22
      001140 03                    1600 	.db #0x03	; 3
      001141 32                    1601 	.db #0x32	; 50	'2'
      001142 00                    1602 	.db #0x00	; 0
      001143 30                    1603 	.db #0x30	; 48	'0'
      001144 00                    1604 	.db #0x00	; 0
      001145 32                    1605 	.db #0x32	; 50	'2'
      001146 00                    1606 	.db #0x00	; 0
      001147 33                    1607 	.db #0x33	; 51	'3'
      001148 00                    1608 	.db #0x00	; 0
      001149 2D                    1609 	.db #0x2d	; 45
      00114A 00                    1610 	.db #0x00	; 0
      00114B 30                    1611 	.db #0x30	; 48	'0'
      00114C 00                    1612 	.db #0x00	; 0
      00114D 38                    1613 	.db #0x38	; 56	'8'
      00114E 00                    1614 	.db #0x00	; 0
      00114F 2D                    1615 	.db #0x2d	; 45
      001150 00                    1616 	.db #0x00	; 0
      001151 30                    1617 	.db #0x30	; 48	'0'
      001152 00                    1618 	.db #0x00	; 0
      001153 32                    1619 	.db #0x32	; 50	'2'
      001154 00                    1620 	.db #0x00	; 0
      001155                       1621 _ReportDescriptor:
      001155 05                    1622 	.db #0x05	; 5
      001156 01                    1623 	.db #0x01	; 1
      001157 09                    1624 	.db #0x09	; 9
      001158 06                    1625 	.db #0x06	; 6
      001159 A1                    1626 	.db #0xa1	; 161
      00115A 01                    1627 	.db #0x01	; 1
      00115B 85                    1628 	.db #0x85	; 133
      00115C 01                    1629 	.db #0x01	; 1
      00115D 05                    1630 	.db #0x05	; 5
      00115E 07                    1631 	.db #0x07	; 7
      00115F 19                    1632 	.db #0x19	; 25
      001160 E0                    1633 	.db #0xe0	; 224
      001161 29                    1634 	.db #0x29	; 41
      001162 E7                    1635 	.db #0xe7	; 231
      001163 15                    1636 	.db #0x15	; 21
      001164 00                    1637 	.db #0x00	; 0
      001165 25                    1638 	.db #0x25	; 37
      001166 01                    1639 	.db #0x01	; 1
      001167 95                    1640 	.db #0x95	; 149
      001168 08                    1641 	.db #0x08	; 8
      001169 75                    1642 	.db #0x75	; 117	'u'
      00116A 01                    1643 	.db #0x01	; 1
      00116B 81                    1644 	.db #0x81	; 129
      00116C 02                    1645 	.db #0x02	; 2
      00116D 95                    1646 	.db #0x95	; 149
      00116E 01                    1647 	.db #0x01	; 1
      00116F 75                    1648 	.db #0x75	; 117	'u'
      001170 08                    1649 	.db #0x08	; 8
      001171 81                    1650 	.db #0x81	; 129
      001172 03                    1651 	.db #0x03	; 3
      001173 95                    1652 	.db #0x95	; 149
      001174 06                    1653 	.db #0x06	; 6
      001175 75                    1654 	.db #0x75	; 117	'u'
      001176 08                    1655 	.db #0x08	; 8
      001177 15                    1656 	.db #0x15	; 21
      001178 00                    1657 	.db #0x00	; 0
      001179 25                    1658 	.db #0x25	; 37
      00117A FF                    1659 	.db #0xff	; 255
      00117B 05                    1660 	.db #0x05	; 5
      00117C 07                    1661 	.db #0x07	; 7
      00117D 19                    1662 	.db #0x19	; 25
      00117E 00                    1663 	.db #0x00	; 0
      00117F 29                    1664 	.db #0x29	; 41
      001180 65                    1665 	.db #0x65	; 101	'e'
      001181 81                    1666 	.db #0x81	; 129
      001182 00                    1667 	.db #0x00	; 0
      001183 25                    1668 	.db #0x25	; 37
      001184 01                    1669 	.db #0x01	; 1
      001185 95                    1670 	.db #0x95	; 149
      001186 05                    1671 	.db #0x05	; 5
      001187 75                    1672 	.db #0x75	; 117	'u'
      001188 01                    1673 	.db #0x01	; 1
      001189 05                    1674 	.db #0x05	; 5
      00118A 08                    1675 	.db #0x08	; 8
      00118B 19                    1676 	.db #0x19	; 25
      00118C 01                    1677 	.db #0x01	; 1
      00118D 29                    1678 	.db #0x29	; 41
      00118E 05                    1679 	.db #0x05	; 5
      00118F 91                    1680 	.db #0x91	; 145
      001190 02                    1681 	.db #0x02	; 2
      001191 95                    1682 	.db #0x95	; 149
      001192 01                    1683 	.db #0x01	; 1
      001193 75                    1684 	.db #0x75	; 117	'u'
      001194 03                    1685 	.db #0x03	; 3
      001195 91                    1686 	.db #0x91	; 145
      001196 03                    1687 	.db #0x03	; 3
      001197 C0                    1688 	.db #0xc0	; 192
      001198 05                    1689 	.db #0x05	; 5
      001199 01                    1690 	.db #0x01	; 1
      00119A 09                    1691 	.db #0x09	; 9
      00119B 02                    1692 	.db #0x02	; 2
      00119C A1                    1693 	.db #0xa1	; 161
      00119D 01                    1694 	.db #0x01	; 1
      00119E 85                    1695 	.db #0x85	; 133
      00119F 02                    1696 	.db #0x02	; 2
      0011A0 09                    1697 	.db #0x09	; 9
      0011A1 01                    1698 	.db #0x01	; 1
      0011A2 A1                    1699 	.db #0xa1	; 161
      0011A3 00                    1700 	.db #0x00	; 0
      0011A4 05                    1701 	.db #0x05	; 5
      0011A5 09                    1702 	.db #0x09	; 9
      0011A6 19                    1703 	.db #0x19	; 25
      0011A7 01                    1704 	.db #0x01	; 1
      0011A8 29                    1705 	.db #0x29	; 41
      0011A9 03                    1706 	.db #0x03	; 3
      0011AA 15                    1707 	.db #0x15	; 21
      0011AB 00                    1708 	.db #0x00	; 0
      0011AC 25                    1709 	.db #0x25	; 37
      0011AD 01                    1710 	.db #0x01	; 1
      0011AE 95                    1711 	.db #0x95	; 149
      0011AF 03                    1712 	.db #0x03	; 3
      0011B0 75                    1713 	.db #0x75	; 117	'u'
      0011B1 01                    1714 	.db #0x01	; 1
      0011B2 81                    1715 	.db #0x81	; 129
      0011B3 02                    1716 	.db #0x02	; 2
      0011B4 95                    1717 	.db #0x95	; 149
      0011B5 01                    1718 	.db #0x01	; 1
      0011B6 75                    1719 	.db #0x75	; 117	'u'
      0011B7 05                    1720 	.db #0x05	; 5
      0011B8 81                    1721 	.db #0x81	; 129
      0011B9 03                    1722 	.db #0x03	; 3
      0011BA 05                    1723 	.db #0x05	; 5
      0011BB 01                    1724 	.db #0x01	; 1
      0011BC 09                    1725 	.db #0x09	; 9
      0011BD 30                    1726 	.db #0x30	; 48	'0'
      0011BE 09                    1727 	.db #0x09	; 9
      0011BF 31                    1728 	.db #0x31	; 49	'1'
      0011C0 09                    1729 	.db #0x09	; 9
      0011C1 38                    1730 	.db #0x38	; 56	'8'
      0011C2 15                    1731 	.db #0x15	; 21
      0011C3 81                    1732 	.db #0x81	; 129
      0011C4 25                    1733 	.db #0x25	; 37
      0011C5 7F                    1734 	.db #0x7f	; 127
      0011C6 75                    1735 	.db #0x75	; 117	'u'
      0011C7 08                    1736 	.db #0x08	; 8
      0011C8 95                    1737 	.db #0x95	; 149
      0011C9 03                    1738 	.db #0x03	; 3
      0011CA 81                    1739 	.db #0x81	; 129
      0011CB 06                    1740 	.db #0x06	; 6
      0011CC C0                    1741 	.db #0xc0	; 192
      0011CD C0                    1742 	.db #0xc0	; 192
                                   1743 	.area CONST   (CODE)
      0011CE                       1744 ___str_0:
      0011CE 75 73 62 20 64 69 73  1745 	.ascii "usb disconnect"
             63 6F 6E 6E 65 63 74
      0011DC 0A                    1746 	.db 0x0a
      0011DD 00                    1747 	.db 0x00
                                   1748 	.area CSEG    (CODE)
                                   1749 	.area CONST   (CODE)
      0011DE                       1750 ___str_1:
      0011DE 75 73 62 20 63 6F 6E  1751 	.ascii "usb connect"
             6E 65 63 74
      0011E9 0A                    1752 	.db 0x0a
      0011EA 00                    1753 	.db 0x00
                                   1754 	.area CSEG    (CODE)
                                   1755 	.area CONST   (CODE)
      0011EB                       1756 ___str_2:
      0011EB 75 73 62 20 63 6F 72  1757 	.ascii "usb core isr suspend"
             65 20 69 73 72 20 73
             75 73 70 65 6E 64
      0011FF 0A                    1758 	.db 0x0a
      001200 00                    1759 	.db 0x00
                                   1760 	.area CSEG    (CODE)
                                   1761 	.area CONST   (CODE)
      001201                       1762 ___str_3:
      001201 75 73 62 20 63 6F 72  1763 	.ascii "usb core isr reset"
             65 20 69 73 72 20 72
             65 73 65 74
      001213 0A                    1764 	.db 0x0a
      001214 00                    1765 	.db 0x00
                                   1766 	.area CSEG    (CODE)
                                   1767 	.area CONST   (CODE)
      001215                       1768 ___str_4:
      001215 75 73 62 20 69 73 72  1769 	.ascii "usb isr ep0 out"
             20 65 70 30 20 6F 75
             74
      001224 0A                    1770 	.db 0x0a
      001225 00                    1771 	.db 0x00
                                   1772 	.area CSEG    (CODE)
                                   1773 	.area CONST   (CODE)
      001226                       1774 ___str_5:
      001226 55 53 42 20 73 74 61  1775 	.ascii "USB stand input request: "
             6E 64 20 69 6E 70 75
             74 20 72 65 71 75 65
             73 74 3A 20
      00123F 00                    1776 	.db 0x00
                                   1777 	.area CSEG    (CODE)
                                   1778 	.area CONST   (CODE)
      001240                       1779 ___str_6:
      001240 47 65 74 20 63 6F 6E  1780 	.ascii "Get configuration"
             66 69 67 75 72 61 74
             69 6F 6E
      001251 0A                    1781 	.db 0x0a
      001252 00                    1782 	.db 0x00
                                   1783 	.area CSEG    (CODE)
                                   1784 	.area CONST   (CODE)
      001253                       1785 ___str_7:
      001253 47 65 74 20 64 65 73  1786 	.ascii "Get descriptor -- "
             63 72 69 70 74 6F 72
             20 2D 2D 20
      001265 00                    1787 	.db 0x00
                                   1788 	.area CSEG    (CODE)
                                   1789 	.area CONST   (CODE)
      001266                       1790 ___str_8:
      001266 64 65 76 69 63 65 20  1791 	.ascii "device descriptor"
             64 65 73 63 72 69 70
             74 6F 72
      001277 0A                    1792 	.db 0x0a
      001278 00                    1793 	.db 0x00
                                   1794 	.area CSEG    (CODE)
                                   1795 	.area CONST   (CODE)
      001279                       1796 ___str_9:
      001279 63 6F 6E 66 69 67 75  1797 	.ascii "configuration descriptor"
             72 61 74 69 6F 6E 20
             64 65 73 63 72 69 70
             74 6F 72
      001291 0A                    1798 	.db 0x0a
      001292 00                    1799 	.db 0x00
                                   1800 	.area CSEG    (CODE)
                                   1801 	.area CONST   (CODE)
      001293                       1802 ___str_10:
      001293 73 74 72 69 6E 67 20  1803 	.ascii "string descriptor -- "
             64 65 73 63 72 69 70
             74 6F 72 20 2D 2D 20
      0012A8 00                    1804 	.db 0x00
                                   1805 	.area CSEG    (CODE)
                                   1806 	.area CONST   (CODE)
      0012A9                       1807 ___str_11:
      0012A9 6C 61 6E 67 75 61 67  1808 	.ascii "language ID"
             65 20 49 44
      0012B4 0A                    1809 	.db 0x0a
      0012B5 00                    1810 	.db 0x00
                                   1811 	.area CSEG    (CODE)
                                   1812 	.area CONST   (CODE)
      0012B6                       1813 ___str_12:
      0012B6 6D 61 6E 75 66 61 63  1814 	.ascii "manufacture string"
             74 75 72 65 20 73 74
             72 69 6E 67
      0012C8 0A                    1815 	.db 0x0a
      0012C9 00                    1816 	.db 0x00
                                   1817 	.area CSEG    (CODE)
                                   1818 	.area CONST   (CODE)
      0012CA                       1819 ___str_13:
      0012CA 70 72 6F 64 75 63 74  1820 	.ascii "product string"
             20 73 74 72 69 6E 67
      0012D8 0A                    1821 	.db 0x0a
      0012D9 00                    1822 	.db 0x00
                                   1823 	.area CSEG    (CODE)
                                   1824 	.area CONST   (CODE)
      0012DA                       1825 ___str_14:
      0012DA 73 65 72 69 61 6C 20  1826 	.ascii "serial string"
             73 74 72 69 6E 67
      0012E7 0A                    1827 	.db 0x0a
      0012E8 00                    1828 	.db 0x00
                                   1829 	.area CSEG    (CODE)
                                   1830 	.area CONST   (CODE)
      0012E9                       1831 ___str_15:
      0012E9 75 6E 6B 6E 6F 77 6E  1832 	.ascii "unknown string"
             20 73 74 72 69 6E 67
      0012F7 0A                    1833 	.db 0x0a
      0012F8 00                    1834 	.db 0x00
                                   1835 	.area CSEG    (CODE)
                                   1836 	.area CONST   (CODE)
      0012F9                       1837 ___str_16:
      0012F9 52 65 70 6F 72 74 20  1838 	.ascii "Report descriptor: "
             64 65 73 63 72 69 70
             74 6F 72 3A 20
      00130C 00                    1839 	.db 0x00
                                   1840 	.area CSEG    (CODE)
                                   1841 	.area CONST   (CODE)
      00130D                       1842 ___str_17:
      00130D 6F 74 68 65 72 20 64  1843 	.ascii "other descriptor: "
             65 73 63 72 69 70 74
             6F 72 3A 20
      00131F 00                    1844 	.db 0x00
                                   1845 	.area CSEG    (CODE)
                                   1846 	.area CONST   (CODE)
      001320                       1847 ___str_18:
      001320 0A                    1848 	.db 0x0a
      001321 00                    1849 	.db 0x00
                                   1850 	.area CSEG    (CODE)
                                   1851 	.area CONST   (CODE)
      001322                       1852 ___str_19:
      001322 47 65 74 20 69 6E 74  1853 	.ascii "Get interface"
             65 72 66 61 63 65
      00132F 0A                    1854 	.db 0x0a
      001330 00                    1855 	.db 0x00
                                   1856 	.area CSEG    (CODE)
                                   1857 	.area CONST   (CODE)
      001331                       1858 ___str_20:
      001331 47 65 74 20 73 74 61  1859 	.ascii "Get status"
             74 75 73
      00133B 0A                    1860 	.db 0x0a
      00133C 00                    1861 	.db 0x00
                                   1862 	.area CSEG    (CODE)
                                   1863 	.area CONST   (CODE)
      00133D                       1864 ___str_21:
      00133D 53 79 6E 63 68 20 66  1865 	.ascii "Synch frame"
             72 61 6D 65
      001348 0A                    1866 	.db 0x0a
      001349 00                    1867 	.db 0x00
                                   1868 	.area CSEG    (CODE)
                                   1869 	.area CONST   (CODE)
      00134A                       1870 ___str_22:
      00134A 45 72 72 6F 72 3A 20  1871 	.ascii "Error: undefined stander request"
             75 6E 64 65 66 69 6E
             65 64 20 73 74 61 6E
             64 65 72 20 72 65 71
             75 65 73 74
      00136A 0A                    1872 	.db 0x0a
      00136B 00                    1873 	.db 0x00
                                   1874 	.area CSEG    (CODE)
                                   1875 	.area CONST   (CODE)
      00136C                       1876 ___str_23:
      00136C 55 53 42 20 63 6C 61  1877 	.ascii "USB class input request:"
             73 73 20 69 6E 70 75
             74 20 72 65 71 75 65
             73 74 3A
      001384 0A                    1878 	.db 0x0a
      001385 00                    1879 	.db 0x00
                                   1880 	.area CSEG    (CODE)
                                   1881 	.area CONST   (CODE)
      001386                       1882 ___str_24:
      001386 55 53 42 20 76 65 6E  1883 	.ascii "USB vendor input request:"
             64 6F 72 20 69 6E 70
             75 74 20 72 65 71 75
             65 73 74 3A
      00139F 0A                    1884 	.db 0x0a
      0013A0 00                    1885 	.db 0x00
                                   1886 	.area CSEG    (CODE)
                                   1887 	.area CONST   (CODE)
      0013A1                       1888 ___str_25:
      0013A1 45 72 72 6F 72 3A 20  1889 	.ascii "Error: undefined input request:"
             75 6E 64 65 66 69 6E
             65 64 20 69 6E 70 75
             74 20 72 65 71 75 65
             73 74 3A
      0013C0 0A                    1890 	.db 0x0a
      0013C1 00                    1891 	.db 0x00
                                   1892 	.area CSEG    (CODE)
                                   1893 	.area CONST   (CODE)
      0013C2                       1894 ___str_26:
      0013C2 55 53 42 20 73 74 61  1895 	.ascii "USB stander output request: "
             6E 64 65 72 20 6F 75
             74 70 75 74 20 72 65
             71 75 65 73 74 3A 20
      0013DE 00                    1896 	.db 0x00
                                   1897 	.area CSEG    (CODE)
                                   1898 	.area CONST   (CODE)
      0013DF                       1899 ___str_27:
      0013DF 63 6C 65 61 72 20 66  1900 	.ascii "clear feature"
             65 61 74 75 72 65
      0013EC 0A                    1901 	.db 0x0a
      0013ED 00                    1902 	.db 0x00
                                   1903 	.area CSEG    (CODE)
                                   1904 	.area CONST   (CODE)
      0013EE                       1905 ___str_28:
      0013EE 73 65 74 20 61 64 64  1906 	.ascii "set address, the address is: "
             72 65 73 73 2C 20 74
             68 65 20 61 64 64 72
             65 73 73 20 69 73 3A
             20
      00140B 00                    1907 	.db 0x00
                                   1908 	.area CSEG    (CODE)
                                   1909 	.area CONST   (CODE)
      00140C                       1910 ___str_29:
      00140C 73 65 74 20 63 6F 6E  1911 	.ascii "set configuration"
             66 69 67 75 72 61 74
             69 6F 6E
      00141D 0A                    1912 	.db 0x0a
      00141E 00                    1913 	.db 0x00
                                   1914 	.area CSEG    (CODE)
                                   1915 	.area CONST   (CODE)
      00141F                       1916 ___str_30:
      00141F 73 65 74 20 64 65 73  1917 	.ascii "set descriptor"
             63 72 69 70 74 6F 72
      00142D 0A                    1918 	.db 0x0a
      00142E 00                    1919 	.db 0x00
                                   1920 	.area CSEG    (CODE)
                                   1921 	.area CONST   (CODE)
      00142F                       1922 ___str_31:
      00142F 73 65 74 20 66 65 61  1923 	.ascii "set feature"
             74 75 72 65
      00143A 0A                    1924 	.db 0x0a
      00143B 00                    1925 	.db 0x00
                                   1926 	.area CSEG    (CODE)
                                   1927 	.area CONST   (CODE)
      00143C                       1928 ___str_32:
      00143C 73 65 74 20 69 6E 74  1929 	.ascii "set interface"
             65 72 66 61 63 65
      001449 0A                    1930 	.db 0x0a
      00144A 00                    1931 	.db 0x00
                                   1932 	.area CSEG    (CODE)
                                   1933 	.area CONST   (CODE)
      00144B                       1934 ___str_33:
      00144B 55 53 42 20 63 6C 61  1935 	.ascii "USB class output request:"
             73 73 20 6F 75 74 70
             75 74 20 72 65 71 75
             65 73 74 3A
      001464 0A                    1936 	.db 0x0a
      001465 00                    1937 	.db 0x00
                                   1938 	.area CSEG    (CODE)
                                   1939 	.area CONST   (CODE)
      001466                       1940 ___str_34:
      001466 73 65 74 20 69 64 6C  1941 	.ascii "set idle"
             65
      00146E 0A                    1942 	.db 0x0a
      00146F 00                    1943 	.db 0x00
                                   1944 	.area CSEG    (CODE)
                                   1945 	.area CONST   (CODE)
      001470                       1946 ___str_35:
      001470 75 6E 6B 6E 6F 77 6E  1947 	.ascii "unknown request"
             20 72 65 71 75 65 73
             74
      00147F 0A                    1948 	.db 0x0a
      001480 00                    1949 	.db 0x00
                                   1950 	.area CSEG    (CODE)
                                   1951 	.area CONST   (CODE)
      001481                       1952 ___str_36:
      001481 55 53 42 20 76 65 6E  1953 	.ascii "USB vendor output request:"
             64 6F 72 20 6F 75 74
             70 75 74 20 72 65 71
             75 65 73 74 3A
      00149B 0A                    1954 	.db 0x0a
      00149C 00                    1955 	.db 0x00
                                   1956 	.area CSEG    (CODE)
                                   1957 	.area CONST   (CODE)
      00149D                       1958 ___str_37:
      00149D 45 72 72 6F 72 3A 20  1959 	.ascii "Error: undefined output request."
             75 6E 64 65 66 69 6E
             65 64 20 6F 75 74 70
             75 74 20 72 65 71 75
             65 73 74 2E
      0014BD 0A                    1960 	.db 0x0a
      0014BE 00                    1961 	.db 0x00
                                   1962 	.area CSEG    (CODE)
                                   1963 	.area CONST   (CODE)
      0014BF                       1964 ___str_38:
      0014BF 75 73 62 20 69 73 72  1965 	.ascii "usb isr ep0 in"
             20 65 70 30 20 69 6E
      0014CD 0A                    1966 	.db 0x0a
      0014CE 00                    1967 	.db 0x00
                                   1968 	.area CSEG    (CODE)
                                   1969 	.area CONST   (CODE)
      0014CF                       1970 ___str_39:
      0014CF 75 73 62 20 63 6F 72  1971 	.ascii "usb core ep1 out"
             65 20 65 70 31 20 6F
             75 74
      0014DF 0A                    1972 	.db 0x0a
      0014E0 00                    1973 	.db 0x00
                                   1974 	.area CSEG    (CODE)
                                   1975 	.area CONST   (CODE)
      0014E1                       1976 ___str_40:
      0014E1 75 73 62 20 63 6F 72  1977 	.ascii "usb core ep1 in"
             65 20 65 70 31 20 69
             6E
      0014F0 0A                    1978 	.db 0x0a
      0014F1 00                    1979 	.db 0x00
                                   1980 	.area CSEG    (CODE)
                                   1981 	.area CONST   (CODE)
      0014F2                       1982 ___str_41:
      0014F2 75 73 62 20 63 6F 72  1983 	.ascii "usb core ep2 out"
             65 20 65 70 32 20 6F
             75 74
      001502 0A                    1984 	.db 0x0a
      001503 00                    1985 	.db 0x00
                                   1986 	.area CSEG    (CODE)
                                   1987 	.area CONST   (CODE)
      001504                       1988 ___str_42:
      001504 75 73 62 20 63 6F 72  1989 	.ascii "usb core ep2 in"
             65 20 65 70 32 20 69
             6E
      001513 0A                    1990 	.db 0x0a
      001514 00                    1991 	.db 0x00
                                   1992 	.area CSEG    (CODE)
                                   1993 	.area XINIT   (CODE)
                                   1994 	.area CABS    (ABS,CODE)
