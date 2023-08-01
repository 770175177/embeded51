                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module pdiusb
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _D12_select_endpoint
                                     12 	.globl _print_hex
                                     13 	.globl _print_long_int
                                     14 	.globl _Prints
                                     15 	.globl _TF2
                                     16 	.globl _EXF2
                                     17 	.globl _RCLK
                                     18 	.globl _TCLK
                                     19 	.globl _EXEN2
                                     20 	.globl _TR2
                                     21 	.globl _C_T2
                                     22 	.globl _CP_RL2
                                     23 	.globl _T2CON_7
                                     24 	.globl _T2CON_6
                                     25 	.globl _T2CON_5
                                     26 	.globl _T2CON_4
                                     27 	.globl _T2CON_3
                                     28 	.globl _T2CON_2
                                     29 	.globl _T2CON_1
                                     30 	.globl _T2CON_0
                                     31 	.globl _PT2
                                     32 	.globl _ET2
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _PS
                                     42 	.globl _PT1
                                     43 	.globl _PX1
                                     44 	.globl _PT0
                                     45 	.globl _PX0
                                     46 	.globl _RD
                                     47 	.globl _WR
                                     48 	.globl _T1
                                     49 	.globl _T0
                                     50 	.globl _INT1
                                     51 	.globl _INT0
                                     52 	.globl _TXD
                                     53 	.globl _RXD
                                     54 	.globl _P3_7
                                     55 	.globl _P3_6
                                     56 	.globl _P3_5
                                     57 	.globl _P3_4
                                     58 	.globl _P3_3
                                     59 	.globl _P3_2
                                     60 	.globl _P3_1
                                     61 	.globl _P3_0
                                     62 	.globl _EA
                                     63 	.globl _ES
                                     64 	.globl _ET1
                                     65 	.globl _EX1
                                     66 	.globl _ET0
                                     67 	.globl _EX0
                                     68 	.globl _P2_7
                                     69 	.globl _P2_6
                                     70 	.globl _P2_5
                                     71 	.globl _P2_4
                                     72 	.globl _P2_3
                                     73 	.globl _P2_2
                                     74 	.globl _P2_1
                                     75 	.globl _P2_0
                                     76 	.globl _SM0
                                     77 	.globl _SM1
                                     78 	.globl _SM2
                                     79 	.globl _REN
                                     80 	.globl _TB8
                                     81 	.globl _RB8
                                     82 	.globl _TI
                                     83 	.globl _RI
                                     84 	.globl _P1_7
                                     85 	.globl _P1_6
                                     86 	.globl _P1_5
                                     87 	.globl _P1_4
                                     88 	.globl _P1_3
                                     89 	.globl _P1_2
                                     90 	.globl _P1_1
                                     91 	.globl _P1_0
                                     92 	.globl _TF1
                                     93 	.globl _TR1
                                     94 	.globl _TF0
                                     95 	.globl _TR0
                                     96 	.globl _IE1
                                     97 	.globl _IT1
                                     98 	.globl _IE0
                                     99 	.globl _IT0
                                    100 	.globl _P0_7
                                    101 	.globl _P0_6
                                    102 	.globl _P0_5
                                    103 	.globl _P0_4
                                    104 	.globl _P0_3
                                    105 	.globl _P0_2
                                    106 	.globl _P0_1
                                    107 	.globl _P0_0
                                    108 	.globl _TH2
                                    109 	.globl _TL2
                                    110 	.globl _RCAP2H
                                    111 	.globl _RCAP2L
                                    112 	.globl _T2CON
                                    113 	.globl _B
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _IP
                                    117 	.globl _P3
                                    118 	.globl _IE
                                    119 	.globl _P2
                                    120 	.globl _SBUF
                                    121 	.globl _SCON
                                    122 	.globl _P1
                                    123 	.globl _TH1
                                    124 	.globl _TH0
                                    125 	.globl _TL1
                                    126 	.globl _TL0
                                    127 	.globl _TMOD
                                    128 	.globl _TCON
                                    129 	.globl _PCON
                                    130 	.globl _DPH
                                    131 	.globl _DPL
                                    132 	.globl _SP
                                    133 	.globl _P0
                                    134 	.globl _D12_write_endpoint_buffer_PARM_3
                                    135 	.globl _D12_write_endpoint_buffer_PARM_2
                                    136 	.globl _D12_read_endpoint_buffer_PARM_3
                                    137 	.globl _D12_read_endpoint_buffer_PARM_2
                                    138 	.globl _D12_write_command
                                    139 	.globl _D12_read_byte
                                    140 	.globl _D12_read_id
                                    141 	.globl _D12_write_byte
                                    142 	.globl _D12_read_endpoint_last_status
                                    143 	.globl _D12_read_endpoint_buffer
                                    144 	.globl _D12_clear_buffer
                                    145 	.globl _D12_Acknowlwdge_setup
                                    146 	.globl _D12_validate_buffer
                                    147 	.globl _D12_write_endpoint_buffer
                                    148 	.globl _D12_set_address
                                    149 	.globl _D12_set_endpoint_enable
                                    150 ;--------------------------------------------------------
                                    151 ; special function registers
                                    152 ;--------------------------------------------------------
                                    153 	.area RSEG    (ABS,DATA)
      000000                        154 	.org 0x0000
                           000080   155 _P0	=	0x0080
                           000081   156 _SP	=	0x0081
                           000082   157 _DPL	=	0x0082
                           000083   158 _DPH	=	0x0083
                           000087   159 _PCON	=	0x0087
                           000088   160 _TCON	=	0x0088
                           000089   161 _TMOD	=	0x0089
                           00008A   162 _TL0	=	0x008a
                           00008B   163 _TL1	=	0x008b
                           00008C   164 _TH0	=	0x008c
                           00008D   165 _TH1	=	0x008d
                           000090   166 _P1	=	0x0090
                           000098   167 _SCON	=	0x0098
                           000099   168 _SBUF	=	0x0099
                           0000A0   169 _P2	=	0x00a0
                           0000A8   170 _IE	=	0x00a8
                           0000B0   171 _P3	=	0x00b0
                           0000B8   172 _IP	=	0x00b8
                           0000D0   173 _PSW	=	0x00d0
                           0000E0   174 _ACC	=	0x00e0
                           0000F0   175 _B	=	0x00f0
                           0000C8   176 _T2CON	=	0x00c8
                           0000CA   177 _RCAP2L	=	0x00ca
                           0000CB   178 _RCAP2H	=	0x00cb
                           0000CC   179 _TL2	=	0x00cc
                           0000CD   180 _TH2	=	0x00cd
                                    181 ;--------------------------------------------------------
                                    182 ; special function bits
                                    183 ;--------------------------------------------------------
                                    184 	.area RSEG    (ABS,DATA)
      000000                        185 	.org 0x0000
                           000080   186 _P0_0	=	0x0080
                           000081   187 _P0_1	=	0x0081
                           000082   188 _P0_2	=	0x0082
                           000083   189 _P0_3	=	0x0083
                           000084   190 _P0_4	=	0x0084
                           000085   191 _P0_5	=	0x0085
                           000086   192 _P0_6	=	0x0086
                           000087   193 _P0_7	=	0x0087
                           000088   194 _IT0	=	0x0088
                           000089   195 _IE0	=	0x0089
                           00008A   196 _IT1	=	0x008a
                           00008B   197 _IE1	=	0x008b
                           00008C   198 _TR0	=	0x008c
                           00008D   199 _TF0	=	0x008d
                           00008E   200 _TR1	=	0x008e
                           00008F   201 _TF1	=	0x008f
                           000090   202 _P1_0	=	0x0090
                           000091   203 _P1_1	=	0x0091
                           000092   204 _P1_2	=	0x0092
                           000093   205 _P1_3	=	0x0093
                           000094   206 _P1_4	=	0x0094
                           000095   207 _P1_5	=	0x0095
                           000096   208 _P1_6	=	0x0096
                           000097   209 _P1_7	=	0x0097
                           000098   210 _RI	=	0x0098
                           000099   211 _TI	=	0x0099
                           00009A   212 _RB8	=	0x009a
                           00009B   213 _TB8	=	0x009b
                           00009C   214 _REN	=	0x009c
                           00009D   215 _SM2	=	0x009d
                           00009E   216 _SM1	=	0x009e
                           00009F   217 _SM0	=	0x009f
                           0000A0   218 _P2_0	=	0x00a0
                           0000A1   219 _P2_1	=	0x00a1
                           0000A2   220 _P2_2	=	0x00a2
                           0000A3   221 _P2_3	=	0x00a3
                           0000A4   222 _P2_4	=	0x00a4
                           0000A5   223 _P2_5	=	0x00a5
                           0000A6   224 _P2_6	=	0x00a6
                           0000A7   225 _P2_7	=	0x00a7
                           0000A8   226 _EX0	=	0x00a8
                           0000A9   227 _ET0	=	0x00a9
                           0000AA   228 _EX1	=	0x00aa
                           0000AB   229 _ET1	=	0x00ab
                           0000AC   230 _ES	=	0x00ac
                           0000AF   231 _EA	=	0x00af
                           0000B0   232 _P3_0	=	0x00b0
                           0000B1   233 _P3_1	=	0x00b1
                           0000B2   234 _P3_2	=	0x00b2
                           0000B3   235 _P3_3	=	0x00b3
                           0000B4   236 _P3_4	=	0x00b4
                           0000B5   237 _P3_5	=	0x00b5
                           0000B6   238 _P3_6	=	0x00b6
                           0000B7   239 _P3_7	=	0x00b7
                           0000B0   240 _RXD	=	0x00b0
                           0000B1   241 _TXD	=	0x00b1
                           0000B2   242 _INT0	=	0x00b2
                           0000B3   243 _INT1	=	0x00b3
                           0000B4   244 _T0	=	0x00b4
                           0000B5   245 _T1	=	0x00b5
                           0000B6   246 _WR	=	0x00b6
                           0000B7   247 _RD	=	0x00b7
                           0000B8   248 _PX0	=	0x00b8
                           0000B9   249 _PT0	=	0x00b9
                           0000BA   250 _PX1	=	0x00ba
                           0000BB   251 _PT1	=	0x00bb
                           0000BC   252 _PS	=	0x00bc
                           0000D0   253 _P	=	0x00d0
                           0000D1   254 _F1	=	0x00d1
                           0000D2   255 _OV	=	0x00d2
                           0000D3   256 _RS0	=	0x00d3
                           0000D4   257 _RS1	=	0x00d4
                           0000D5   258 _F0	=	0x00d5
                           0000D6   259 _AC	=	0x00d6
                           0000D7   260 _CY	=	0x00d7
                           0000AD   261 _ET2	=	0x00ad
                           0000BD   262 _PT2	=	0x00bd
                           0000C8   263 _T2CON_0	=	0x00c8
                           0000C9   264 _T2CON_1	=	0x00c9
                           0000CA   265 _T2CON_2	=	0x00ca
                           0000CB   266 _T2CON_3	=	0x00cb
                           0000CC   267 _T2CON_4	=	0x00cc
                           0000CD   268 _T2CON_5	=	0x00cd
                           0000CE   269 _T2CON_6	=	0x00ce
                           0000CF   270 _T2CON_7	=	0x00cf
                           0000C8   271 _CP_RL2	=	0x00c8
                           0000C9   272 _C_T2	=	0x00c9
                           0000CA   273 _TR2	=	0x00ca
                           0000CB   274 _EXEN2	=	0x00cb
                           0000CC   275 _TCLK	=	0x00cc
                           0000CD   276 _RCLK	=	0x00cd
                           0000CE   277 _EXF2	=	0x00ce
                           0000CF   278 _TF2	=	0x00cf
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable register banks
                                    281 ;--------------------------------------------------------
                                    282 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        283 	.ds 8
                                    284 ;--------------------------------------------------------
                                    285 ; internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area DSEG    (DATA)
      000014                        288 _D12_read_endpoint_buffer_PARM_2:
      000014                        289 	.ds 1
      000015                        290 _D12_read_endpoint_buffer_PARM_3:
      000015                        291 	.ds 3
      000018                        292 _D12_write_endpoint_buffer_PARM_2:
      000018                        293 	.ds 1
      000019                        294 _D12_write_endpoint_buffer_PARM_3:
      000019                        295 	.ds 3
                                    296 ;--------------------------------------------------------
                                    297 ; overlayable items in internal ram 
                                    298 ;--------------------------------------------------------
                                    299 	.area	OSEG    (OVR,DATA)
                                    300 	.area	OSEG    (OVR,DATA)
                                    301 	.area	OSEG    (OVR,DATA)
                                    302 ;--------------------------------------------------------
                                    303 ; indirectly addressable internal ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area ISEG    (DATA)
                                    306 ;--------------------------------------------------------
                                    307 ; absolute internal ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area IABS    (ABS,DATA)
                                    310 	.area IABS    (ABS,DATA)
                                    311 ;--------------------------------------------------------
                                    312 ; bit data
                                    313 ;--------------------------------------------------------
                                    314 	.area BSEG    (BIT)
                                    315 ;--------------------------------------------------------
                                    316 ; paged external ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area PSEG    (PAG,XDATA)
                                    319 ;--------------------------------------------------------
                                    320 ; external ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area XSEG    (XDATA)
                                    323 ;--------------------------------------------------------
                                    324 ; absolute external ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area XABS    (ABS,XDATA)
                                    327 ;--------------------------------------------------------
                                    328 ; external initialized ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area XISEG   (XDATA)
                                    331 	.area HOME    (CODE)
                                    332 	.area GSINIT0 (CODE)
                                    333 	.area GSINIT1 (CODE)
                                    334 	.area GSINIT2 (CODE)
                                    335 	.area GSINIT3 (CODE)
                                    336 	.area GSINIT4 (CODE)
                                    337 	.area GSINIT5 (CODE)
                                    338 	.area GSINIT  (CODE)
                                    339 	.area GSFINAL (CODE)
                                    340 	.area CSEG    (CODE)
                                    341 ;--------------------------------------------------------
                                    342 ; global & static initialisations
                                    343 ;--------------------------------------------------------
                                    344 	.area HOME    (CODE)
                                    345 	.area GSINIT  (CODE)
                                    346 	.area GSFINAL (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 ;--------------------------------------------------------
                                    349 ; Home
                                    350 ;--------------------------------------------------------
                                    351 	.area HOME    (CODE)
                                    352 	.area HOME    (CODE)
                                    353 ;--------------------------------------------------------
                                    354 ; code
                                    355 ;--------------------------------------------------------
                                    356 	.area CSEG    (CODE)
                                    357 ;------------------------------------------------------------
                                    358 ;Allocation info for local variables in function 'D12_write_command'
                                    359 ;------------------------------------------------------------
                                    360 ;command                   Allocated to registers r7 
                                    361 ;------------------------------------------------------------
                                    362 ;	src/pdiusb.c:5: void D12_write_command(uint8 command)
                                    363 ;	-----------------------------------------
                                    364 ;	 function D12_write_command
                                    365 ;	-----------------------------------------
      0004D7                        366 _D12_write_command:
                           000007   367 	ar7 = 0x07
                           000006   368 	ar6 = 0x06
                           000005   369 	ar5 = 0x05
                           000004   370 	ar4 = 0x04
                           000003   371 	ar3 = 0x03
                           000002   372 	ar2 = 0x02
                           000001   373 	ar1 = 0x01
                           000000   374 	ar0 = 0x00
      0004D7 AF 82            [24]  375 	mov	r7,dpl
                                    376 ;	src/pdiusb.c:7: D12_set_command_addr();
                                    377 ;	assignBit
      0004D9 D2 B5            [12]  378 	setb	_P3_5
                                    379 ;	src/pdiusb.c:8: D12_clr_wr();
                                    380 ;	assignBit
      0004DB C2 B6            [12]  381 	clr	_P3_6
                                    382 ;	src/pdiusb.c:10: D12_set_data(command);
      0004DD 8F 80            [24]  383 	mov	_P0,r7
                                    384 ;	src/pdiusb.c:11: D12_set_wr();
                                    385 ;	assignBit
      0004DF D2 B6            [12]  386 	setb	_P3_6
                                    387 ;	src/pdiusb.c:12: D12_set_port_in();
      0004E1 75 80 FF         [24]  388 	mov	_P0,#0xff
                                    389 ;	src/pdiusb.c:13: }
      0004E4 22               [24]  390 	ret
                                    391 ;------------------------------------------------------------
                                    392 ;Allocation info for local variables in function 'D12_read_byte'
                                    393 ;------------------------------------------------------------
                                    394 ;tmp                       Allocated to registers 
                                    395 ;------------------------------------------------------------
                                    396 ;	src/pdiusb.c:15: uint8 D12_read_byte(void)
                                    397 ;	-----------------------------------------
                                    398 ;	 function D12_read_byte
                                    399 ;	-----------------------------------------
      0004E5                        400 _D12_read_byte:
                                    401 ;	src/pdiusb.c:19: D12_set_data_addr();
                                    402 ;	assignBit
      0004E5 C2 B5            [12]  403 	clr	_P3_5
                                    404 ;	src/pdiusb.c:20: D12_clr_rd();
                                    405 ;	assignBit
      0004E7 C2 B7            [12]  406 	clr	_P3_7
                                    407 ;	src/pdiusb.c:21: tmp = D12_get_data();
      0004E9 85 80 82         [24]  408 	mov	dpl,_P0
                                    409 ;	src/pdiusb.c:22: D12_set_rd();
                                    410 ;	assignBit
      0004EC D2 B7            [12]  411 	setb	_P3_7
                                    412 ;	src/pdiusb.c:23: D12_set_rd();
                                    413 ;	assignBit
      0004EE D2 B7            [12]  414 	setb	_P3_7
                                    415 ;	src/pdiusb.c:25: return tmp;
                                    416 ;	src/pdiusb.c:26: }
      0004F0 22               [24]  417 	ret
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'D12_read_id'
                                    420 ;------------------------------------------------------------
                                    421 ;id                        Allocated to registers 
                                    422 ;------------------------------------------------------------
                                    423 ;	src/pdiusb.c:28: uint16 D12_read_id(void)
                                    424 ;	-----------------------------------------
                                    425 ;	 function D12_read_id
                                    426 ;	-----------------------------------------
      0004F1                        427 _D12_read_id:
                                    428 ;	src/pdiusb.c:32: D12_write_command(D12_CMD_READ_ID);
      0004F1 75 82 FD         [24]  429 	mov	dpl,#0xfd
      0004F4 12 04 D7         [24]  430 	lcall	_D12_write_command
                                    431 ;	src/pdiusb.c:33: id = D12_read_byte();
      0004F7 12 04 E5         [24]  432 	lcall	_D12_read_byte
      0004FA AF 82            [24]  433 	mov	r7,dpl
      0004FC 7E 00            [12]  434 	mov	r6,#0x00
                                    435 ;	src/pdiusb.c:34: id |= ((uint16)D12_read_byte()) << 8;
      0004FE C0 07            [24]  436 	push	ar7
      000500 C0 06            [24]  437 	push	ar6
      000502 12 04 E5         [24]  438 	lcall	_D12_read_byte
      000505 AD 82            [24]  439 	mov	r5,dpl
      000507 D0 06            [24]  440 	pop	ar6
      000509 D0 07            [24]  441 	pop	ar7
      00050B 8D 04            [24]  442 	mov	ar4,r5
      00050D E4               [12]  443 	clr	a
      00050E 4F               [12]  444 	orl	a,r7
      00050F F5 82            [12]  445 	mov	dpl,a
      000511 EC               [12]  446 	mov	a,r4
      000512 4E               [12]  447 	orl	a,r6
      000513 F5 83            [12]  448 	mov	dph,a
                                    449 ;	src/pdiusb.c:36: return id;
                                    450 ;	src/pdiusb.c:37: }
      000515 22               [24]  451 	ret
                                    452 ;------------------------------------------------------------
                                    453 ;Allocation info for local variables in function 'D12_write_byte'
                                    454 ;------------------------------------------------------------
                                    455 ;value                     Allocated to registers r7 
                                    456 ;------------------------------------------------------------
                                    457 ;	src/pdiusb.c:39: void D12_write_byte(uint8 value)
                                    458 ;	-----------------------------------------
                                    459 ;	 function D12_write_byte
                                    460 ;	-----------------------------------------
      000516                        461 _D12_write_byte:
      000516 AF 82            [24]  462 	mov	r7,dpl
                                    463 ;	src/pdiusb.c:41: D12_set_data_addr();
                                    464 ;	assignBit
      000518 C2 B5            [12]  465 	clr	_P3_5
                                    466 ;	src/pdiusb.c:42: D12_clr_wr();
                                    467 ;	assignBit
      00051A C2 B6            [12]  468 	clr	_P3_6
                                    469 ;	src/pdiusb.c:44: D12_set_data(value);
      00051C 8F 80            [24]  470 	mov	_P0,r7
                                    471 ;	src/pdiusb.c:45: D12_set_wr();
                                    472 ;	assignBit
      00051E D2 B6            [12]  473 	setb	_P3_6
                                    474 ;	src/pdiusb.c:46: D12_set_port_in();
      000520 75 80 FF         [24]  475 	mov	_P0,#0xff
                                    476 ;	src/pdiusb.c:47: }
      000523 22               [24]  477 	ret
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'D12_read_endpoint_last_status'
                                    480 ;------------------------------------------------------------
                                    481 ;endp                      Allocated to registers r7 
                                    482 ;------------------------------------------------------------
                                    483 ;	src/pdiusb.c:49: uint8 D12_read_endpoint_last_status(uint8 endp)
                                    484 ;	-----------------------------------------
                                    485 ;	 function D12_read_endpoint_last_status
                                    486 ;	-----------------------------------------
      000524                        487 _D12_read_endpoint_last_status:
      000524 AF 82            [24]  488 	mov	r7,dpl
                                    489 ;	src/pdiusb.c:51: D12_write_command(D12_INT_STATUS_EP_BASE + endp);
      000526 74 40            [12]  490 	mov	a,#0x40
      000528 2F               [12]  491 	add	a,r7
      000529 F5 82            [12]  492 	mov	dpl,a
      00052B 12 04 D7         [24]  493 	lcall	_D12_write_command
                                    494 ;	src/pdiusb.c:52: return D12_read_byte();
                                    495 ;	src/pdiusb.c:53: }
      00052E 02 04 E5         [24]  496 	ljmp	_D12_read_byte
                                    497 ;------------------------------------------------------------
                                    498 ;Allocation info for local variables in function 'D12_select_endpoint'
                                    499 ;------------------------------------------------------------
                                    500 ;endp                      Allocated to registers r7 
                                    501 ;------------------------------------------------------------
                                    502 ;	src/pdiusb.c:55: void D12_select_endpoint(uint8 endp)
                                    503 ;	-----------------------------------------
                                    504 ;	 function D12_select_endpoint
                                    505 ;	-----------------------------------------
      000531                        506 _D12_select_endpoint:
                                    507 ;	src/pdiusb.c:57: D12_write_command(0x00 + endp);
                                    508 ;	src/pdiusb.c:58: }
      000531 02 04 D7         [24]  509 	ljmp	_D12_write_command
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'D12_read_endpoint_buffer'
                                    512 ;------------------------------------------------------------
                                    513 ;len                       Allocated with name '_D12_read_endpoint_buffer_PARM_2'
                                    514 ;buf                       Allocated with name '_D12_read_endpoint_buffer_PARM_3'
                                    515 ;endp                      Allocated to registers r7 
                                    516 ;i                         Allocated to registers r7 
                                    517 ;j                         Allocated to registers r6 
                                    518 ;------------------------------------------------------------
                                    519 ;	src/pdiusb.c:60: uint8 D12_read_endpoint_buffer(uint8 endp, uint8 len, uint8 *buf)
                                    520 ;	-----------------------------------------
                                    521 ;	 function D12_read_endpoint_buffer
                                    522 ;	-----------------------------------------
      000534                        523 _D12_read_endpoint_buffer:
                                    524 ;	src/pdiusb.c:64: D12_select_endpoint(endp);
      000534 AF 82            [24]  525 	mov  r7,dpl
      000536 C0 07            [24]  526 	push	ar7
      000538 12 05 31         [24]  527 	lcall	_D12_select_endpoint
                                    528 ;	src/pdiusb.c:65: D12_write_command(D12_READ_BUFFER);
      00053B 75 82 F0         [24]  529 	mov	dpl,#0xf0
      00053E 12 04 D7         [24]  530 	lcall	_D12_write_command
                                    531 ;	src/pdiusb.c:66: D12_read_byte();                    /* dispart the first byte */
      000541 12 04 E5         [24]  532 	lcall	_D12_read_byte
                                    533 ;	src/pdiusb.c:67: j = D12_read_byte();                /* actual recieved data bytes bums */
      000544 12 04 E5         [24]  534 	lcall	_D12_read_byte
      000547 AE 82            [24]  535 	mov	r6,dpl
      000549 D0 07            [24]  536 	pop	ar7
                                    537 ;	src/pdiusb.c:68: if (j > len)                        /* when recieved data lagger than len */
      00054B C3               [12]  538 	clr	c
      00054C E5 14            [12]  539 	mov	a,_D12_read_endpoint_buffer_PARM_2
      00054E 9E               [12]  540 	subb	a,r6
      00054F 50 02            [24]  541 	jnc	00102$
                                    542 ;	src/pdiusb.c:69: j = len;                        /* only read len of data */
      000551 AE 14            [24]  543 	mov	r6,_D12_read_endpoint_buffer_PARM_2
      000553                        544 00102$:
                                    545 ;	src/pdiusb.c:71: Prints("read endpoint ");
      000553 90 10 28         [24]  546 	mov	dptr,#___str_0
      000556 75 F0 80         [24]  547 	mov	b,#0x80
      000559 C0 07            [24]  548 	push	ar7
      00055B C0 06            [24]  549 	push	ar6
      00055D 12 07 77         [24]  550 	lcall	_Prints
      000560 D0 06            [24]  551 	pop	ar6
      000562 D0 07            [24]  552 	pop	ar7
                                    553 ;	src/pdiusb.c:72: print_long_int(endp / 2);
      000564 7D 00            [12]  554 	mov	r5,#0x00
      000566 75 1C 02         [24]  555 	mov	__divsint_PARM_2,#0x02
                                    556 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000569 8D 1D            [24]  557 	mov	(__divsint_PARM_2 + 1),r5
      00056B 8F 82            [24]  558 	mov	dpl,r7
      00056D 8D 83            [24]  559 	mov	dph,r5
      00056F C0 06            [24]  560 	push	ar6
      000571 12 0F D4         [24]  561 	lcall	__divsint
      000574 12 07 E9         [24]  562 	lcall	_print_long_int
                                    563 ;	src/pdiusb.c:73: Prints(" buffer ");
      000577 90 10 37         [24]  564 	mov	dptr,#___str_1
      00057A 75 F0 80         [24]  565 	mov	b,#0x80
      00057D 12 07 77         [24]  566 	lcall	_Prints
      000580 D0 06            [24]  567 	pop	ar6
                                    568 ;	src/pdiusb.c:74: print_long_int(j);
      000582 8E 05            [24]  569 	mov	ar5,r6
      000584 7F 00            [12]  570 	mov	r7,#0x00
      000586 8D 82            [24]  571 	mov	dpl,r5
      000588 8F 83            [24]  572 	mov	dph,r7
      00058A C0 06            [24]  573 	push	ar6
      00058C 12 07 E9         [24]  574 	lcall	_print_long_int
                                    575 ;	src/pdiusb.c:75: Prints(" bytes\n");
      00058F 90 10 40         [24]  576 	mov	dptr,#___str_2
      000592 75 F0 80         [24]  577 	mov	b,#0x80
      000595 12 07 77         [24]  578 	lcall	_Prints
      000598 D0 06            [24]  579 	pop	ar6
                                    580 ;	src/pdiusb.c:77: for (i = 0; i < j; i++) {
      00059A 7F 00            [12]  581 	mov	r7,#0x00
      00059C                        582 00109$:
      00059C C3               [12]  583 	clr	c
      00059D EF               [12]  584 	mov	a,r7
      00059E 9E               [12]  585 	subb	a,r6
      00059F 50 65            [24]  586 	jnc	00105$
                                    587 ;	src/pdiusb.c:78: D12_clr_rd();
                                    588 ;	assignBit
      0005A1 C2 B7            [12]  589 	clr	_P3_7
                                    590 ;	src/pdiusb.c:79: *(buf + i) = D12_get_data();    /* read 1 byte */
      0005A3 EF               [12]  591 	mov	a,r7
      0005A4 25 15            [12]  592 	add	a,_D12_read_endpoint_buffer_PARM_3
      0005A6 FB               [12]  593 	mov	r3,a
      0005A7 E4               [12]  594 	clr	a
      0005A8 35 16            [12]  595 	addc	a,(_D12_read_endpoint_buffer_PARM_3 + 1)
      0005AA FC               [12]  596 	mov	r4,a
      0005AB AD 17            [24]  597 	mov	r5,(_D12_read_endpoint_buffer_PARM_3 + 2)
      0005AD 8B 82            [24]  598 	mov	dpl,r3
      0005AF 8C 83            [24]  599 	mov	dph,r4
      0005B1 8D F0            [24]  600 	mov	b,r5
      0005B3 E5 80            [12]  601 	mov	a,_P0
      0005B5 12 0F 1A         [24]  602 	lcall	__gptrput
                                    603 ;	src/pdiusb.c:80: D12_set_rd();                   /* RD = 1 */
                                    604 ;	assignBit
      0005B8 D2 B7            [12]  605 	setb	_P3_7
                                    606 ;	src/pdiusb.c:82: print_hex(*(buf + i));
      0005BA 8B 82            [24]  607 	mov	dpl,r3
      0005BC 8C 83            [24]  608 	mov	dph,r4
      0005BE 8D F0            [24]  609 	mov	b,r5
      0005C0 12 0F 82         [24]  610 	lcall	__gptrget
      0005C3 F5 82            [12]  611 	mov	dpl,a
      0005C5 C0 07            [24]  612 	push	ar7
      0005C7 C0 06            [24]  613 	push	ar6
      0005C9 12 08 6C         [24]  614 	lcall	_print_hex
      0005CC D0 06            [24]  615 	pop	ar6
      0005CE D0 07            [24]  616 	pop	ar7
                                    617 ;	src/pdiusb.c:83: if(((i + 1) % 16) == 0)
      0005D0 8F 04            [24]  618 	mov	ar4,r7
      0005D2 7D 00            [12]  619 	mov	r5,#0x00
      0005D4 8C 82            [24]  620 	mov	dpl,r4
      0005D6 8D 83            [24]  621 	mov	dph,r5
      0005D8 A3               [24]  622 	inc	dptr
      0005D9 75 1C 10         [24]  623 	mov	__modsint_PARM_2,#0x10
                                    624 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0005DC 8D 1D            [24]  625 	mov	(__modsint_PARM_2 + 1),r5
      0005DE C0 07            [24]  626 	push	ar7
      0005E0 C0 06            [24]  627 	push	ar6
      0005E2 12 0F 9E         [24]  628 	lcall	__modsint
      0005E5 E5 82            [12]  629 	mov	a,dpl
      0005E7 85 83 F0         [24]  630 	mov	b,dph
      0005EA D0 06            [24]  631 	pop	ar6
      0005EC D0 07            [24]  632 	pop	ar7
      0005EE 45 F0            [12]  633 	orl	a,b
      0005F0 70 11            [24]  634 	jnz	00110$
                                    635 ;	src/pdiusb.c:84: Prints("\n");
      0005F2 90 10 48         [24]  636 	mov	dptr,#___str_3
      0005F5 75 F0 80         [24]  637 	mov	b,#0x80
      0005F8 C0 07            [24]  638 	push	ar7
      0005FA C0 06            [24]  639 	push	ar6
      0005FC 12 07 77         [24]  640 	lcall	_Prints
      0005FF D0 06            [24]  641 	pop	ar6
      000601 D0 07            [24]  642 	pop	ar7
      000603                        643 00110$:
                                    644 ;	src/pdiusb.c:77: for (i = 0; i < j; i++) {
      000603 0F               [12]  645 	inc	r7
      000604 80 96            [24]  646 	sjmp	00109$
      000606                        647 00105$:
                                    648 ;	src/pdiusb.c:88: if ((j % 16) != 0)
      000606 EE               [12]  649 	mov	a,r6
      000607 54 0F            [12]  650 	anl	a,#0x0f
      000609 60 0D            [24]  651 	jz	00107$
                                    652 ;	src/pdiusb.c:89: Prints("\n");
      00060B 90 10 48         [24]  653 	mov	dptr,#___str_3
      00060E 75 F0 80         [24]  654 	mov	b,#0x80
      000611 C0 06            [24]  655 	push	ar6
      000613 12 07 77         [24]  656 	lcall	_Prints
      000616 D0 06            [24]  657 	pop	ar6
      000618                        658 00107$:
                                    659 ;	src/pdiusb.c:92: return j;
      000618 8E 82            [24]  660 	mov	dpl,r6
                                    661 ;	src/pdiusb.c:93: }
      00061A 22               [24]  662 	ret
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'D12_clear_buffer'
                                    665 ;------------------------------------------------------------
                                    666 ;	src/pdiusb.c:95: void D12_clear_buffer(void)
                                    667 ;	-----------------------------------------
                                    668 ;	 function D12_clear_buffer
                                    669 ;	-----------------------------------------
      00061B                        670 _D12_clear_buffer:
                                    671 ;	src/pdiusb.c:97: D12_write_command(D12_DATA_BUFFER_CLR);
      00061B 75 82 F2         [24]  672 	mov	dpl,#0xf2
                                    673 ;	src/pdiusb.c:98: }
      00061E 02 04 D7         [24]  674 	ljmp	_D12_write_command
                                    675 ;------------------------------------------------------------
                                    676 ;Allocation info for local variables in function 'D12_Acknowlwdge_setup'
                                    677 ;------------------------------------------------------------
                                    678 ;	src/pdiusb.c:100: void D12_Acknowlwdge_setup(void)
                                    679 ;	-----------------------------------------
                                    680 ;	 function D12_Acknowlwdge_setup
                                    681 ;	-----------------------------------------
      000621                        682 _D12_Acknowlwdge_setup:
                                    683 ;	src/pdiusb.c:102: D12_select_endpoint(1);             /* select endpoint 0 input */
      000621 75 82 01         [24]  684 	mov	dpl,#0x01
      000624 12 05 31         [24]  685 	lcall	_D12_select_endpoint
                                    686 ;	src/pdiusb.c:103: D12_write_command(D12_ACKNOWLEDGE_SETUP);
      000627 75 82 F1         [24]  687 	mov	dpl,#0xf1
      00062A 12 04 D7         [24]  688 	lcall	_D12_write_command
                                    689 ;	src/pdiusb.c:104: D12_select_endpoint(0);             /* select endpoint 1 output */
      00062D 75 82 00         [24]  690 	mov	dpl,#0x00
      000630 12 05 31         [24]  691 	lcall	_D12_select_endpoint
                                    692 ;	src/pdiusb.c:105: D12_write_command(D12_ACKNOWLEDGE_SETUP);
      000633 75 82 F1         [24]  693 	mov	dpl,#0xf1
                                    694 ;	src/pdiusb.c:106: }
      000636 02 04 D7         [24]  695 	ljmp	_D12_write_command
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'D12_validate_buffer'
                                    698 ;------------------------------------------------------------
                                    699 ;	src/pdiusb.c:108: void D12_validate_buffer(void)
                                    700 ;	-----------------------------------------
                                    701 ;	 function D12_validate_buffer
                                    702 ;	-----------------------------------------
      000639                        703 _D12_validate_buffer:
                                    704 ;	src/pdiusb.c:110: D12_write_command(D12_VALIDATE_BUFFER);
      000639 75 82 FA         [24]  705 	mov	dpl,#0xfa
                                    706 ;	src/pdiusb.c:111: }
      00063C 02 04 D7         [24]  707 	ljmp	_D12_write_command
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'D12_write_endpoint_buffer'
                                    710 ;------------------------------------------------------------
                                    711 ;len                       Allocated with name '_D12_write_endpoint_buffer_PARM_2'
                                    712 ;buf                       Allocated with name '_D12_write_endpoint_buffer_PARM_3'
                                    713 ;endp                      Allocated to registers r7 
                                    714 ;i                         Allocated to registers r7 
                                    715 ;------------------------------------------------------------
                                    716 ;	src/pdiusb.c:114: uint8 D12_write_endpoint_buffer(uint8 endp, uint8 len, uint8 *buf)
                                    717 ;	-----------------------------------------
                                    718 ;	 function D12_write_endpoint_buffer
                                    719 ;	-----------------------------------------
      00063F                        720 _D12_write_endpoint_buffer:
                                    721 ;	src/pdiusb.c:118: D12_select_endpoint(endp);
      00063F AF 82            [24]  722 	mov  r7,dpl
      000641 C0 07            [24]  723 	push	ar7
      000643 12 05 31         [24]  724 	lcall	_D12_select_endpoint
                                    725 ;	src/pdiusb.c:119: D12_write_command(D12_WRITE_BUFFER);
      000646 75 82 F0         [24]  726 	mov	dpl,#0xf0
      000649 12 04 D7         [24]  727 	lcall	_D12_write_command
                                    728 ;	src/pdiusb.c:120: D12_write_byte(0);              /* before write buffer, must write a byte 0 */
      00064C 75 82 00         [24]  729 	mov	dpl,#0x00
      00064F 12 05 16         [24]  730 	lcall	_D12_write_byte
                                    731 ;	src/pdiusb.c:121: D12_write_byte(len);
      000652 85 18 82         [24]  732 	mov	dpl,_D12_write_endpoint_buffer_PARM_2
      000655 12 05 16         [24]  733 	lcall	_D12_write_byte
                                    734 ;	src/pdiusb.c:124: Prints("write endpoint ");
      000658 90 10 4A         [24]  735 	mov	dptr,#___str_4
      00065B 75 F0 80         [24]  736 	mov	b,#0x80
      00065E 12 07 77         [24]  737 	lcall	_Prints
      000661 D0 07            [24]  738 	pop	ar7
                                    739 ;	src/pdiusb.c:125: print_long_int(endp / 2);
      000663 7E 00            [12]  740 	mov	r6,#0x00
      000665 75 1C 02         [24]  741 	mov	__divsint_PARM_2,#0x02
                                    742 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000668 8E 1D            [24]  743 	mov	(__divsint_PARM_2 + 1),r6
      00066A 8F 82            [24]  744 	mov	dpl,r7
      00066C 8E 83            [24]  745 	mov	dph,r6
      00066E 12 0F D4         [24]  746 	lcall	__divsint
      000671 12 07 E9         [24]  747 	lcall	_print_long_int
                                    748 ;	src/pdiusb.c:126: Prints(" buffer ");
      000674 90 10 37         [24]  749 	mov	dptr,#___str_1
      000677 75 F0 80         [24]  750 	mov	b,#0x80
      00067A 12 07 77         [24]  751 	lcall	_Prints
                                    752 ;	src/pdiusb.c:127: print_long_int(len);
      00067D AE 18            [24]  753 	mov	r6,_D12_write_endpoint_buffer_PARM_2
      00067F 7F 00            [12]  754 	mov	r7,#0x00
      000681 8E 82            [24]  755 	mov	dpl,r6
      000683 8F 83            [24]  756 	mov	dph,r7
      000685 12 07 E9         [24]  757 	lcall	_print_long_int
                                    758 ;	src/pdiusb.c:128: Prints(" bytes\n");
      000688 90 10 40         [24]  759 	mov	dptr,#___str_2
      00068B 75 F0 80         [24]  760 	mov	b,#0x80
      00068E 12 07 77         [24]  761 	lcall	_Prints
                                    762 ;	src/pdiusb.c:133: for(i = 0; i < len; i++) {
      000691 7F 00            [12]  763 	mov	r7,#0x00
      000693                        764 00107$:
      000693 C3               [12]  765 	clr	c
      000694 EF               [12]  766 	mov	a,r7
      000695 95 18            [12]  767 	subb	a,_D12_write_endpoint_buffer_PARM_2
      000697 50 59            [24]  768 	jnc	00103$
                                    769 ;	src/pdiusb.c:134: D12_clr_wr();               /* WR is low */
                                    770 ;	assignBit
      000699 C2 B6            [12]  771 	clr	_P3_6
                                    772 ;	src/pdiusb.c:135: D12_set_data(*(buf + i));   /* put date to data line */
      00069B EF               [12]  773 	mov	a,r7
      00069C 25 19            [12]  774 	add	a,_D12_write_endpoint_buffer_PARM_3
      00069E FC               [12]  775 	mov	r4,a
      00069F E4               [12]  776 	clr	a
      0006A0 35 1A            [12]  777 	addc	a,(_D12_write_endpoint_buffer_PARM_3 + 1)
      0006A2 FD               [12]  778 	mov	r5,a
      0006A3 AE 1B            [24]  779 	mov	r6,(_D12_write_endpoint_buffer_PARM_3 + 2)
      0006A5 8C 82            [24]  780 	mov	dpl,r4
      0006A7 8D 83            [24]  781 	mov	dph,r5
      0006A9 8E F0            [24]  782 	mov	b,r6
      0006AB 12 0F 82         [24]  783 	lcall	__gptrget
      0006AE F5 80            [12]  784 	mov	_P0,a
                                    785 ;	src/pdiusb.c:136: D12_set_wr();               /* WR is high, complete 1 byte write */
                                    786 ;	assignBit
      0006B0 D2 B6            [12]  787 	setb	_P3_6
                                    788 ;	src/pdiusb.c:138: print_hex(*(buf + i));
      0006B2 8C 82            [24]  789 	mov	dpl,r4
      0006B4 8D 83            [24]  790 	mov	dph,r5
      0006B6 8E F0            [24]  791 	mov	b,r6
      0006B8 12 0F 82         [24]  792 	lcall	__gptrget
      0006BB F5 82            [12]  793 	mov	dpl,a
      0006BD C0 07            [24]  794 	push	ar7
      0006BF 12 08 6C         [24]  795 	lcall	_print_hex
      0006C2 D0 07            [24]  796 	pop	ar7
                                    797 ;	src/pdiusb.c:139: if (((i + 1) % 16) == 0)
      0006C4 8F 05            [24]  798 	mov	ar5,r7
      0006C6 7E 00            [12]  799 	mov	r6,#0x00
      0006C8 8D 82            [24]  800 	mov	dpl,r5
      0006CA 8E 83            [24]  801 	mov	dph,r6
      0006CC A3               [24]  802 	inc	dptr
      0006CD 75 1C 10         [24]  803 	mov	__modsint_PARM_2,#0x10
                                    804 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0006D0 8E 1D            [24]  805 	mov	(__modsint_PARM_2 + 1),r6
      0006D2 C0 07            [24]  806 	push	ar7
      0006D4 12 0F 9E         [24]  807 	lcall	__modsint
      0006D7 E5 82            [12]  808 	mov	a,dpl
      0006D9 85 83 F0         [24]  809 	mov	b,dph
      0006DC D0 07            [24]  810 	pop	ar7
      0006DE 45 F0            [12]  811 	orl	a,b
      0006E0 70 0D            [24]  812 	jnz	00108$
                                    813 ;	src/pdiusb.c:140: Prints("\n");
      0006E2 90 10 48         [24]  814 	mov	dptr,#___str_3
      0006E5 75 F0 80         [24]  815 	mov	b,#0x80
      0006E8 C0 07            [24]  816 	push	ar7
      0006EA 12 07 77         [24]  817 	lcall	_Prints
      0006ED D0 07            [24]  818 	pop	ar7
      0006EF                        819 00108$:
                                    820 ;	src/pdiusb.c:133: for(i = 0; i < len; i++) {
      0006EF 0F               [12]  821 	inc	r7
      0006F0 80 A1            [24]  822 	sjmp	00107$
      0006F2                        823 00103$:
                                    824 ;	src/pdiusb.c:144: if ((len % 16) != 0)
      0006F2 E5 18            [12]  825 	mov	a,_D12_write_endpoint_buffer_PARM_2
      0006F4 54 0F            [12]  826 	anl	a,#0x0f
      0006F6 60 09            [24]  827 	jz	00105$
                                    828 ;	src/pdiusb.c:145: Prints("\n");
      0006F8 90 10 48         [24]  829 	mov	dptr,#___str_3
      0006FB 75 F0 80         [24]  830 	mov	b,#0x80
      0006FE 12 07 77         [24]  831 	lcall	_Prints
      000701                        832 00105$:
                                    833 ;	src/pdiusb.c:147: D12_set_port_in();              /* data direction switch to in */
      000701 75 80 FF         [24]  834 	mov	_P0,#0xff
                                    835 ;	src/pdiusb.c:148: D12_validate_buffer();
      000704 12 06 39         [24]  836 	lcall	_D12_validate_buffer
                                    837 ;	src/pdiusb.c:150: return len;
      000707 85 18 82         [24]  838 	mov	dpl,_D12_write_endpoint_buffer_PARM_2
                                    839 ;	src/pdiusb.c:151: }
      00070A 22               [24]  840 	ret
                                    841 ;------------------------------------------------------------
                                    842 ;Allocation info for local variables in function 'D12_set_address'
                                    843 ;------------------------------------------------------------
                                    844 ;addr                      Allocated to registers r7 
                                    845 ;------------------------------------------------------------
                                    846 ;	src/pdiusb.c:153: void D12_set_address(uint8 addr)
                                    847 ;	-----------------------------------------
                                    848 ;	 function D12_set_address
                                    849 ;	-----------------------------------------
      00070B                        850 _D12_set_address:
      00070B AF 82            [24]  851 	mov	r7,dpl
                                    852 ;	src/pdiusb.c:155: D12_write_command(D12_SET_ADDRESS_ENABLE);
      00070D 75 82 D0         [24]  853 	mov	dpl,#0xd0
      000710 C0 07            [24]  854 	push	ar7
      000712 12 04 D7         [24]  855 	lcall	_D12_write_command
      000715 D0 07            [24]  856 	pop	ar7
                                    857 ;	src/pdiusb.c:156: D12_write_byte(0x80 | addr);
      000717 74 80            [12]  858 	mov	a,#0x80
      000719 4F               [12]  859 	orl	a,r7
      00071A F5 82            [12]  860 	mov	dpl,a
                                    861 ;	src/pdiusb.c:157: }
      00071C 02 05 16         [24]  862 	ljmp	_D12_write_byte
                                    863 ;------------------------------------------------------------
                                    864 ;Allocation info for local variables in function 'D12_set_endpoint_enable'
                                    865 ;------------------------------------------------------------
                                    866 ;enable                    Allocated to registers r7 
                                    867 ;------------------------------------------------------------
                                    868 ;	src/pdiusb.c:159: void D12_set_endpoint_enable(uint8 enable)
                                    869 ;	-----------------------------------------
                                    870 ;	 function D12_set_endpoint_enable
                                    871 ;	-----------------------------------------
      00071F                        872 _D12_set_endpoint_enable:
      00071F AF 82            [24]  873 	mov	r7,dpl
                                    874 ;	src/pdiusb.c:161: D12_write_command(D12_SET_ENDPOINT_ENABLE);
      000721 75 82 D8         [24]  875 	mov	dpl,#0xd8
      000724 C0 07            [24]  876 	push	ar7
      000726 12 04 D7         [24]  877 	lcall	_D12_write_command
      000729 D0 07            [24]  878 	pop	ar7
                                    879 ;	src/pdiusb.c:162: if (enable != 0)
      00072B EF               [12]  880 	mov	a,r7
      00072C 60 06            [24]  881 	jz	00102$
                                    882 ;	src/pdiusb.c:163: D12_write_byte(0x01);
      00072E 75 82 01         [24]  883 	mov	dpl,#0x01
      000731 02 05 16         [24]  884 	ljmp	_D12_write_byte
      000734                        885 00102$:
                                    886 ;	src/pdiusb.c:165: D12_write_byte(0x00);
      000734 75 82 00         [24]  887 	mov	dpl,#0x00
                                    888 ;	src/pdiusb.c:166: }
      000737 02 05 16         [24]  889 	ljmp	_D12_write_byte
                                    890 	.area CSEG    (CODE)
                                    891 	.area CONST   (CODE)
                                    892 	.area CONST   (CODE)
      001028                        893 ___str_0:
      001028 72 65 61 64 20 65 6E   894 	.ascii "read endpoint "
             64 70 6F 69 6E 74 20
      001036 00                     895 	.db 0x00
                                    896 	.area CSEG    (CODE)
                                    897 	.area CONST   (CODE)
      001037                        898 ___str_1:
      001037 20 62 75 66 66 65 72   899 	.ascii " buffer "
             20
      00103F 00                     900 	.db 0x00
                                    901 	.area CSEG    (CODE)
                                    902 	.area CONST   (CODE)
      001040                        903 ___str_2:
      001040 20 62 79 74 65 73      904 	.ascii " bytes"
      001046 0A                     905 	.db 0x0a
      001047 00                     906 	.db 0x00
                                    907 	.area CSEG    (CODE)
                                    908 	.area CONST   (CODE)
      001048                        909 ___str_3:
      001048 0A                     910 	.db 0x0a
      001049 00                     911 	.db 0x00
                                    912 	.area CSEG    (CODE)
                                    913 	.area CONST   (CODE)
      00104A                        914 ___str_4:
      00104A 77 72 69 74 65 20 65   915 	.ascii "write endpoint "
             6E 64 70 6F 69 6E 74
             20
      001059 00                     916 	.db 0x00
                                    917 	.area CSEG    (CODE)
                                    918 	.area XINIT   (CODE)
                                    919 	.area CABS    (ABS,CODE)
