                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module key
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _init_timer0
                                     12 	.globl _delay_ms
                                     13 	.globl _TF2
                                     14 	.globl _EXF2
                                     15 	.globl _RCLK
                                     16 	.globl _TCLK
                                     17 	.globl _EXEN2
                                     18 	.globl _TR2
                                     19 	.globl _C_T2
                                     20 	.globl _CP_RL2
                                     21 	.globl _T2CON_7
                                     22 	.globl _T2CON_6
                                     23 	.globl _T2CON_5
                                     24 	.globl _T2CON_4
                                     25 	.globl _T2CON_3
                                     26 	.globl _T2CON_2
                                     27 	.globl _T2CON_1
                                     28 	.globl _T2CON_0
                                     29 	.globl _PT2
                                     30 	.globl _ET2
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _SM0
                                     75 	.globl _SM1
                                     76 	.globl _SM2
                                     77 	.globl _REN
                                     78 	.globl _TB8
                                     79 	.globl _RB8
                                     80 	.globl _TI
                                     81 	.globl _RI
                                     82 	.globl _P1_7
                                     83 	.globl _P1_6
                                     84 	.globl _P1_5
                                     85 	.globl _P1_4
                                     86 	.globl _P1_3
                                     87 	.globl _P1_2
                                     88 	.globl _P1_1
                                     89 	.globl _P1_0
                                     90 	.globl _TF1
                                     91 	.globl _TR1
                                     92 	.globl _TF0
                                     93 	.globl _TR0
                                     94 	.globl _IE1
                                     95 	.globl _IT1
                                     96 	.globl _IE0
                                     97 	.globl _IT0
                                     98 	.globl _P0_7
                                     99 	.globl _P0_6
                                    100 	.globl _P0_5
                                    101 	.globl _P0_4
                                    102 	.globl _P0_3
                                    103 	.globl _P0_2
                                    104 	.globl _P0_1
                                    105 	.globl _P0_0
                                    106 	.globl _TH2
                                    107 	.globl _TL2
                                    108 	.globl _RCAP2H
                                    109 	.globl _RCAP2L
                                    110 	.globl _T2CON
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _IP
                                    115 	.globl _P3
                                    116 	.globl _IE
                                    117 	.globl _P2
                                    118 	.globl _SBUF
                                    119 	.globl _SCON
                                    120 	.globl _P1
                                    121 	.globl _TH1
                                    122 	.globl _TH0
                                    123 	.globl _TL1
                                    124 	.globl _TL0
                                    125 	.globl _TMOD
                                    126 	.globl _TCON
                                    127 	.globl _PCON
                                    128 	.globl _DPH
                                    129 	.globl _DPL
                                    130 	.globl _SP
                                    131 	.globl _P0
                                    132 	.globl _KeyCanChange
                                    133 	.globl _KeyLast
                                    134 	.globl _KeyUp
                                    135 	.globl _KeyDown
                                    136 	.globl _KeyPress
                                    137 	.globl _KeyNoChangedTime
                                    138 	.globl _KeyOld
                                    139 	.globl _KeyCurrent
                                    140 	.globl _init_key_board
                                    141 	.globl _key_scan
                                    142 	.globl _key_scan_once
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000D0   166 _PSW	=	0x00d0
                           0000E0   167 _ACC	=	0x00e0
                           0000F0   168 _B	=	0x00f0
                           0000C8   169 _T2CON	=	0x00c8
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AF   224 _EA	=	0x00af
                           0000B0   225 _P3_0	=	0x00b0
                           0000B1   226 _P3_1	=	0x00b1
                           0000B2   227 _P3_2	=	0x00b2
                           0000B3   228 _P3_3	=	0x00b3
                           0000B4   229 _P3_4	=	0x00b4
                           0000B5   230 _P3_5	=	0x00b5
                           0000B6   231 _P3_6	=	0x00b6
                           0000B7   232 _P3_7	=	0x00b7
                           0000B0   233 _RXD	=	0x00b0
                           0000B1   234 _TXD	=	0x00b1
                           0000B2   235 _INT0	=	0x00b2
                           0000B3   236 _INT1	=	0x00b3
                           0000B4   237 _T0	=	0x00b4
                           0000B5   238 _T1	=	0x00b5
                           0000B6   239 _WR	=	0x00b6
                           0000B7   240 _RD	=	0x00b7
                           0000B8   241 _PX0	=	0x00b8
                           0000B9   242 _PT0	=	0x00b9
                           0000BA   243 _PX1	=	0x00ba
                           0000BB   244 _PT1	=	0x00bb
                           0000BC   245 _PS	=	0x00bc
                           0000D0   246 _P	=	0x00d0
                           0000D1   247 _F1	=	0x00d1
                           0000D2   248 _OV	=	0x00d2
                           0000D3   249 _RS0	=	0x00d3
                           0000D4   250 _RS1	=	0x00d4
                           0000D5   251 _F0	=	0x00d5
                           0000D6   252 _AC	=	0x00d6
                           0000D7   253 _CY	=	0x00d7
                           0000AD   254 _ET2	=	0x00ad
                           0000BD   255 _PT2	=	0x00bd
                           0000C8   256 _T2CON_0	=	0x00c8
                           0000C9   257 _T2CON_1	=	0x00c9
                           0000CA   258 _T2CON_2	=	0x00ca
                           0000CB   259 _T2CON_3	=	0x00cb
                           0000CC   260 _T2CON_4	=	0x00cc
                           0000CD   261 _T2CON_5	=	0x00cd
                           0000CE   262 _T2CON_6	=	0x00ce
                           0000CF   263 _T2CON_7	=	0x00cf
                           0000C8   264 _CP_RL2	=	0x00c8
                           0000C9   265 _C_T2	=	0x00c9
                           0000CA   266 _TR2	=	0x00ca
                           0000CB   267 _EXEN2	=	0x00cb
                           0000CC   268 _TCLK	=	0x00cc
                           0000CD   269 _RCLK	=	0x00cd
                           0000CE   270 _EXF2	=	0x00ce
                           0000CF   271 _TF2	=	0x00cf
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
      000008                        281 _key:
      000008                        282 	.ds 1
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable items in internal ram 
                                    285 ;--------------------------------------------------------
                                    286 ;--------------------------------------------------------
                                    287 ; indirectly addressable internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area ISEG    (DATA)
      000055                        290 _KeyCurrent::
      000055                        291 	.ds 1
      000056                        292 _KeyOld::
      000056                        293 	.ds 1
      000057                        294 _KeyNoChangedTime::
      000057                        295 	.ds 1
      000058                        296 _KeyPress::
      000058                        297 	.ds 1
      000059                        298 _KeyDown::
      000059                        299 	.ds 1
      00005A                        300 _KeyUp::
      00005A                        301 	.ds 1
      00005B                        302 _KeyLast::
      00005B                        303 	.ds 1
      00005C                        304 _KeyCanChange::
      00005C                        305 	.ds 1
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
                                    348 ;	src/key.c:29: static int8 key = 0;
      000082 75 08 00         [24]  349 	mov	_key,#0x00
                                    350 ;--------------------------------------------------------
                                    351 ; Home
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area HOME    (CODE)
                                    355 ;--------------------------------------------------------
                                    356 ; code
                                    357 ;--------------------------------------------------------
                                    358 	.area CSEG    (CODE)
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'init_key_board'
                                    361 ;------------------------------------------------------------
                                    362 ;	src/key.c:8: void init_key_board(void)
                                    363 ;	-----------------------------------------
                                    364 ;	 function init_key_board
                                    365 ;	-----------------------------------------
      0000BF                        366 _init_key_board:
                           000007   367 	ar7 = 0x07
                           000006   368 	ar6 = 0x06
                           000005   369 	ar5 = 0x05
                           000004   370 	ar4 = 0x04
                           000003   371 	ar3 = 0x03
                           000002   372 	ar2 = 0x02
                           000001   373 	ar1 = 0x01
                           000000   374 	ar0 = 0x00
                                    375 ;	src/key.c:10: KeyIO = 0xFF;
      0000BF 75 90 FF         [24]  376 	mov	_P1,#0xff
                                    377 ;	src/key.c:11: KeyPress = 0;
      0000C2 78 58            [12]  378 	mov	r0,#_KeyPress
      0000C4 76 00            [12]  379 	mov	@r0,#0x00
                                    380 ;	src/key.c:12: KeyNoChangedTime = 0;
      0000C6 78 57            [12]  381 	mov	r0,#_KeyNoChangedTime
      0000C8 76 00            [12]  382 	mov	@r0,#0x00
                                    383 ;	src/key.c:13: KeyOld = 0;
      0000CA 78 56            [12]  384 	mov	r0,#_KeyOld
      0000CC 76 00            [12]  385 	mov	@r0,#0x00
                                    386 ;	src/key.c:14: KeyCurrent = 0;
      0000CE 78 55            [12]  387 	mov	r0,#_KeyCurrent
      0000D0 76 00            [12]  388 	mov	@r0,#0x00
                                    389 ;	src/key.c:15: KeyLast = 0;
      0000D2 78 5B            [12]  390 	mov	r0,#_KeyLast
      0000D4 76 00            [12]  391 	mov	@r0,#0x00
                                    392 ;	src/key.c:16: KeyDown = 0;
      0000D6 78 59            [12]  393 	mov	r0,#_KeyDown
      0000D8 76 00            [12]  394 	mov	@r0,#0x00
                                    395 ;	src/key.c:17: KeyUp = 0;
      0000DA 78 5A            [12]  396 	mov	r0,#_KeyUp
      0000DC 76 00            [12]  397 	mov	@r0,#0x00
                                    398 ;	src/key.c:18: init_timer0();
      0000DE 12 06 E3         [24]  399 	lcall	_init_timer0
                                    400 ;	src/key.c:19: KeyCanChange = 1;
      0000E1 78 5C            [12]  401 	mov	r0,#_KeyCanChange
      0000E3 76 01            [12]  402 	mov	@r0,#0x01
                                    403 ;	src/key.c:20: }
      0000E5 22               [24]  404 	ret
                                    405 ;------------------------------------------------------------
                                    406 ;Allocation info for local variables in function 'key_scan'
                                    407 ;------------------------------------------------------------
                                    408 ;value                     Allocated to registers r7 
                                    409 ;------------------------------------------------------------
                                    410 ;	src/key.c:31: uint8 key_scan(void)
                                    411 ;	-----------------------------------------
                                    412 ;	 function key_scan
                                    413 ;	-----------------------------------------
      0000E6                        414 _key_scan:
                                    415 ;	src/key.c:33: uint8 value = 0;
      0000E6 7F 00            [12]  416 	mov	r7,#0x00
                                    417 ;	src/key.c:35: if (KEY != KEY_IDLE) {
      0000E8 74 FF            [12]  418 	mov	a,#0xff
      0000EA B5 90 02         [24]  419 	cjne	a,_P1,00163$
      0000ED 80 50            [24]  420 	sjmp	00120$
      0000EF                        421 00163$:
                                    422 ;	src/key.c:36: delay_ms(10);
      0000EF 90 00 0A         [24]  423 	mov	dptr,#0x000a
      0000F2 C0 07            [24]  424 	push	ar7
      0000F4 12 00 90         [24]  425 	lcall	_delay_ms
      0000F7 D0 07            [24]  426 	pop	ar7
                                    427 ;	src/key.c:37: if (KEY != KEY_IDLE) {
      0000F9 74 FF            [12]  428 	mov	a,#0xff
      0000FB B5 90 02         [24]  429 	cjne	a,_P1,00164$
      0000FE 80 3F            [24]  430 	sjmp	00120$
      000100                        431 00164$:
                                    432 ;	src/key.c:38: if (!(KEY & KEY_PRESS0))
      000100 E5 90            [12]  433 	mov	a,_P1
      000102 20 E0 02         [24]  434 	jb	acc.0,00102$
                                    435 ;	src/key.c:39: value |= KEY_PRESS0;
      000105 7F 01            [12]  436 	mov	r7,#0x01
      000107                        437 00102$:
                                    438 ;	src/key.c:40: if (!(KEY & KEY_PRESS1))
      000107 E5 90            [12]  439 	mov	a,_P1
      000109 20 E1 03         [24]  440 	jb	acc.1,00104$
                                    441 ;	src/key.c:41: value |= KEY_PRESS1;
      00010C 43 07 02         [24]  442 	orl	ar7,#0x02
      00010F                        443 00104$:
                                    444 ;	src/key.c:42: if (!(KEY & KEY_PRESS2))
      00010F E5 90            [12]  445 	mov	a,_P1
      000111 20 E2 03         [24]  446 	jb	acc.2,00106$
                                    447 ;	src/key.c:43: value |= KEY_PRESS2;
      000114 43 07 04         [24]  448 	orl	ar7,#0x04
      000117                        449 00106$:
                                    450 ;	src/key.c:44: if (!(KEY & KEY_PRESS3))
      000117 E5 90            [12]  451 	mov	a,_P1
      000119 20 E3 03         [24]  452 	jb	acc.3,00108$
                                    453 ;	src/key.c:45: value |= KEY_PRESS3;
      00011C 43 07 08         [24]  454 	orl	ar7,#0x08
      00011F                        455 00108$:
                                    456 ;	src/key.c:46: if (!(KEY & KEY_PRESS4))
      00011F E5 90            [12]  457 	mov	a,_P1
      000121 20 E4 03         [24]  458 	jb	acc.4,00110$
                                    459 ;	src/key.c:47: value |= KEY_PRESS4;
      000124 43 07 10         [24]  460 	orl	ar7,#0x10
      000127                        461 00110$:
                                    462 ;	src/key.c:48: if (!(KEY & KEY_PRESS5))
      000127 E5 90            [12]  463 	mov	a,_P1
      000129 20 E5 03         [24]  464 	jb	acc.5,00112$
                                    465 ;	src/key.c:49: value |= KEY_PRESS5;
      00012C 43 07 20         [24]  466 	orl	ar7,#0x20
      00012F                        467 00112$:
                                    468 ;	src/key.c:50: if (!(KEY & KEY_PRESS6))
      00012F E5 90            [12]  469 	mov	a,_P1
      000131 20 E6 03         [24]  470 	jb	acc.6,00114$
                                    471 ;	src/key.c:51: value |= KEY_PRESS6;
      000134 43 07 40         [24]  472 	orl	ar7,#0x40
      000137                        473 00114$:
                                    474 ;	src/key.c:52: if (!(KEY & KEY_PRESS7))
      000137 E5 90            [12]  475 	mov	a,_P1
      000139 20 E7 03         [24]  476 	jb	acc.7,00120$
                                    477 ;	src/key.c:53: value |= KEY_PRESS7;
      00013C 43 07 80         [24]  478 	orl	ar7,#0x80
      00013F                        479 00120$:
                                    480 ;	src/key.c:57: return value;
      00013F 8F 82            [24]  481 	mov	dpl,r7
                                    482 ;	src/key.c:58: }
      000141 22               [24]  483 	ret
                                    484 ;------------------------------------------------------------
                                    485 ;Allocation info for local variables in function 'key_scan_once'
                                    486 ;------------------------------------------------------------
                                    487 ;i                         Allocated to registers r5 r6 
                                    488 ;value                     Allocated to registers r7 
                                    489 ;------------------------------------------------------------
                                    490 ;	src/key.c:60: int8 key_scan_once(void)
                                    491 ;	-----------------------------------------
                                    492 ;	 function key_scan_once
                                    493 ;	-----------------------------------------
      000142                        494 _key_scan_once:
                                    495 ;	src/key.c:65: if (KEY != KEY_IDLE) {
      000142 74 FF            [12]  496 	mov	a,#0xff
      000144 B5 90 02         [24]  497 	cjne	a,_P1,00134$
      000147 80 45            [24]  498 	sjmp	00108$
      000149                        499 00134$:
                                    500 ;	src/key.c:66: delay_ms(10);
      000149 90 00 0A         [24]  501 	mov	dptr,#0x000a
      00014C 12 00 90         [24]  502 	lcall	_delay_ms
                                    503 ;	src/key.c:67: if (KEY != KEY_IDLE) {
      00014F 74 FF            [12]  504 	mov	a,#0xff
      000151 B5 90 02         [24]  505 	cjne	a,_P1,00135$
      000154 80 38            [24]  506 	sjmp	00108$
      000156                        507 00135$:
                                    508 ;	src/key.c:68: value = KEY;
      000156 AF 90            [24]  509 	mov	r7,_P1
                                    510 ;	src/key.c:69: for (i = 0; i < KEY_MAX_NUM; i++) {
      000158 7D 00            [12]  511 	mov	r5,#0x00
      00015A 7E 00            [12]  512 	mov	r6,#0x00
      00015C                        513 00109$:
                                    514 ;	src/key.c:70: if (!((value >> i) & 0x1) && (i != key))
      00015C 8D F0            [24]  515 	mov	b,r5
      00015E 05 F0            [12]  516 	inc	b
      000160 EF               [12]  517 	mov	a,r7
      000161 80 02            [24]  518 	sjmp	00137$
      000163                        519 00136$:
      000163 C3               [12]  520 	clr	c
      000164 13               [12]  521 	rrc	a
      000165                        522 00137$:
      000165 D5 F0 FB         [24]  523 	djnz	b,00136$
      000168 20 E0 13         [24]  524 	jb	acc.0,00110$
      00016B E5 08            [12]  525 	mov	a,_key
      00016D FB               [12]  526 	mov	r3,a
      00016E 33               [12]  527 	rlc	a
      00016F 95 E0            [12]  528 	subb	a,acc
      000171 FC               [12]  529 	mov	r4,a
      000172 ED               [12]  530 	mov	a,r5
      000173 B5 03 06         [24]  531 	cjne	a,ar3,00139$
      000176 EE               [12]  532 	mov	a,r6
      000177 B5 04 02         [24]  533 	cjne	a,ar4,00139$
      00017A 80 02            [24]  534 	sjmp	00110$
      00017C                        535 00139$:
                                    536 ;	src/key.c:71: key = i; 
      00017C 8D 08            [24]  537 	mov	_key,r5
      00017E                        538 00110$:
                                    539 ;	src/key.c:69: for (i = 0; i < KEY_MAX_NUM; i++) {
      00017E 0D               [12]  540 	inc	r5
      00017F BD 00 01         [24]  541 	cjne	r5,#0x00,00140$
      000182 0E               [12]  542 	inc	r6
      000183                        543 00140$:
      000183 C3               [12]  544 	clr	c
      000184 ED               [12]  545 	mov	a,r5
      000185 94 08            [12]  546 	subb	a,#0x08
      000187 EE               [12]  547 	mov	a,r6
      000188 64 80            [12]  548 	xrl	a,#0x80
      00018A 94 80            [12]  549 	subb	a,#0x80
      00018C 40 CE            [24]  550 	jc	00109$
      00018E                        551 00108$:
                                    552 ;	src/key.c:76: return key;
      00018E 85 08 82         [24]  553 	mov	dpl,_key
                                    554 ;	src/key.c:77: }
      000191 22               [24]  555 	ret
                                    556 	.area CSEG    (CODE)
                                    557 	.area CONST   (CODE)
                                    558 	.area XINIT   (CODE)
                                    559 	.area CABS    (ABS,CODE)
