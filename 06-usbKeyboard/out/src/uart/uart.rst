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
                                    131 	.globl _dump_hex_PARM_2
                                    132 	.globl _sending
                                    133 	.globl _init_uart
                                    134 	.globl _uart_put_char
                                    135 	.globl _Prints
                                    136 	.globl _print_short_hex
                                    137 	.globl _print_long_int
                                    138 	.globl _printc
                                    139 	.globl _print_hex
                                    140 	.globl _dump_hex
                                    141 ;--------------------------------------------------------
                                    142 ; special function registers
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0	=	0x0080
                           000081   147 _SP	=	0x0081
                           000082   148 _DPL	=	0x0082
                           000083   149 _DPH	=	0x0083
                           000087   150 _PCON	=	0x0087
                           000088   151 _TCON	=	0x0088
                           000089   152 _TMOD	=	0x0089
                           00008A   153 _TL0	=	0x008a
                           00008B   154 _TL1	=	0x008b
                           00008C   155 _TH0	=	0x008c
                           00008D   156 _TH1	=	0x008d
                           000090   157 _P1	=	0x0090
                           000098   158 _SCON	=	0x0098
                           000099   159 _SBUF	=	0x0099
                           0000A0   160 _P2	=	0x00a0
                           0000A8   161 _IE	=	0x00a8
                           0000B0   162 _P3	=	0x00b0
                           0000B8   163 _IP	=	0x00b8
                           0000D0   164 _PSW	=	0x00d0
                           0000E0   165 _ACC	=	0x00e0
                           0000F0   166 _B	=	0x00f0
                           0000C8   167 _T2CON	=	0x00c8
                           0000CA   168 _RCAP2L	=	0x00ca
                           0000CB   169 _RCAP2H	=	0x00cb
                           0000CC   170 _TL2	=	0x00cc
                           0000CD   171 _TH2	=	0x00cd
                                    172 ;--------------------------------------------------------
                                    173 ; special function bits
                                    174 ;--------------------------------------------------------
                                    175 	.area RSEG    (ABS,DATA)
      000000                        176 	.org 0x0000
                           000080   177 _P0_0	=	0x0080
                           000081   178 _P0_1	=	0x0081
                           000082   179 _P0_2	=	0x0082
                           000083   180 _P0_3	=	0x0083
                           000084   181 _P0_4	=	0x0084
                           000085   182 _P0_5	=	0x0085
                           000086   183 _P0_6	=	0x0086
                           000087   184 _P0_7	=	0x0087
                           000088   185 _IT0	=	0x0088
                           000089   186 _IE0	=	0x0089
                           00008A   187 _IT1	=	0x008a
                           00008B   188 _IE1	=	0x008b
                           00008C   189 _TR0	=	0x008c
                           00008D   190 _TF0	=	0x008d
                           00008E   191 _TR1	=	0x008e
                           00008F   192 _TF1	=	0x008f
                           000090   193 _P1_0	=	0x0090
                           000091   194 _P1_1	=	0x0091
                           000092   195 _P1_2	=	0x0092
                           000093   196 _P1_3	=	0x0093
                           000094   197 _P1_4	=	0x0094
                           000095   198 _P1_5	=	0x0095
                           000096   199 _P1_6	=	0x0096
                           000097   200 _P1_7	=	0x0097
                           000098   201 _RI	=	0x0098
                           000099   202 _TI	=	0x0099
                           00009A   203 _RB8	=	0x009a
                           00009B   204 _TB8	=	0x009b
                           00009C   205 _REN	=	0x009c
                           00009D   206 _SM2	=	0x009d
                           00009E   207 _SM1	=	0x009e
                           00009F   208 _SM0	=	0x009f
                           0000A0   209 _P2_0	=	0x00a0
                           0000A1   210 _P2_1	=	0x00a1
                           0000A2   211 _P2_2	=	0x00a2
                           0000A3   212 _P2_3	=	0x00a3
                           0000A4   213 _P2_4	=	0x00a4
                           0000A5   214 _P2_5	=	0x00a5
                           0000A6   215 _P2_6	=	0x00a6
                           0000A7   216 _P2_7	=	0x00a7
                           0000A8   217 _EX0	=	0x00a8
                           0000A9   218 _ET0	=	0x00a9
                           0000AA   219 _EX1	=	0x00aa
                           0000AB   220 _ET1	=	0x00ab
                           0000AC   221 _ES	=	0x00ac
                           0000AF   222 _EA	=	0x00af
                           0000B0   223 _P3_0	=	0x00b0
                           0000B1   224 _P3_1	=	0x00b1
                           0000B2   225 _P3_2	=	0x00b2
                           0000B3   226 _P3_3	=	0x00b3
                           0000B4   227 _P3_4	=	0x00b4
                           0000B5   228 _P3_5	=	0x00b5
                           0000B6   229 _P3_6	=	0x00b6
                           0000B7   230 _P3_7	=	0x00b7
                           0000B0   231 _RXD	=	0x00b0
                           0000B1   232 _TXD	=	0x00b1
                           0000B2   233 _INT0	=	0x00b2
                           0000B3   234 _INT1	=	0x00b3
                           0000B4   235 _T0	=	0x00b4
                           0000B5   236 _T1	=	0x00b5
                           0000B6   237 _WR	=	0x00b6
                           0000B7   238 _RD	=	0x00b7
                           0000B8   239 _PX0	=	0x00b8
                           0000B9   240 _PT0	=	0x00b9
                           0000BA   241 _PX1	=	0x00ba
                           0000BB   242 _PT1	=	0x00bb
                           0000BC   243 _PS	=	0x00bc
                           0000D0   244 _P	=	0x00d0
                           0000D1   245 _F1	=	0x00d1
                           0000D2   246 _OV	=	0x00d2
                           0000D3   247 _RS0	=	0x00d3
                           0000D4   248 _RS1	=	0x00d4
                           0000D5   249 _F0	=	0x00d5
                           0000D6   250 _AC	=	0x00d6
                           0000D7   251 _CY	=	0x00d7
                           0000AD   252 _ET2	=	0x00ad
                           0000BD   253 _PT2	=	0x00bd
                           0000C8   254 _T2CON_0	=	0x00c8
                           0000C9   255 _T2CON_1	=	0x00c9
                           0000CA   256 _T2CON_2	=	0x00ca
                           0000CB   257 _T2CON_3	=	0x00cb
                           0000CC   258 _T2CON_4	=	0x00cc
                           0000CD   259 _T2CON_5	=	0x00cd
                           0000CE   260 _T2CON_6	=	0x00ce
                           0000CF   261 _T2CON_7	=	0x00cf
                           0000C8   262 _CP_RL2	=	0x00c8
                           0000C9   263 _C_T2	=	0x00c9
                           0000CA   264 _TR2	=	0x00ca
                           0000CB   265 _EXEN2	=	0x00cb
                           0000CC   266 _TCLK	=	0x00cc
                           0000CD   267 _RCLK	=	0x00cd
                           0000CE   268 _EXF2	=	0x00ce
                           0000CF   269 _TF2	=	0x00cf
                                    270 ;--------------------------------------------------------
                                    271 ; overlayable register banks
                                    272 ;--------------------------------------------------------
                                    273 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        274 	.ds 8
                                    275 ;--------------------------------------------------------
                                    276 ; internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area DSEG    (DATA)
      000021                        279 _sending::
      000021                        280 	.ds 1
      000022                        281 _print_short_hex_display_buf_65536_17:
      000022                        282 	.ds 7
      000029                        283 _print_long_int_display_buf_65536_21:
      000029                        284 	.ds 10
      000033                        285 _dump_hex_PARM_2:
      000033                        286 	.ds 2
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable items in internal ram 
                                    289 ;--------------------------------------------------------
                                    290 	.area	OSEG    (OVR,DATA)
                                    291 	.area	OSEG    (OVR,DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; indirectly addressable internal ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area ISEG    (DATA)
                                    296 ;--------------------------------------------------------
                                    297 ; absolute internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area IABS    (ABS,DATA)
                                    300 	.area IABS    (ABS,DATA)
                                    301 ;--------------------------------------------------------
                                    302 ; bit data
                                    303 ;--------------------------------------------------------
                                    304 	.area BSEG    (BIT)
                                    305 ;--------------------------------------------------------
                                    306 ; paged external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area PSEG    (PAG,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XSEG    (XDATA)
                                    313 ;--------------------------------------------------------
                                    314 ; absolute external ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area XABS    (ABS,XDATA)
                                    317 ;--------------------------------------------------------
                                    318 ; external initialized ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area XISEG   (XDATA)
                                    321 	.area HOME    (CODE)
                                    322 	.area GSINIT0 (CODE)
                                    323 	.area GSINIT1 (CODE)
                                    324 	.area GSINIT2 (CODE)
                                    325 	.area GSINIT3 (CODE)
                                    326 	.area GSINIT4 (CODE)
                                    327 	.area GSINIT5 (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.area GSFINAL (CODE)
                                    330 	.area CSEG    (CODE)
                                    331 ;--------------------------------------------------------
                                    332 ; global & static initialisations
                                    333 ;--------------------------------------------------------
                                    334 	.area HOME    (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.area GSFINAL (CODE)
                                    337 	.area GSINIT  (CODE)
                                    338 ;	src/uart.c:4: volatile uint8 sending = 0;
      00008A 75 21 00         [24]  339 	mov	_sending,#0x00
                                    340 ;--------------------------------------------------------
                                    341 ; Home
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
                                    344 	.area HOME    (CODE)
                                    345 ;--------------------------------------------------------
                                    346 ; code
                                    347 ;--------------------------------------------------------
                                    348 	.area CSEG    (CODE)
                                    349 ;------------------------------------------------------------
                                    350 ;Allocation info for local variables in function 'init_uart'
                                    351 ;------------------------------------------------------------
                                    352 ;	src/uart.c:13: void init_uart(void)
                                    353 ;	-----------------------------------------
                                    354 ;	 function init_uart
                                    355 ;	-----------------------------------------
      0006F0                        356 _init_uart:
                           000007   357 	ar7 = 0x07
                           000006   358 	ar6 = 0x06
                           000005   359 	ar5 = 0x05
                           000004   360 	ar4 = 0x04
                           000003   361 	ar3 = 0x03
                           000002   362 	ar2 = 0x02
                           000001   363 	ar1 = 0x01
                           000000   364 	ar0 = 0x00
                                    365 ;	src/uart.c:15: EA = 0;
                                    366 ;	assignBit
      0006F0 C2 AF            [12]  367 	clr	_EA
                                    368 ;	src/uart.c:16: TMOD &= 0xF0;
      0006F2 53 89 F0         [24]  369 	anl	_TMOD,#0xf0
                                    370 ;	src/uart.c:17: TMOD |= 0x20;       /* timer1 mode 2, auto reload */
      0006F5 43 89 20         [24]  371 	orl	_TMOD,#0x20
                                    372 ;	src/uart.c:18: SCON = 0x50;        /* uart mode 1 */
      0006F8 75 98 50         [24]  373 	mov	_SCON,#0x50
                                    374 ;	src/uart.c:20: TH1 = UART_BAUD_9600_RELOADE_NUM;
      0006FB 75 8D F4         [24]  375 	mov	_TH1,#0xf4
                                    376 ;	src/uart.c:21: TL1 = UART_BAUD_9600_RELOADE_NUM;
      0006FE 75 8B F4         [24]  377 	mov	_TL1,#0xf4
                                    378 ;	src/uart.c:22: PCON |= 0x80;       /* uart baud rate double */
      000701 43 87 80         [24]  379 	orl	_PCON,#0x80
                                    380 ;	src/uart.c:23: ES = 1;             /* enable uart interrupt */
                                    381 ;	assignBit
      000704 D2 AC            [12]  382 	setb	_ES
                                    383 ;	src/uart.c:24: TR1 = 1;            /* start timer1 */
                                    384 ;	assignBit
      000706 D2 8E            [12]  385 	setb	_TR1
                                    386 ;	src/uart.c:25: REN = 1;            /* enable recieve */
                                    387 ;	assignBit
      000708 D2 9C            [12]  388 	setb	_REN
                                    389 ;	src/uart.c:26: EA = 1;             /* enable all interrupt */
                                    390 ;	assignBit
      00070A D2 AF            [12]  391 	setb	_EA
                                    392 ;	src/uart.c:27: }
      00070C 22               [24]  393 	ret
                                    394 ;------------------------------------------------------------
                                    395 ;Allocation info for local variables in function 'uart_put_char'
                                    396 ;------------------------------------------------------------
                                    397 ;c                         Allocated to registers 
                                    398 ;------------------------------------------------------------
                                    399 ;	src/uart.c:34: void uart_put_char(uint8 c)
                                    400 ;	-----------------------------------------
                                    401 ;	 function uart_put_char
                                    402 ;	-----------------------------------------
      00070D                        403 _uart_put_char:
      00070D 85 82 99         [24]  404 	mov	_SBUF,dpl
                                    405 ;	src/uart.c:37: sending = 1;
      000710 75 21 01         [24]  406 	mov	_sending,#0x01
                                    407 ;	src/uart.c:38: while(sending);
      000713                        408 00101$:
      000713 E5 21            [12]  409 	mov	a,_sending
      000715 70 FC            [24]  410 	jnz	00101$
                                    411 ;	src/uart.c:39: }
      000717 22               [24]  412 	ret
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'Prints'
                                    415 ;------------------------------------------------------------
                                    416 ;s                         Allocated to registers 
                                    417 ;------------------------------------------------------------
                                    418 ;	src/uart.c:46: void Prints(uint8 *s)
                                    419 ;	-----------------------------------------
                                    420 ;	 function Prints
                                    421 ;	-----------------------------------------
      000718                        422 _Prints:
      000718 AD 82            [24]  423 	mov	r5,dpl
      00071A AE 83            [24]  424 	mov	r6,dph
      00071C AF F0            [24]  425 	mov	r7,b
                                    426 ;	src/uart.c:48: while(*s != '\0') {
      00071E                        427 00101$:
      00071E 8D 82            [24]  428 	mov	dpl,r5
      000720 8E 83            [24]  429 	mov	dph,r6
      000722 8F F0            [24]  430 	mov	b,r7
      000724 12 0F 1E         [24]  431 	lcall	__gptrget
      000727 FC               [12]  432 	mov	r4,a
      000728 60 18            [24]  433 	jz	00104$
                                    434 ;	src/uart.c:49: uart_put_char(*s);
      00072A 8C 82            [24]  435 	mov	dpl,r4
      00072C C0 07            [24]  436 	push	ar7
      00072E C0 06            [24]  437 	push	ar6
      000730 C0 05            [24]  438 	push	ar5
      000732 12 07 0D         [24]  439 	lcall	_uart_put_char
      000735 D0 05            [24]  440 	pop	ar5
      000737 D0 06            [24]  441 	pop	ar6
      000739 D0 07            [24]  442 	pop	ar7
                                    443 ;	src/uart.c:50: s++;
      00073B 0D               [12]  444 	inc	r5
      00073C BD 00 DF         [24]  445 	cjne	r5,#0x00,00101$
      00073F 0E               [12]  446 	inc	r6
      000740 80 DC            [24]  447 	sjmp	00101$
      000742                        448 00104$:
                                    449 ;	src/uart.c:52: }
      000742 22               [24]  450 	ret
                                    451 ;------------------------------------------------------------
                                    452 ;Allocation info for local variables in function 'print_short_hex'
                                    453 ;------------------------------------------------------------
                                    454 ;x                         Allocated to registers r6 r7 
                                    455 ;i                         Allocated to registers r5 
                                    456 ;display_buf               Allocated with name '_print_short_hex_display_buf_65536_17'
                                    457 ;------------------------------------------------------------
                                    458 ;	src/uart.c:59: void print_short_hex(uint16 x)
                                    459 ;	-----------------------------------------
                                    460 ;	 function print_short_hex
                                    461 ;	-----------------------------------------
      000743                        462 _print_short_hex:
      000743 AE 82            [24]  463 	mov	r6,dpl
      000745 AF 83            [24]  464 	mov	r7,dph
                                    465 ;	src/uart.c:64: display_buf[6] = 0;
      000747 75 28 00         [24]  466 	mov	(_print_short_hex_display_buf_65536_17 + 0x0006),#0x00
                                    467 ;	src/uart.c:65: display_buf[0] = '0';
      00074A 75 22 30         [24]  468 	mov	_print_short_hex_display_buf_65536_17,#0x30
                                    469 ;	src/uart.c:66: display_buf[1] = 'x';
      00074D 75 23 78         [24]  470 	mov	(_print_short_hex_display_buf_65536_17 + 0x0001),#0x78
                                    471 ;	src/uart.c:68: for (i = 5; i >= 2; i--) {
      000750 7D 05            [12]  472 	mov	r5,#0x05
      000752                        473 00102$:
                                    474 ;	src/uart.c:69: display_buf[i] = hex_table[x & 0xF];
      000752 ED               [12]  475 	mov	a,r5
      000753 24 22            [12]  476 	add	a,#_print_short_hex_display_buf_65536_17
      000755 F9               [12]  477 	mov	r1,a
      000756 8E 03            [24]  478 	mov	ar3,r6
      000758 53 03 0F         [24]  479 	anl	ar3,#0x0f
      00075B 7C 00            [12]  480 	mov	r4,#0x00
      00075D EB               [12]  481 	mov	a,r3
      00075E 24 F6            [12]  482 	add	a,#_hex_table
      000760 F5 82            [12]  483 	mov	dpl,a
      000762 EC               [12]  484 	mov	a,r4
      000763 34 0F            [12]  485 	addc	a,#(_hex_table >> 8)
      000765 F5 83            [12]  486 	mov	dph,a
      000767 E4               [12]  487 	clr	a
      000768 93               [24]  488 	movc	a,@a+dptr
      000769 F7               [12]  489 	mov	@r1,a
                                    490 ;	src/uart.c:70: x >>= 4;
      00076A EF               [12]  491 	mov	a,r7
      00076B C4               [12]  492 	swap	a
      00076C CE               [12]  493 	xch	a,r6
      00076D C4               [12]  494 	swap	a
      00076E 54 0F            [12]  495 	anl	a,#0x0f
      000770 6E               [12]  496 	xrl	a,r6
      000771 CE               [12]  497 	xch	a,r6
      000772 54 0F            [12]  498 	anl	a,#0x0f
      000774 CE               [12]  499 	xch	a,r6
      000775 6E               [12]  500 	xrl	a,r6
      000776 CE               [12]  501 	xch	a,r6
      000777 FF               [12]  502 	mov	r7,a
                                    503 ;	src/uart.c:68: for (i = 5; i >= 2; i--) {
      000778 1D               [12]  504 	dec	r5
      000779 C3               [12]  505 	clr	c
      00077A ED               [12]  506 	mov	a,r5
      00077B 64 80            [12]  507 	xrl	a,#0x80
      00077D 94 82            [12]  508 	subb	a,#0x82
      00077F 50 D1            [24]  509 	jnc	00102$
                                    510 ;	src/uart.c:73: Prints(display_buf);
      000781 90 00 22         [24]  511 	mov	dptr,#_print_short_hex_display_buf_65536_17
      000784 75 F0 40         [24]  512 	mov	b,#0x40
                                    513 ;	src/uart.c:74: }
      000787 02 07 18         [24]  514 	ljmp	_Prints
                                    515 ;------------------------------------------------------------
                                    516 ;Allocation info for local variables in function 'print_long_int'
                                    517 ;------------------------------------------------------------
                                    518 ;x                         Allocated to registers r6 r7 
                                    519 ;i                         Allocated to registers r5 
                                    520 ;display_buf               Allocated with name '_print_long_int_display_buf_65536_21'
                                    521 ;------------------------------------------------------------
                                    522 ;	src/uart.c:76: void print_long_int(uint32 x)
                                    523 ;	-----------------------------------------
                                    524 ;	 function print_long_int
                                    525 ;	-----------------------------------------
      00078A                        526 _print_long_int:
      00078A AE 82            [24]  527 	mov	r6,dpl
      00078C AF 83            [24]  528 	mov	r7,dph
                                    529 ;	src/uart.c:81: display_buf[5] = 0;
      00078E 75 2E 00         [24]  530 	mov	(_print_long_int_display_buf_65536_21 + 0x0005),#0x00
                                    531 ;	src/uart.c:83: for (i = 9; i >= 0; i--) {
      000791 7D 09            [12]  532 	mov	r5,#0x09
      000793                        533 00106$:
                                    534 ;	src/uart.c:84: display_buf[i] = '0' + x % 10;
      000793 ED               [12]  535 	mov	a,r5
      000794 24 29            [12]  536 	add	a,#_print_long_int_display_buf_65536_21
      000796 F9               [12]  537 	mov	r1,a
      000797 75 1B 0A         [24]  538 	mov	__moduint_PARM_2,#0x0a
      00079A 75 1C 00         [24]  539 	mov	(__moduint_PARM_2 + 1),#0x00
      00079D 8E 82            [24]  540 	mov	dpl,r6
      00079F 8F 83            [24]  541 	mov	dph,r7
      0007A1 C0 07            [24]  542 	push	ar7
      0007A3 C0 06            [24]  543 	push	ar6
      0007A5 C0 05            [24]  544 	push	ar5
      0007A7 C0 01            [24]  545 	push	ar1
      0007A9 12 0E D1         [24]  546 	lcall	__moduint
      0007AC AB 82            [24]  547 	mov	r3,dpl
      0007AE D0 01            [24]  548 	pop	ar1
      0007B0 D0 05            [24]  549 	pop	ar5
      0007B2 D0 06            [24]  550 	pop	ar6
      0007B4 D0 07            [24]  551 	pop	ar7
      0007B6 74 30            [12]  552 	mov	a,#0x30
      0007B8 2B               [12]  553 	add	a,r3
      0007B9 F7               [12]  554 	mov	@r1,a
                                    555 ;	src/uart.c:85: x /= 10;
      0007BA 75 1B 0A         [24]  556 	mov	__divuint_PARM_2,#0x0a
      0007BD 75 1C 00         [24]  557 	mov	(__divuint_PARM_2 + 1),#0x00
      0007C0 8E 82            [24]  558 	mov	dpl,r6
      0007C2 8F 83            [24]  559 	mov	dph,r7
      0007C4 C0 05            [24]  560 	push	ar5
      0007C6 12 0E 6E         [24]  561 	lcall	__divuint
      0007C9 AE 82            [24]  562 	mov	r6,dpl
      0007CB AF 83            [24]  563 	mov	r7,dph
      0007CD D0 05            [24]  564 	pop	ar5
                                    565 ;	src/uart.c:83: for (i = 9; i >= 0; i--) {
      0007CF 1D               [12]  566 	dec	r5
      0007D0 ED               [12]  567 	mov	a,r5
      0007D1 30 E7 BF         [24]  568 	jnb	acc.7,00106$
                                    569 ;	src/uart.c:88: for (i = 0; i < 9; i++)
      0007D4 7F 00            [12]  570 	mov	r7,#0x00
      0007D6                        571 00108$:
                                    572 ;	src/uart.c:89: if (display_buf[i] != '0')
      0007D6 EF               [12]  573 	mov	a,r7
      0007D7 24 29            [12]  574 	add	a,#_print_long_int_display_buf_65536_21
      0007D9 F9               [12]  575 	mov	r1,a
      0007DA 87 06            [24]  576 	mov	ar6,@r1
      0007DC BE 30 09         [24]  577 	cjne	r6,#0x30,00120$
                                    578 ;	src/uart.c:88: for (i = 0; i < 9; i++)
      0007DF 0F               [12]  579 	inc	r7
      0007E0 C3               [12]  580 	clr	c
      0007E1 EF               [12]  581 	mov	a,r7
      0007E2 64 80            [12]  582 	xrl	a,#0x80
      0007E4 94 89            [12]  583 	subb	a,#0x89
      0007E6 40 EE            [24]  584 	jc	00108$
      0007E8                        585 00120$:
      0007E8                        586 00111$:
                                    587 ;	src/uart.c:92: for (; i < 10; i++)
      0007E8 C3               [12]  588 	clr	c
      0007E9 EF               [12]  589 	mov	a,r7
      0007EA 64 80            [12]  590 	xrl	a,#0x80
      0007EC 94 8A            [12]  591 	subb	a,#0x8a
      0007EE 50 10            [24]  592 	jnc	00113$
                                    593 ;	src/uart.c:93: uart_put_char(display_buf[i]);
      0007F0 EF               [12]  594 	mov	a,r7
      0007F1 24 29            [12]  595 	add	a,#_print_long_int_display_buf_65536_21
      0007F3 F9               [12]  596 	mov	r1,a
      0007F4 87 82            [24]  597 	mov	dpl,@r1
      0007F6 C0 07            [24]  598 	push	ar7
      0007F8 12 07 0D         [24]  599 	lcall	_uart_put_char
      0007FB D0 07            [24]  600 	pop	ar7
                                    601 ;	src/uart.c:92: for (; i < 10; i++)
      0007FD 0F               [12]  602 	inc	r7
      0007FE 80 E8            [24]  603 	sjmp	00111$
      000800                        604 00113$:
                                    605 ;	src/uart.c:94: }
      000800 22               [24]  606 	ret
                                    607 ;------------------------------------------------------------
                                    608 ;Allocation info for local variables in function 'printc'
                                    609 ;------------------------------------------------------------
                                    610 ;x                         Allocated to registers r7 
                                    611 ;------------------------------------------------------------
                                    612 ;	src/uart.c:96: void printc(uint8 x)
                                    613 ;	-----------------------------------------
                                    614 ;	 function printc
                                    615 ;	-----------------------------------------
      000801                        616 _printc:
      000801 AF 82            [24]  617 	mov	r7,dpl
                                    618 ;	src/uart.c:98: sending = 1;
      000803 75 21 01         [24]  619 	mov	_sending,#0x01
                                    620 ;	src/uart.c:99: SBUF = x;
      000806 8F 99            [24]  621 	mov	_SBUF,r7
                                    622 ;	src/uart.c:100: while(sending);
      000808                        623 00101$:
      000808 E5 21            [12]  624 	mov	a,_sending
      00080A 70 FC            [24]  625 	jnz	00101$
                                    626 ;	src/uart.c:101: }
      00080C 22               [24]  627 	ret
                                    628 ;------------------------------------------------------------
                                    629 ;Allocation info for local variables in function 'print_hex'
                                    630 ;------------------------------------------------------------
                                    631 ;x                         Allocated to registers r7 
                                    632 ;------------------------------------------------------------
                                    633 ;	src/uart.c:103: void print_hex(uint8 x)
                                    634 ;	-----------------------------------------
                                    635 ;	 function print_hex
                                    636 ;	-----------------------------------------
      00080D                        637 _print_hex:
      00080D AF 82            [24]  638 	mov	r7,dpl
                                    639 ;	src/uart.c:105: printc('0');
      00080F 75 82 30         [24]  640 	mov	dpl,#0x30
      000812 C0 07            [24]  641 	push	ar7
      000814 12 08 01         [24]  642 	lcall	_printc
                                    643 ;	src/uart.c:106: printc('x');
      000817 75 82 78         [24]  644 	mov	dpl,#0x78
      00081A 12 08 01         [24]  645 	lcall	_printc
      00081D D0 07            [24]  646 	pop	ar7
                                    647 ;	src/uart.c:107: printc(hex_table[x >> 4]);
      00081F EF               [12]  648 	mov	a,r7
      000820 C4               [12]  649 	swap	a
      000821 54 0F            [12]  650 	anl	a,#0x0f
      000823 90 0F F6         [24]  651 	mov	dptr,#_hex_table
      000826 93               [24]  652 	movc	a,@a+dptr
      000827 F5 82            [12]  653 	mov	dpl,a
      000829 C0 07            [24]  654 	push	ar7
      00082B 12 08 01         [24]  655 	lcall	_printc
      00082E D0 07            [24]  656 	pop	ar7
                                    657 ;	src/uart.c:108: printc(hex_table[x & 0x0F]);
      000830 53 07 0F         [24]  658 	anl	ar7,#0x0f
      000833 7E 00            [12]  659 	mov	r6,#0x00
      000835 EF               [12]  660 	mov	a,r7
      000836 24 F6            [12]  661 	add	a,#_hex_table
      000838 F5 82            [12]  662 	mov	dpl,a
      00083A EE               [12]  663 	mov	a,r6
      00083B 34 0F            [12]  664 	addc	a,#(_hex_table >> 8)
      00083D F5 83            [12]  665 	mov	dph,a
      00083F E4               [12]  666 	clr	a
      000840 93               [24]  667 	movc	a,@a+dptr
      000841 F5 82            [12]  668 	mov	dpl,a
      000843 12 08 01         [24]  669 	lcall	_printc
                                    670 ;	src/uart.c:109: printc(' ');
      000846 75 82 20         [24]  671 	mov	dpl,#0x20
                                    672 ;	src/uart.c:110: }
      000849 02 08 01         [24]  673 	ljmp	_printc
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'dump_hex'
                                    676 ;------------------------------------------------------------
                                    677 ;len                       Allocated with name '_dump_hex_PARM_2'
                                    678 ;buf                       Allocated to registers r5 r6 r7 
                                    679 ;i                         Allocated to registers r3 r4 
                                    680 ;------------------------------------------------------------
                                    681 ;	src/uart.c:112: void dump_hex(uint8 *buf, uint32 len)
                                    682 ;	-----------------------------------------
                                    683 ;	 function dump_hex
                                    684 ;	-----------------------------------------
      00084C                        685 _dump_hex:
      00084C AD 82            [24]  686 	mov	r5,dpl
      00084E AE 83            [24]  687 	mov	r6,dph
      000850 AF F0            [24]  688 	mov	r7,b
                                    689 ;	src/uart.c:116: for (i = 0; i < len; i ++) {
      000852 7B 00            [12]  690 	mov	r3,#0x00
      000854 7C 00            [12]  691 	mov	r4,#0x00
      000856                        692 00106$:
      000856 C3               [12]  693 	clr	c
      000857 EB               [12]  694 	mov	a,r3
      000858 95 33            [12]  695 	subb	a,_dump_hex_PARM_2
      00085A EC               [12]  696 	mov	a,r4
      00085B 95 34            [12]  697 	subb	a,(_dump_hex_PARM_2 + 1)
      00085D 50 59            [24]  698 	jnc	00104$
                                    699 ;	src/uart.c:117: print_hex(buf[i]);
      00085F EB               [12]  700 	mov	a,r3
      000860 2D               [12]  701 	add	a,r5
      000861 F8               [12]  702 	mov	r0,a
      000862 EC               [12]  703 	mov	a,r4
      000863 3E               [12]  704 	addc	a,r6
      000864 F9               [12]  705 	mov	r1,a
      000865 8F 02            [24]  706 	mov	ar2,r7
      000867 88 82            [24]  707 	mov	dpl,r0
      000869 89 83            [24]  708 	mov	dph,r1
      00086B 8A F0            [24]  709 	mov	b,r2
      00086D 12 0F 1E         [24]  710 	lcall	__gptrget
      000870 F5 82            [12]  711 	mov	dpl,a
      000872 C0 07            [24]  712 	push	ar7
      000874 C0 06            [24]  713 	push	ar6
      000876 C0 05            [24]  714 	push	ar5
      000878 C0 04            [24]  715 	push	ar4
      00087A C0 03            [24]  716 	push	ar3
      00087C 12 08 0D         [24]  717 	lcall	_print_hex
      00087F D0 03            [24]  718 	pop	ar3
      000881 D0 04            [24]  719 	pop	ar4
      000883 D0 05            [24]  720 	pop	ar5
      000885 D0 06            [24]  721 	pop	ar6
      000887 D0 07            [24]  722 	pop	ar7
                                    723 ;	src/uart.c:118: if ((i != 0) && (i % 16 == 0))
      000889 EB               [12]  724 	mov	a,r3
      00088A 4C               [12]  725 	orl	a,r4
      00088B 60 24            [24]  726 	jz	00107$
      00088D EB               [12]  727 	mov	a,r3
      00088E 54 0F            [12]  728 	anl	a,#0x0f
      000890 60 02            [24]  729 	jz	00130$
      000892 80 1D            [24]  730 	sjmp	00107$
      000894                        731 00130$:
                                    732 ;	src/uart.c:119: Prints("\n");
      000894 90 10 06         [24]  733 	mov	dptr,#___str_0
      000897 75 F0 80         [24]  734 	mov	b,#0x80
      00089A C0 07            [24]  735 	push	ar7
      00089C C0 06            [24]  736 	push	ar6
      00089E C0 05            [24]  737 	push	ar5
      0008A0 C0 04            [24]  738 	push	ar4
      0008A2 C0 03            [24]  739 	push	ar3
      0008A4 12 07 18         [24]  740 	lcall	_Prints
      0008A7 D0 03            [24]  741 	pop	ar3
      0008A9 D0 04            [24]  742 	pop	ar4
      0008AB D0 05            [24]  743 	pop	ar5
      0008AD D0 06            [24]  744 	pop	ar6
      0008AF D0 07            [24]  745 	pop	ar7
      0008B1                        746 00107$:
                                    747 ;	src/uart.c:116: for (i = 0; i < len; i ++) {
      0008B1 0B               [12]  748 	inc	r3
      0008B2 BB 00 A1         [24]  749 	cjne	r3,#0x00,00106$
      0008B5 0C               [12]  750 	inc	r4
      0008B6 80 9E            [24]  751 	sjmp	00106$
      0008B8                        752 00104$:
                                    753 ;	src/uart.c:121: Prints("\n");
      0008B8 90 10 06         [24]  754 	mov	dptr,#___str_0
      0008BB 75 F0 80         [24]  755 	mov	b,#0x80
                                    756 ;	src/uart.c:122: }
      0008BE 02 07 18         [24]  757 	ljmp	_Prints
                                    758 	.area CSEG    (CODE)
                                    759 	.area CONST   (CODE)
      000FF6                        760 _hex_table:
      000FF6 30                     761 	.db #0x30	; 48	'0'
      000FF7 31                     762 	.db #0x31	; 49	'1'
      000FF8 32                     763 	.db #0x32	; 50	'2'
      000FF9 33                     764 	.db #0x33	; 51	'3'
      000FFA 34                     765 	.db #0x34	; 52	'4'
      000FFB 35                     766 	.db #0x35	; 53	'5'
      000FFC 36                     767 	.db #0x36	; 54	'6'
      000FFD 37                     768 	.db #0x37	; 55	'7'
      000FFE 38                     769 	.db #0x38	; 56	'8'
      000FFF 39                     770 	.db #0x39	; 57	'9'
      001000 41                     771 	.db #0x41	; 65	'A'
      001001 42                     772 	.db #0x42	; 66	'B'
      001002 43                     773 	.db #0x43	; 67	'C'
      001003 44                     774 	.db #0x44	; 68	'D'
      001004 45                     775 	.db #0x45	; 69	'E'
      001005 46                     776 	.db #0x46	; 70	'F'
                                    777 	.area CONST   (CODE)
      001006                        778 ___str_0:
      001006 0A                     779 	.db 0x0a
      001007 00                     780 	.db 0x00
                                    781 	.area CSEG    (CODE)
                                    782 	.area XINIT   (CODE)
                                    783 	.area CABS    (ABS,CODE)
