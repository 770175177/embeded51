                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _hex_table
                                     12 	.globl _putchar
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
                                    132 	.globl _sending
                                    133 	.globl _init_uart
                                    134 	.globl _uart_put_char
                                    135 	.globl _Prints
                                    136 	.globl _print_short_hex
                                    137 ;--------------------------------------------------------
                                    138 ; special function registers
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0	=	0x0080
                           000081   143 _SP	=	0x0081
                           000082   144 _DPL	=	0x0082
                           000083   145 _DPH	=	0x0083
                           000087   146 _PCON	=	0x0087
                           000088   147 _TCON	=	0x0088
                           000089   148 _TMOD	=	0x0089
                           00008A   149 _TL0	=	0x008a
                           00008B   150 _TL1	=	0x008b
                           00008C   151 _TH0	=	0x008c
                           00008D   152 _TH1	=	0x008d
                           000090   153 _P1	=	0x0090
                           000098   154 _SCON	=	0x0098
                           000099   155 _SBUF	=	0x0099
                           0000A0   156 _P2	=	0x00a0
                           0000A8   157 _IE	=	0x00a8
                           0000B0   158 _P3	=	0x00b0
                           0000B8   159 _IP	=	0x00b8
                           0000D0   160 _PSW	=	0x00d0
                           0000E0   161 _ACC	=	0x00e0
                           0000F0   162 _B	=	0x00f0
                           0000C8   163 _T2CON	=	0x00c8
                           0000CA   164 _RCAP2L	=	0x00ca
                           0000CB   165 _RCAP2H	=	0x00cb
                           0000CC   166 _TL2	=	0x00cc
                           0000CD   167 _TH2	=	0x00cd
                                    168 ;--------------------------------------------------------
                                    169 ; special function bits
                                    170 ;--------------------------------------------------------
                                    171 	.area RSEG    (ABS,DATA)
      000000                        172 	.org 0x0000
                           000080   173 _P0_0	=	0x0080
                           000081   174 _P0_1	=	0x0081
                           000082   175 _P0_2	=	0x0082
                           000083   176 _P0_3	=	0x0083
                           000084   177 _P0_4	=	0x0084
                           000085   178 _P0_5	=	0x0085
                           000086   179 _P0_6	=	0x0086
                           000087   180 _P0_7	=	0x0087
                           000088   181 _IT0	=	0x0088
                           000089   182 _IE0	=	0x0089
                           00008A   183 _IT1	=	0x008a
                           00008B   184 _IE1	=	0x008b
                           00008C   185 _TR0	=	0x008c
                           00008D   186 _TF0	=	0x008d
                           00008E   187 _TR1	=	0x008e
                           00008F   188 _TF1	=	0x008f
                           000090   189 _P1_0	=	0x0090
                           000091   190 _P1_1	=	0x0091
                           000092   191 _P1_2	=	0x0092
                           000093   192 _P1_3	=	0x0093
                           000094   193 _P1_4	=	0x0094
                           000095   194 _P1_5	=	0x0095
                           000096   195 _P1_6	=	0x0096
                           000097   196 _P1_7	=	0x0097
                           000098   197 _RI	=	0x0098
                           000099   198 _TI	=	0x0099
                           00009A   199 _RB8	=	0x009a
                           00009B   200 _TB8	=	0x009b
                           00009C   201 _REN	=	0x009c
                           00009D   202 _SM2	=	0x009d
                           00009E   203 _SM1	=	0x009e
                           00009F   204 _SM0	=	0x009f
                           0000A0   205 _P2_0	=	0x00a0
                           0000A1   206 _P2_1	=	0x00a1
                           0000A2   207 _P2_2	=	0x00a2
                           0000A3   208 _P2_3	=	0x00a3
                           0000A4   209 _P2_4	=	0x00a4
                           0000A5   210 _P2_5	=	0x00a5
                           0000A6   211 _P2_6	=	0x00a6
                           0000A7   212 _P2_7	=	0x00a7
                           0000A8   213 _EX0	=	0x00a8
                           0000A9   214 _ET0	=	0x00a9
                           0000AA   215 _EX1	=	0x00aa
                           0000AB   216 _ET1	=	0x00ab
                           0000AC   217 _ES	=	0x00ac
                           0000AF   218 _EA	=	0x00af
                           0000B0   219 _P3_0	=	0x00b0
                           0000B1   220 _P3_1	=	0x00b1
                           0000B2   221 _P3_2	=	0x00b2
                           0000B3   222 _P3_3	=	0x00b3
                           0000B4   223 _P3_4	=	0x00b4
                           0000B5   224 _P3_5	=	0x00b5
                           0000B6   225 _P3_6	=	0x00b6
                           0000B7   226 _P3_7	=	0x00b7
                           0000B0   227 _RXD	=	0x00b0
                           0000B1   228 _TXD	=	0x00b1
                           0000B2   229 _INT0	=	0x00b2
                           0000B3   230 _INT1	=	0x00b3
                           0000B4   231 _T0	=	0x00b4
                           0000B5   232 _T1	=	0x00b5
                           0000B6   233 _WR	=	0x00b6
                           0000B7   234 _RD	=	0x00b7
                           0000B8   235 _PX0	=	0x00b8
                           0000B9   236 _PT0	=	0x00b9
                           0000BA   237 _PX1	=	0x00ba
                           0000BB   238 _PT1	=	0x00bb
                           0000BC   239 _PS	=	0x00bc
                           0000D0   240 _P	=	0x00d0
                           0000D1   241 _F1	=	0x00d1
                           0000D2   242 _OV	=	0x00d2
                           0000D3   243 _RS0	=	0x00d3
                           0000D4   244 _RS1	=	0x00d4
                           0000D5   245 _F0	=	0x00d5
                           0000D6   246 _AC	=	0x00d6
                           0000D7   247 _CY	=	0x00d7
                           0000AD   248 _ET2	=	0x00ad
                           0000BD   249 _PT2	=	0x00bd
                           0000C8   250 _T2CON_0	=	0x00c8
                           0000C9   251 _T2CON_1	=	0x00c9
                           0000CA   252 _T2CON_2	=	0x00ca
                           0000CB   253 _T2CON_3	=	0x00cb
                           0000CC   254 _T2CON_4	=	0x00cc
                           0000CD   255 _T2CON_5	=	0x00cd
                           0000CE   256 _T2CON_6	=	0x00ce
                           0000CF   257 _T2CON_7	=	0x00cf
                           0000C8   258 _CP_RL2	=	0x00c8
                           0000C9   259 _C_T2	=	0x00c9
                           0000CA   260 _TR2	=	0x00ca
                           0000CB   261 _EXEN2	=	0x00cb
                           0000CC   262 _TCLK	=	0x00cc
                           0000CD   263 _RCLK	=	0x00cd
                           0000CE   264 _EXF2	=	0x00ce
                           0000CF   265 _TF2	=	0x00cf
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable register banks
                                    268 ;--------------------------------------------------------
                                    269 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        270 	.ds 8
                                    271 ;--------------------------------------------------------
                                    272 ; internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area DSEG    (DATA)
      00000B                        275 _sending::
      00000B                        276 	.ds 1
      00000C                        277 _print_short_hex_display_buf_65536_13:
      00000C                        278 	.ds 7
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable items in internal ram 
                                    281 ;--------------------------------------------------------
                                    282 	.area	OSEG    (OVR,DATA)
                                    283 ;--------------------------------------------------------
                                    284 ; indirectly addressable internal ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area ISEG    (DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; absolute internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area IABS    (ABS,DATA)
                                    291 	.area IABS    (ABS,DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; bit data
                                    294 ;--------------------------------------------------------
                                    295 	.area BSEG    (BIT)
                                    296 ;--------------------------------------------------------
                                    297 ; paged external ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area PSEG    (PAG,XDATA)
                                    300 ;--------------------------------------------------------
                                    301 ; external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area XSEG    (XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; absolute external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XABS    (ABS,XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; external initialized ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XISEG   (XDATA)
                                    312 	.area HOME    (CODE)
                                    313 	.area GSINIT0 (CODE)
                                    314 	.area GSINIT1 (CODE)
                                    315 	.area GSINIT2 (CODE)
                                    316 	.area GSINIT3 (CODE)
                                    317 	.area GSINIT4 (CODE)
                                    318 	.area GSINIT5 (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area CSEG    (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; global & static initialisations
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 ;	src/uart.c:4: volatile uint8 sending = 0;
      00008A 75 0B 00         [24]  330 	mov	_sending,#0x00
                                    331 ;--------------------------------------------------------
                                    332 ; Home
                                    333 ;--------------------------------------------------------
                                    334 	.area HOME    (CODE)
                                    335 	.area HOME    (CODE)
                                    336 ;--------------------------------------------------------
                                    337 ; code
                                    338 ;--------------------------------------------------------
                                    339 	.area CSEG    (CODE)
                                    340 ;------------------------------------------------------------
                                    341 ;Allocation info for local variables in function 'init_uart'
                                    342 ;------------------------------------------------------------
                                    343 ;	src/uart.c:13: void init_uart(void)
                                    344 ;	-----------------------------------------
                                    345 ;	 function init_uart
                                    346 ;	-----------------------------------------
      00030E                        347 _init_uart:
                           000007   348 	ar7 = 0x07
                           000006   349 	ar6 = 0x06
                           000005   350 	ar5 = 0x05
                           000004   351 	ar4 = 0x04
                           000003   352 	ar3 = 0x03
                           000002   353 	ar2 = 0x02
                           000001   354 	ar1 = 0x01
                           000000   355 	ar0 = 0x00
                                    356 ;	src/uart.c:15: EA = 0;
                                    357 ;	assignBit
      00030E C2 AF            [12]  358 	clr	_EA
                                    359 ;	src/uart.c:16: TMOD &= 0xF0;
      000310 53 89 F0         [24]  360 	anl	_TMOD,#0xf0
                                    361 ;	src/uart.c:17: TMOD |= 0x20;       /* timer1 mode 2, auto reload */
      000313 43 89 20         [24]  362 	orl	_TMOD,#0x20
                                    363 ;	src/uart.c:18: SCON = 0x50;        /* uart mode 1 */
      000316 75 98 50         [24]  364 	mov	_SCON,#0x50
                                    365 ;	src/uart.c:19: TH1 = 256 - fclk / (baudrate * 12 * 16);
      000319 75 8D F4         [24]  366 	mov	_TH1,#0xf4
                                    367 ;	src/uart.c:20: TL1 = 256 - fclk / (baudrate * 12 * 16);
      00031C 75 8B F4         [24]  368 	mov	_TL1,#0xf4
                                    369 ;	src/uart.c:21: PCON |= 0x80;       /* uart baud rate double */
      00031F 43 87 80         [24]  370 	orl	_PCON,#0x80
                                    371 ;	src/uart.c:22: ES = 1;             /* enable uart interrupt */
                                    372 ;	assignBit
      000322 D2 AC            [12]  373 	setb	_ES
                                    374 ;	src/uart.c:23: TR1 = 1;            /* start timer1 */
                                    375 ;	assignBit
      000324 D2 8E            [12]  376 	setb	_TR1
                                    377 ;	src/uart.c:24: REN = 1;            /* enable recieve */
                                    378 ;	assignBit
      000326 D2 9C            [12]  379 	setb	_REN
                                    380 ;	src/uart.c:25: EA = 1;             /* enable all interrupt */
                                    381 ;	assignBit
      000328 D2 AF            [12]  382 	setb	_EA
                                    383 ;	src/uart.c:26: }
      00032A 22               [24]  384 	ret
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'uart_put_char'
                                    387 ;------------------------------------------------------------
                                    388 ;c                         Allocated to registers 
                                    389 ;------------------------------------------------------------
                                    390 ;	src/uart.c:33: void uart_put_char(uint8 c)
                                    391 ;	-----------------------------------------
                                    392 ;	 function uart_put_char
                                    393 ;	-----------------------------------------
      00032B                        394 _uart_put_char:
      00032B 85 82 99         [24]  395 	mov	_SBUF,dpl
                                    396 ;	src/uart.c:36: sending = 1;
      00032E 75 0B 01         [24]  397 	mov	_sending,#0x01
                                    398 ;	src/uart.c:37: while(sending);
      000331                        399 00101$:
      000331 E5 0B            [12]  400 	mov	a,_sending
      000333 70 FC            [24]  401 	jnz	00101$
                                    402 ;	src/uart.c:38: }
      000335 22               [24]  403 	ret
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'Prints'
                                    406 ;------------------------------------------------------------
                                    407 ;s                         Allocated to registers 
                                    408 ;------------------------------------------------------------
                                    409 ;	src/uart.c:45: void Prints(uint8 *s)
                                    410 ;	-----------------------------------------
                                    411 ;	 function Prints
                                    412 ;	-----------------------------------------
      000336                        413 _Prints:
      000336 AD 82            [24]  414 	mov	r5,dpl
      000338 AE 83            [24]  415 	mov	r6,dph
      00033A AF F0            [24]  416 	mov	r7,b
                                    417 ;	src/uart.c:47: while(*s != '\0') {
      00033C                        418 00101$:
      00033C 8D 82            [24]  419 	mov	dpl,r5
      00033E 8E 83            [24]  420 	mov	dph,r6
      000340 8F F0            [24]  421 	mov	b,r7
      000342 12 03 B1         [24]  422 	lcall	__gptrget
      000345 FC               [12]  423 	mov	r4,a
      000346 60 18            [24]  424 	jz	00104$
                                    425 ;	src/uart.c:48: uart_put_char(*s);
      000348 8C 82            [24]  426 	mov	dpl,r4
      00034A C0 07            [24]  427 	push	ar7
      00034C C0 06            [24]  428 	push	ar6
      00034E C0 05            [24]  429 	push	ar5
      000350 12 03 2B         [24]  430 	lcall	_uart_put_char
      000353 D0 05            [24]  431 	pop	ar5
      000355 D0 06            [24]  432 	pop	ar6
      000357 D0 07            [24]  433 	pop	ar7
                                    434 ;	src/uart.c:49: s++;
      000359 0D               [12]  435 	inc	r5
      00035A BD 00 DF         [24]  436 	cjne	r5,#0x00,00101$
      00035D 0E               [12]  437 	inc	r6
      00035E 80 DC            [24]  438 	sjmp	00101$
      000360                        439 00104$:
                                    440 ;	src/uart.c:51: }
      000360 22               [24]  441 	ret
                                    442 ;------------------------------------------------------------
                                    443 ;Allocation info for local variables in function 'print_short_hex'
                                    444 ;------------------------------------------------------------
                                    445 ;x                         Allocated to registers r6 r7 
                                    446 ;i                         Allocated to registers r5 
                                    447 ;display_buf               Allocated with name '_print_short_hex_display_buf_65536_13'
                                    448 ;------------------------------------------------------------
                                    449 ;	src/uart.c:58: void print_short_hex(uint16 x)
                                    450 ;	-----------------------------------------
                                    451 ;	 function print_short_hex
                                    452 ;	-----------------------------------------
      000361                        453 _print_short_hex:
      000361 AE 82            [24]  454 	mov	r6,dpl
      000363 AF 83            [24]  455 	mov	r7,dph
                                    456 ;	src/uart.c:63: display_buf[6] = 0;
      000365 75 12 00         [24]  457 	mov	(_print_short_hex_display_buf_65536_13 + 0x0006),#0x00
                                    458 ;	src/uart.c:64: display_buf[0] = '0';
      000368 75 0C 30         [24]  459 	mov	_print_short_hex_display_buf_65536_13,#0x30
                                    460 ;	src/uart.c:65: display_buf[1] = 'x';
      00036B 75 0D 78         [24]  461 	mov	(_print_short_hex_display_buf_65536_13 + 0x0001),#0x78
                                    462 ;	src/uart.c:67: for (i = 5; i >= 2; i--) {
      00036E 7D 05            [12]  463 	mov	r5,#0x05
      000370                        464 00102$:
                                    465 ;	src/uart.c:68: display_buf[i] = hex_table[x & 0xF];
      000370 ED               [12]  466 	mov	a,r5
      000371 24 0C            [12]  467 	add	a,#_print_short_hex_display_buf_65536_13
      000373 F9               [12]  468 	mov	r1,a
      000374 8E 03            [24]  469 	mov	ar3,r6
      000376 53 03 0F         [24]  470 	anl	ar3,#0x0f
      000379 7C 00            [12]  471 	mov	r4,#0x00
      00037B EB               [12]  472 	mov	a,r3
      00037C 24 F7            [12]  473 	add	a,#_hex_table
      00037E F5 82            [12]  474 	mov	dpl,a
      000380 EC               [12]  475 	mov	a,r4
      000381 34 03            [12]  476 	addc	a,#(_hex_table >> 8)
      000383 F5 83            [12]  477 	mov	dph,a
      000385 E4               [12]  478 	clr	a
      000386 93               [24]  479 	movc	a,@a+dptr
      000387 F7               [12]  480 	mov	@r1,a
                                    481 ;	src/uart.c:69: x >>= 4;
      000388 EF               [12]  482 	mov	a,r7
      000389 C4               [12]  483 	swap	a
      00038A CE               [12]  484 	xch	a,r6
      00038B C4               [12]  485 	swap	a
      00038C 54 0F            [12]  486 	anl	a,#0x0f
      00038E 6E               [12]  487 	xrl	a,r6
      00038F CE               [12]  488 	xch	a,r6
      000390 54 0F            [12]  489 	anl	a,#0x0f
      000392 CE               [12]  490 	xch	a,r6
      000393 6E               [12]  491 	xrl	a,r6
      000394 CE               [12]  492 	xch	a,r6
      000395 FF               [12]  493 	mov	r7,a
                                    494 ;	src/uart.c:67: for (i = 5; i >= 2; i--) {
      000396 1D               [12]  495 	dec	r5
      000397 BD 02 00         [24]  496 	cjne	r5,#0x02,00115$
      00039A                        497 00115$:
      00039A 50 D4            [24]  498 	jnc	00102$
                                    499 ;	src/uart.c:72: Prints(display_buf);
      00039C 90 00 0C         [24]  500 	mov	dptr,#_print_short_hex_display_buf_65536_13
      00039F 75 F0 40         [24]  501 	mov	b,#0x40
                                    502 ;	src/uart.c:73: }
      0003A2 02 03 36         [24]  503 	ljmp	_Prints
                                    504 ;------------------------------------------------------------
                                    505 ;Allocation info for local variables in function 'putchar'
                                    506 ;------------------------------------------------------------
                                    507 ;c                         Allocated to registers r7 
                                    508 ;------------------------------------------------------------
                                    509 ;	src/uart.c:75: char putchar(char c)
                                    510 ;	-----------------------------------------
                                    511 ;	 function putchar
                                    512 ;	-----------------------------------------
      0003A5                        513 _putchar:
                                    514 ;	src/uart.c:77: uart_put_char(c);
      0003A5 AF 82            [24]  515 	mov  r7,dpl
      0003A7 C0 07            [24]  516 	push	ar7
      0003A9 12 03 2B         [24]  517 	lcall	_uart_put_char
      0003AC D0 07            [24]  518 	pop	ar7
                                    519 ;	src/uart.c:79: return c;
      0003AE 8F 82            [24]  520 	mov	dpl,r7
                                    521 ;	src/uart.c:80: }
      0003B0 22               [24]  522 	ret
                                    523 	.area CSEG    (CODE)
                                    524 	.area CONST   (CODE)
      0003F7                        525 _hex_table:
      0003F7 30                     526 	.db #0x30	; 48	'0'
      0003F8 31                     527 	.db #0x31	; 49	'1'
      0003F9 32                     528 	.db #0x32	; 50	'2'
      0003FA 33                     529 	.db #0x33	; 51	'3'
      0003FB 34                     530 	.db #0x34	; 52	'4'
      0003FC 35                     531 	.db #0x35	; 53	'5'
      0003FD 36                     532 	.db #0x36	; 54	'6'
      0003FE 37                     533 	.db #0x37	; 55	'7'
      0003FF 38                     534 	.db #0x38	; 56	'8'
      000400 39                     535 	.db #0x39	; 57	'9'
      000401 41                     536 	.db #0x41	; 65	'A'
      000402 42                     537 	.db #0x42	; 66	'B'
      000403 43                     538 	.db #0x43	; 67	'C'
      000404 44                     539 	.db #0x44	; 68	'D'
      000405 45                     540 	.db #0x45	; 69	'E'
      000406 46                     541 	.db #0x46	; 70	'F'
                                    542 	.area XINIT   (CODE)
                                    543 	.area CABS    (ABS,CODE)
