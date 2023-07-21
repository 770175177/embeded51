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
                                     11 	.globl _delay_ms
                                     12 	.globl _TF2
                                     13 	.globl _EXF2
                                     14 	.globl _RCLK
                                     15 	.globl _TCLK
                                     16 	.globl _EXEN2
                                     17 	.globl _TR2
                                     18 	.globl _C_T2
                                     19 	.globl _CP_RL2
                                     20 	.globl _T2CON_7
                                     21 	.globl _T2CON_6
                                     22 	.globl _T2CON_5
                                     23 	.globl _T2CON_4
                                     24 	.globl _T2CON_3
                                     25 	.globl _T2CON_2
                                     26 	.globl _T2CON_1
                                     27 	.globl _T2CON_0
                                     28 	.globl _PT2
                                     29 	.globl _ET2
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _TF1
                                     90 	.globl _TR1
                                     91 	.globl _TF0
                                     92 	.globl _TR0
                                     93 	.globl _IE1
                                     94 	.globl _IT1
                                     95 	.globl _IE0
                                     96 	.globl _IT0
                                     97 	.globl _P0_7
                                     98 	.globl _P0_6
                                     99 	.globl _P0_5
                                    100 	.globl _P0_4
                                    101 	.globl _P0_3
                                    102 	.globl _P0_2
                                    103 	.globl _P0_1
                                    104 	.globl _P0_0
                                    105 	.globl _TH2
                                    106 	.globl _TL2
                                    107 	.globl _RCAP2H
                                    108 	.globl _RCAP2L
                                    109 	.globl _T2CON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _IP
                                    114 	.globl _P3
                                    115 	.globl _IE
                                    116 	.globl _P2
                                    117 	.globl _SBUF
                                    118 	.globl _SCON
                                    119 	.globl _P1
                                    120 	.globl _TH1
                                    121 	.globl _TH0
                                    122 	.globl _TL1
                                    123 	.globl _TL0
                                    124 	.globl _TMOD
                                    125 	.globl _TCON
                                    126 	.globl _PCON
                                    127 	.globl _DPH
                                    128 	.globl _DPL
                                    129 	.globl _SP
                                    130 	.globl _P0
                                    131 	.globl _key_scan
                                    132 	.globl _key_scan_once
                                    133 ;--------------------------------------------------------
                                    134 ; special function registers
                                    135 ;--------------------------------------------------------
                                    136 	.area RSEG    (ABS,DATA)
      000000                        137 	.org 0x0000
                           000080   138 _P0	=	0x0080
                           000081   139 _SP	=	0x0081
                           000082   140 _DPL	=	0x0082
                           000083   141 _DPH	=	0x0083
                           000087   142 _PCON	=	0x0087
                           000088   143 _TCON	=	0x0088
                           000089   144 _TMOD	=	0x0089
                           00008A   145 _TL0	=	0x008a
                           00008B   146 _TL1	=	0x008b
                           00008C   147 _TH0	=	0x008c
                           00008D   148 _TH1	=	0x008d
                           000090   149 _P1	=	0x0090
                           000098   150 _SCON	=	0x0098
                           000099   151 _SBUF	=	0x0099
                           0000A0   152 _P2	=	0x00a0
                           0000A8   153 _IE	=	0x00a8
                           0000B0   154 _P3	=	0x00b0
                           0000B8   155 _IP	=	0x00b8
                           0000D0   156 _PSW	=	0x00d0
                           0000E0   157 _ACC	=	0x00e0
                           0000F0   158 _B	=	0x00f0
                           0000C8   159 _T2CON	=	0x00c8
                           0000CA   160 _RCAP2L	=	0x00ca
                           0000CB   161 _RCAP2H	=	0x00cb
                           0000CC   162 _TL2	=	0x00cc
                           0000CD   163 _TH2	=	0x00cd
                                    164 ;--------------------------------------------------------
                                    165 ; special function bits
                                    166 ;--------------------------------------------------------
                                    167 	.area RSEG    (ABS,DATA)
      000000                        168 	.org 0x0000
                           000080   169 _P0_0	=	0x0080
                           000081   170 _P0_1	=	0x0081
                           000082   171 _P0_2	=	0x0082
                           000083   172 _P0_3	=	0x0083
                           000084   173 _P0_4	=	0x0084
                           000085   174 _P0_5	=	0x0085
                           000086   175 _P0_6	=	0x0086
                           000087   176 _P0_7	=	0x0087
                           000088   177 _IT0	=	0x0088
                           000089   178 _IE0	=	0x0089
                           00008A   179 _IT1	=	0x008a
                           00008B   180 _IE1	=	0x008b
                           00008C   181 _TR0	=	0x008c
                           00008D   182 _TF0	=	0x008d
                           00008E   183 _TR1	=	0x008e
                           00008F   184 _TF1	=	0x008f
                           000090   185 _P1_0	=	0x0090
                           000091   186 _P1_1	=	0x0091
                           000092   187 _P1_2	=	0x0092
                           000093   188 _P1_3	=	0x0093
                           000094   189 _P1_4	=	0x0094
                           000095   190 _P1_5	=	0x0095
                           000096   191 _P1_6	=	0x0096
                           000097   192 _P1_7	=	0x0097
                           000098   193 _RI	=	0x0098
                           000099   194 _TI	=	0x0099
                           00009A   195 _RB8	=	0x009a
                           00009B   196 _TB8	=	0x009b
                           00009C   197 _REN	=	0x009c
                           00009D   198 _SM2	=	0x009d
                           00009E   199 _SM1	=	0x009e
                           00009F   200 _SM0	=	0x009f
                           0000A0   201 _P2_0	=	0x00a0
                           0000A1   202 _P2_1	=	0x00a1
                           0000A2   203 _P2_2	=	0x00a2
                           0000A3   204 _P2_3	=	0x00a3
                           0000A4   205 _P2_4	=	0x00a4
                           0000A5   206 _P2_5	=	0x00a5
                           0000A6   207 _P2_6	=	0x00a6
                           0000A7   208 _P2_7	=	0x00a7
                           0000A8   209 _EX0	=	0x00a8
                           0000A9   210 _ET0	=	0x00a9
                           0000AA   211 _EX1	=	0x00aa
                           0000AB   212 _ET1	=	0x00ab
                           0000AC   213 _ES	=	0x00ac
                           0000AF   214 _EA	=	0x00af
                           0000B0   215 _P3_0	=	0x00b0
                           0000B1   216 _P3_1	=	0x00b1
                           0000B2   217 _P3_2	=	0x00b2
                           0000B3   218 _P3_3	=	0x00b3
                           0000B4   219 _P3_4	=	0x00b4
                           0000B5   220 _P3_5	=	0x00b5
                           0000B6   221 _P3_6	=	0x00b6
                           0000B7   222 _P3_7	=	0x00b7
                           0000B0   223 _RXD	=	0x00b0
                           0000B1   224 _TXD	=	0x00b1
                           0000B2   225 _INT0	=	0x00b2
                           0000B3   226 _INT1	=	0x00b3
                           0000B4   227 _T0	=	0x00b4
                           0000B5   228 _T1	=	0x00b5
                           0000B6   229 _WR	=	0x00b6
                           0000B7   230 _RD	=	0x00b7
                           0000B8   231 _PX0	=	0x00b8
                           0000B9   232 _PT0	=	0x00b9
                           0000BA   233 _PX1	=	0x00ba
                           0000BB   234 _PT1	=	0x00bb
                           0000BC   235 _PS	=	0x00bc
                           0000D0   236 _P	=	0x00d0
                           0000D1   237 _F1	=	0x00d1
                           0000D2   238 _OV	=	0x00d2
                           0000D3   239 _RS0	=	0x00d3
                           0000D4   240 _RS1	=	0x00d4
                           0000D5   241 _F0	=	0x00d5
                           0000D6   242 _AC	=	0x00d6
                           0000D7   243 _CY	=	0x00d7
                           0000AD   244 _ET2	=	0x00ad
                           0000BD   245 _PT2	=	0x00bd
                           0000C8   246 _T2CON_0	=	0x00c8
                           0000C9   247 _T2CON_1	=	0x00c9
                           0000CA   248 _T2CON_2	=	0x00ca
                           0000CB   249 _T2CON_3	=	0x00cb
                           0000CC   250 _T2CON_4	=	0x00cc
                           0000CD   251 _T2CON_5	=	0x00cd
                           0000CE   252 _T2CON_6	=	0x00ce
                           0000CF   253 _T2CON_7	=	0x00cf
                           0000C8   254 _CP_RL2	=	0x00c8
                           0000C9   255 _C_T2	=	0x00c9
                           0000CA   256 _TR2	=	0x00ca
                           0000CB   257 _EXEN2	=	0x00cb
                           0000CC   258 _TCLK	=	0x00cc
                           0000CD   259 _RCLK	=	0x00cd
                           0000CE   260 _EXF2	=	0x00ce
                           0000CF   261 _TF2	=	0x00cf
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable register banks
                                    264 ;--------------------------------------------------------
                                    265 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        266 	.ds 8
                                    267 ;--------------------------------------------------------
                                    268 ; internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area DSEG    (DATA)
      000008                        271 _key:
      000008                        272 	.ds 1
                                    273 ;--------------------------------------------------------
                                    274 ; overlayable items in internal ram 
                                    275 ;--------------------------------------------------------
                                    276 ;--------------------------------------------------------
                                    277 ; indirectly addressable internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area ISEG    (DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; absolute internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area IABS    (ABS,DATA)
                                    284 	.area IABS    (ABS,DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; bit data
                                    287 ;--------------------------------------------------------
                                    288 	.area BSEG    (BIT)
                                    289 ;--------------------------------------------------------
                                    290 ; paged external ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area PSEG    (PAG,XDATA)
                                    293 ;--------------------------------------------------------
                                    294 ; external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area XSEG    (XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; absolute external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XABS    (ABS,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; external initialized ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XISEG   (XDATA)
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT0 (CODE)
                                    307 	.area GSINIT1 (CODE)
                                    308 	.area GSINIT2 (CODE)
                                    309 	.area GSINIT3 (CODE)
                                    310 	.area GSINIT4 (CODE)
                                    311 	.area GSINIT5 (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area CSEG    (CODE)
                                    315 ;--------------------------------------------------------
                                    316 ; global & static initialisations
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 ;	src/key.c:3: static int8 key = 0;
      00005F 75 08 00         [24]  323 	mov	_key,#0x00
                                    324 ;--------------------------------------------------------
                                    325 ; Home
                                    326 ;--------------------------------------------------------
                                    327 	.area HOME    (CODE)
                                    328 	.area HOME    (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; code
                                    331 ;--------------------------------------------------------
                                    332 	.area CSEG    (CODE)
                                    333 ;------------------------------------------------------------
                                    334 ;Allocation info for local variables in function 'key_scan'
                                    335 ;------------------------------------------------------------
                                    336 ;value                     Allocated to registers r7 
                                    337 ;------------------------------------------------------------
                                    338 ;	src/key.c:5: uint8 key_scan(void)
                                    339 ;	-----------------------------------------
                                    340 ;	 function key_scan
                                    341 ;	-----------------------------------------
      000082                        342 _key_scan:
                           000007   343 	ar7 = 0x07
                           000006   344 	ar6 = 0x06
                           000005   345 	ar5 = 0x05
                           000004   346 	ar4 = 0x04
                           000003   347 	ar3 = 0x03
                           000002   348 	ar2 = 0x02
                           000001   349 	ar1 = 0x01
                           000000   350 	ar0 = 0x00
                                    351 ;	src/key.c:7: uint8 value = 0;
      000082 7F 00            [12]  352 	mov	r7,#0x00
                                    353 ;	src/key.c:9: if (KEY != KEY_IDLE) {
      000084 74 FF            [12]  354 	mov	a,#0xff
      000086 B5 90 02         [24]  355 	cjne	a,_P1,00163$
      000089 80 50            [24]  356 	sjmp	00120$
      00008B                        357 00163$:
                                    358 ;	src/key.c:10: delay_ms(10);
      00008B 90 00 0A         [24]  359 	mov	dptr,#0x000a
      00008E C0 07            [24]  360 	push	ar7
      000090 12 00 65         [24]  361 	lcall	_delay_ms
      000093 D0 07            [24]  362 	pop	ar7
                                    363 ;	src/key.c:11: if (KEY != KEY_IDLE) {
      000095 74 FF            [12]  364 	mov	a,#0xff
      000097 B5 90 02         [24]  365 	cjne	a,_P1,00164$
      00009A 80 3F            [24]  366 	sjmp	00120$
      00009C                        367 00164$:
                                    368 ;	src/key.c:12: if (!(KEY & KEY_PRESS0))
      00009C E5 90            [12]  369 	mov	a,_P1
      00009E 20 E0 02         [24]  370 	jb	acc.0,00102$
                                    371 ;	src/key.c:13: value |= KEY_PRESS0;
      0000A1 7F 01            [12]  372 	mov	r7,#0x01
      0000A3                        373 00102$:
                                    374 ;	src/key.c:14: if (!(KEY & KEY_PRESS1))
      0000A3 E5 90            [12]  375 	mov	a,_P1
      0000A5 20 E1 03         [24]  376 	jb	acc.1,00104$
                                    377 ;	src/key.c:15: value |= KEY_PRESS1;
      0000A8 43 07 02         [24]  378 	orl	ar7,#0x02
      0000AB                        379 00104$:
                                    380 ;	src/key.c:16: if (!(KEY & KEY_PRESS2))
      0000AB E5 90            [12]  381 	mov	a,_P1
      0000AD 20 E2 03         [24]  382 	jb	acc.2,00106$
                                    383 ;	src/key.c:17: value |= KEY_PRESS2;
      0000B0 43 07 04         [24]  384 	orl	ar7,#0x04
      0000B3                        385 00106$:
                                    386 ;	src/key.c:18: if (!(KEY & KEY_PRESS3))
      0000B3 E5 90            [12]  387 	mov	a,_P1
      0000B5 20 E3 03         [24]  388 	jb	acc.3,00108$
                                    389 ;	src/key.c:19: value |= KEY_PRESS3;
      0000B8 43 07 08         [24]  390 	orl	ar7,#0x08
      0000BB                        391 00108$:
                                    392 ;	src/key.c:20: if (!(KEY & KEY_PRESS4))
      0000BB E5 90            [12]  393 	mov	a,_P1
      0000BD 20 E4 03         [24]  394 	jb	acc.4,00110$
                                    395 ;	src/key.c:21: value |= KEY_PRESS4;
      0000C0 43 07 10         [24]  396 	orl	ar7,#0x10
      0000C3                        397 00110$:
                                    398 ;	src/key.c:22: if (!(KEY & KEY_PRESS5))
      0000C3 E5 90            [12]  399 	mov	a,_P1
      0000C5 20 E5 03         [24]  400 	jb	acc.5,00112$
                                    401 ;	src/key.c:23: value |= KEY_PRESS5;
      0000C8 43 07 20         [24]  402 	orl	ar7,#0x20
      0000CB                        403 00112$:
                                    404 ;	src/key.c:24: if (!(KEY & KEY_PRESS6))
      0000CB E5 90            [12]  405 	mov	a,_P1
      0000CD 20 E6 03         [24]  406 	jb	acc.6,00114$
                                    407 ;	src/key.c:25: value |= KEY_PRESS6;
      0000D0 43 07 40         [24]  408 	orl	ar7,#0x40
      0000D3                        409 00114$:
                                    410 ;	src/key.c:26: if (!(KEY & KEY_PRESS7))
      0000D3 E5 90            [12]  411 	mov	a,_P1
      0000D5 20 E7 03         [24]  412 	jb	acc.7,00120$
                                    413 ;	src/key.c:27: value |= KEY_PRESS7;
      0000D8 43 07 80         [24]  414 	orl	ar7,#0x80
      0000DB                        415 00120$:
                                    416 ;	src/key.c:31: return value;
      0000DB 8F 82            [24]  417 	mov	dpl,r7
                                    418 ;	src/key.c:32: }
      0000DD 22               [24]  419 	ret
                                    420 ;------------------------------------------------------------
                                    421 ;Allocation info for local variables in function 'key_scan_once'
                                    422 ;------------------------------------------------------------
                                    423 ;i                         Allocated to registers r5 r6 
                                    424 ;value                     Allocated to registers r7 
                                    425 ;------------------------------------------------------------
                                    426 ;	src/key.c:34: int8 key_scan_once(void)
                                    427 ;	-----------------------------------------
                                    428 ;	 function key_scan_once
                                    429 ;	-----------------------------------------
      0000DE                        430 _key_scan_once:
                                    431 ;	src/key.c:39: if (KEY != KEY_IDLE) {
      0000DE 74 FF            [12]  432 	mov	a,#0xff
      0000E0 B5 90 02         [24]  433 	cjne	a,_P1,00134$
      0000E3 80 45            [24]  434 	sjmp	00108$
      0000E5                        435 00134$:
                                    436 ;	src/key.c:40: delay_ms(10);
      0000E5 90 00 0A         [24]  437 	mov	dptr,#0x000a
      0000E8 12 00 65         [24]  438 	lcall	_delay_ms
                                    439 ;	src/key.c:41: if (KEY != KEY_IDLE) {
      0000EB 74 FF            [12]  440 	mov	a,#0xff
      0000ED B5 90 02         [24]  441 	cjne	a,_P1,00135$
      0000F0 80 38            [24]  442 	sjmp	00108$
      0000F2                        443 00135$:
                                    444 ;	src/key.c:42: value = KEY;
      0000F2 AF 90            [24]  445 	mov	r7,_P1
                                    446 ;	src/key.c:43: for (i = 0; i < KEY_MAX_NUM; i++) {
      0000F4 7D 00            [12]  447 	mov	r5,#0x00
      0000F6 7E 00            [12]  448 	mov	r6,#0x00
      0000F8                        449 00109$:
                                    450 ;	src/key.c:44: if (!((value >> i) & 0x1) && (i != key))
      0000F8 8D F0            [24]  451 	mov	b,r5
      0000FA 05 F0            [12]  452 	inc	b
      0000FC EF               [12]  453 	mov	a,r7
      0000FD 80 02            [24]  454 	sjmp	00137$
      0000FF                        455 00136$:
      0000FF C3               [12]  456 	clr	c
      000100 13               [12]  457 	rrc	a
      000101                        458 00137$:
      000101 D5 F0 FB         [24]  459 	djnz	b,00136$
      000104 20 E0 13         [24]  460 	jb	acc.0,00110$
      000107 E5 08            [12]  461 	mov	a,_key
      000109 FB               [12]  462 	mov	r3,a
      00010A 33               [12]  463 	rlc	a
      00010B 95 E0            [12]  464 	subb	a,acc
      00010D FC               [12]  465 	mov	r4,a
      00010E ED               [12]  466 	mov	a,r5
      00010F B5 03 06         [24]  467 	cjne	a,ar3,00139$
      000112 EE               [12]  468 	mov	a,r6
      000113 B5 04 02         [24]  469 	cjne	a,ar4,00139$
      000116 80 02            [24]  470 	sjmp	00110$
      000118                        471 00139$:
                                    472 ;	src/key.c:45: key = i; 
      000118 8D 08            [24]  473 	mov	_key,r5
      00011A                        474 00110$:
                                    475 ;	src/key.c:43: for (i = 0; i < KEY_MAX_NUM; i++) {
      00011A 0D               [12]  476 	inc	r5
      00011B BD 00 01         [24]  477 	cjne	r5,#0x00,00140$
      00011E 0E               [12]  478 	inc	r6
      00011F                        479 00140$:
      00011F C3               [12]  480 	clr	c
      000120 ED               [12]  481 	mov	a,r5
      000121 94 08            [12]  482 	subb	a,#0x08
      000123 EE               [12]  483 	mov	a,r6
      000124 64 80            [12]  484 	xrl	a,#0x80
      000126 94 80            [12]  485 	subb	a,#0x80
      000128 40 CE            [24]  486 	jc	00109$
      00012A                        487 00108$:
                                    488 ;	src/key.c:50: return key;
      00012A 85 08 82         [24]  489 	mov	dpl,_key
                                    490 ;	src/key.c:51: }
      00012D 22               [24]  491 	ret
                                    492 	.area CSEG    (CODE)
                                    493 	.area CONST   (CODE)
                                    494 	.area XINIT   (CODE)
                                    495 	.area CABS    (ABS,CODE)
