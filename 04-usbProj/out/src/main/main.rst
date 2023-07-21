                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uart_ISR
                                     12 	.globl _timer0_ISR
                                     13 	.globl _main
                                     14 	.globl _D12_read_id
                                     15 	.globl _print_short_hex
                                     16 	.globl _Prints
                                     17 	.globl _init_uart
                                     18 	.globl _init_key_board
                                     19 	.globl _delay_ms
                                     20 	.globl _TF2
                                     21 	.globl _EXF2
                                     22 	.globl _RCLK
                                     23 	.globl _TCLK
                                     24 	.globl _EXEN2
                                     25 	.globl _TR2
                                     26 	.globl _C_T2
                                     27 	.globl _CP_RL2
                                     28 	.globl _T2CON_7
                                     29 	.globl _T2CON_6
                                     30 	.globl _T2CON_5
                                     31 	.globl _T2CON_4
                                     32 	.globl _T2CON_3
                                     33 	.globl _T2CON_2
                                     34 	.globl _T2CON_1
                                     35 	.globl _T2CON_0
                                     36 	.globl _PT2
                                     37 	.globl _ET2
                                     38 	.globl _CY
                                     39 	.globl _AC
                                     40 	.globl _F0
                                     41 	.globl _RS1
                                     42 	.globl _RS0
                                     43 	.globl _OV
                                     44 	.globl _F1
                                     45 	.globl _P
                                     46 	.globl _PS
                                     47 	.globl _PT1
                                     48 	.globl _PX1
                                     49 	.globl _PT0
                                     50 	.globl _PX0
                                     51 	.globl _RD
                                     52 	.globl _WR
                                     53 	.globl _T1
                                     54 	.globl _T0
                                     55 	.globl _INT1
                                     56 	.globl _INT0
                                     57 	.globl _TXD
                                     58 	.globl _RXD
                                     59 	.globl _P3_7
                                     60 	.globl _P3_6
                                     61 	.globl _P3_5
                                     62 	.globl _P3_4
                                     63 	.globl _P3_3
                                     64 	.globl _P3_2
                                     65 	.globl _P3_1
                                     66 	.globl _P3_0
                                     67 	.globl _EA
                                     68 	.globl _ES
                                     69 	.globl _ET1
                                     70 	.globl _EX1
                                     71 	.globl _ET0
                                     72 	.globl _EX0
                                     73 	.globl _P2_7
                                     74 	.globl _P2_6
                                     75 	.globl _P2_5
                                     76 	.globl _P2_4
                                     77 	.globl _P2_3
                                     78 	.globl _P2_2
                                     79 	.globl _P2_1
                                     80 	.globl _P2_0
                                     81 	.globl _SM0
                                     82 	.globl _SM1
                                     83 	.globl _SM2
                                     84 	.globl _REN
                                     85 	.globl _TB8
                                     86 	.globl _RB8
                                     87 	.globl _TI
                                     88 	.globl _RI
                                     89 	.globl _P1_7
                                     90 	.globl _P1_6
                                     91 	.globl _P1_5
                                     92 	.globl _P1_4
                                     93 	.globl _P1_3
                                     94 	.globl _P1_2
                                     95 	.globl _P1_1
                                     96 	.globl _P1_0
                                     97 	.globl _TF1
                                     98 	.globl _TR1
                                     99 	.globl _TF0
                                    100 	.globl _TR0
                                    101 	.globl _IE1
                                    102 	.globl _IT1
                                    103 	.globl _IE0
                                    104 	.globl _IT0
                                    105 	.globl _P0_7
                                    106 	.globl _P0_6
                                    107 	.globl _P0_5
                                    108 	.globl _P0_4
                                    109 	.globl _P0_3
                                    110 	.globl _P0_2
                                    111 	.globl _P0_1
                                    112 	.globl _P0_0
                                    113 	.globl _TH2
                                    114 	.globl _TL2
                                    115 	.globl _RCAP2H
                                    116 	.globl _RCAP2L
                                    117 	.globl _T2CON
                                    118 	.globl _B
                                    119 	.globl _ACC
                                    120 	.globl _PSW
                                    121 	.globl _IP
                                    122 	.globl _P3
                                    123 	.globl _IE
                                    124 	.globl _P2
                                    125 	.globl _SBUF
                                    126 	.globl _SCON
                                    127 	.globl _P1
                                    128 	.globl _TH1
                                    129 	.globl _TH0
                                    130 	.globl _TL1
                                    131 	.globl _TL0
                                    132 	.globl _TMOD
                                    133 	.globl _TCON
                                    134 	.globl _PCON
                                    135 	.globl _DPH
                                    136 	.globl _DPL
                                    137 	.globl _SP
                                    138 	.globl _P0
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0	=	0x0080
                           000081   145 _SP	=	0x0081
                           000082   146 _DPL	=	0x0082
                           000083   147 _DPH	=	0x0083
                           000087   148 _PCON	=	0x0087
                           000088   149 _TCON	=	0x0088
                           000089   150 _TMOD	=	0x0089
                           00008A   151 _TL0	=	0x008a
                           00008B   152 _TL1	=	0x008b
                           00008C   153 _TH0	=	0x008c
                           00008D   154 _TH1	=	0x008d
                           000090   155 _P1	=	0x0090
                           000098   156 _SCON	=	0x0098
                           000099   157 _SBUF	=	0x0099
                           0000A0   158 _P2	=	0x00a0
                           0000A8   159 _IE	=	0x00a8
                           0000B0   160 _P3	=	0x00b0
                           0000B8   161 _IP	=	0x00b8
                           0000D0   162 _PSW	=	0x00d0
                           0000E0   163 _ACC	=	0x00e0
                           0000F0   164 _B	=	0x00f0
                           0000C8   165 _T2CON	=	0x00c8
                           0000CA   166 _RCAP2L	=	0x00ca
                           0000CB   167 _RCAP2H	=	0x00cb
                           0000CC   168 _TL2	=	0x00cc
                           0000CD   169 _TH2	=	0x00cd
                                    170 ;--------------------------------------------------------
                                    171 ; special function bits
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P0_0	=	0x0080
                           000081   176 _P0_1	=	0x0081
                           000082   177 _P0_2	=	0x0082
                           000083   178 _P0_3	=	0x0083
                           000084   179 _P0_4	=	0x0084
                           000085   180 _P0_5	=	0x0085
                           000086   181 _P0_6	=	0x0086
                           000087   182 _P0_7	=	0x0087
                           000088   183 _IT0	=	0x0088
                           000089   184 _IE0	=	0x0089
                           00008A   185 _IT1	=	0x008a
                           00008B   186 _IE1	=	0x008b
                           00008C   187 _TR0	=	0x008c
                           00008D   188 _TF0	=	0x008d
                           00008E   189 _TR1	=	0x008e
                           00008F   190 _TF1	=	0x008f
                           000090   191 _P1_0	=	0x0090
                           000091   192 _P1_1	=	0x0091
                           000092   193 _P1_2	=	0x0092
                           000093   194 _P1_3	=	0x0093
                           000094   195 _P1_4	=	0x0094
                           000095   196 _P1_5	=	0x0095
                           000096   197 _P1_6	=	0x0096
                           000097   198 _P1_7	=	0x0097
                           000098   199 _RI	=	0x0098
                           000099   200 _TI	=	0x0099
                           00009A   201 _RB8	=	0x009a
                           00009B   202 _TB8	=	0x009b
                           00009C   203 _REN	=	0x009c
                           00009D   204 _SM2	=	0x009d
                           00009E   205 _SM1	=	0x009e
                           00009F   206 _SM0	=	0x009f
                           0000A0   207 _P2_0	=	0x00a0
                           0000A1   208 _P2_1	=	0x00a1
                           0000A2   209 _P2_2	=	0x00a2
                           0000A3   210 _P2_3	=	0x00a3
                           0000A4   211 _P2_4	=	0x00a4
                           0000A5   212 _P2_5	=	0x00a5
                           0000A6   213 _P2_6	=	0x00a6
                           0000A7   214 _P2_7	=	0x00a7
                           0000A8   215 _EX0	=	0x00a8
                           0000A9   216 _ET0	=	0x00a9
                           0000AA   217 _EX1	=	0x00aa
                           0000AB   218 _ET1	=	0x00ab
                           0000AC   219 _ES	=	0x00ac
                           0000AF   220 _EA	=	0x00af
                           0000B0   221 _P3_0	=	0x00b0
                           0000B1   222 _P3_1	=	0x00b1
                           0000B2   223 _P3_2	=	0x00b2
                           0000B3   224 _P3_3	=	0x00b3
                           0000B4   225 _P3_4	=	0x00b4
                           0000B5   226 _P3_5	=	0x00b5
                           0000B6   227 _P3_6	=	0x00b6
                           0000B7   228 _P3_7	=	0x00b7
                           0000B0   229 _RXD	=	0x00b0
                           0000B1   230 _TXD	=	0x00b1
                           0000B2   231 _INT0	=	0x00b2
                           0000B3   232 _INT1	=	0x00b3
                           0000B4   233 _T0	=	0x00b4
                           0000B5   234 _T1	=	0x00b5
                           0000B6   235 _WR	=	0x00b6
                           0000B7   236 _RD	=	0x00b7
                           0000B8   237 _PX0	=	0x00b8
                           0000B9   238 _PT0	=	0x00b9
                           0000BA   239 _PX1	=	0x00ba
                           0000BB   240 _PT1	=	0x00bb
                           0000BC   241 _PS	=	0x00bc
                           0000D0   242 _P	=	0x00d0
                           0000D1   243 _F1	=	0x00d1
                           0000D2   244 _OV	=	0x00d2
                           0000D3   245 _RS0	=	0x00d3
                           0000D4   246 _RS1	=	0x00d4
                           0000D5   247 _F0	=	0x00d5
                           0000D6   248 _AC	=	0x00d6
                           0000D7   249 _CY	=	0x00d7
                           0000AD   250 _ET2	=	0x00ad
                           0000BD   251 _PT2	=	0x00bd
                           0000C8   252 _T2CON_0	=	0x00c8
                           0000C9   253 _T2CON_1	=	0x00c9
                           0000CA   254 _T2CON_2	=	0x00ca
                           0000CB   255 _T2CON_3	=	0x00cb
                           0000CC   256 _T2CON_4	=	0x00cc
                           0000CD   257 _T2CON_5	=	0x00cd
                           0000CE   258 _T2CON_6	=	0x00ce
                           0000CF   259 _T2CON_7	=	0x00cf
                           0000C8   260 _CP_RL2	=	0x00c8
                           0000C9   261 _C_T2	=	0x00c9
                           0000CA   262 _TR2	=	0x00ca
                           0000CB   263 _EXEN2	=	0x00cb
                           0000CC   264 _TCLK	=	0x00cc
                           0000CD   265 _RCLK	=	0x00cd
                           0000CE   266 _EXF2	=	0x00ce
                           0000CF   267 _TF2	=	0x00cf
                                    268 ;--------------------------------------------------------
                                    269 ; overlayable register banks
                                    270 ;--------------------------------------------------------
                                    271 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        272 	.ds 8
                                    273 ;--------------------------------------------------------
                                    274 ; internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area DSEG    (DATA)
      000009                        277 _timer0_ISR_i_65536_18:
      000009                        278 	.ds 2
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable items in internal ram 
                                    281 ;--------------------------------------------------------
                                    282 ;--------------------------------------------------------
                                    283 ; Stack segment in internal ram 
                                    284 ;--------------------------------------------------------
                                    285 	.area	SSEG
      00001C                        286 __start__stack:
      00001C                        287 	.ds	1
                                    288 
                                    289 ;--------------------------------------------------------
                                    290 ; indirectly addressable internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area ISEG    (DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; absolute internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area IABS    (ABS,DATA)
                                    297 	.area IABS    (ABS,DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; bit data
                                    300 ;--------------------------------------------------------
                                    301 	.area BSEG    (BIT)
                                    302 ;--------------------------------------------------------
                                    303 ; paged external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area PSEG    (PAG,XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XSEG    (XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; absolute external ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XABS    (ABS,XDATA)
                                    314 ;--------------------------------------------------------
                                    315 ; external initialized ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area XISEG   (XDATA)
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT0 (CODE)
                                    320 	.area GSINIT1 (CODE)
                                    321 	.area GSINIT2 (CODE)
                                    322 	.area GSINIT3 (CODE)
                                    323 	.area GSINIT4 (CODE)
                                    324 	.area GSINIT5 (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area CSEG    (CODE)
                                    328 ;--------------------------------------------------------
                                    329 ; interrupt vector 
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
      000000                        332 __interrupt_vect:
      000000 02 00 29         [24]  333 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  334 	reti
      000004                        335 	.ds	7
      00000B 02 02 1A         [24]  336 	ljmp	_timer0_ISR
      00000E                        337 	.ds	5
      000013 32               [24]  338 	reti
      000014                        339 	.ds	7
      00001B 32               [24]  340 	reti
      00001C                        341 	.ds	7
      000023 02 02 B1         [24]  342 	ljmp	_uart_ISR
                                    343 ;--------------------------------------------------------
                                    344 ; global & static initialisations
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.area GSFINAL (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.globl __sdcc_gsinit_startup
                                    351 	.globl __sdcc_program_startup
                                    352 	.globl __start__stack
                                    353 	.globl __mcs51_genXINIT
                                    354 	.globl __mcs51_genXRAMCLEAR
                                    355 	.globl __mcs51_genRAMCLEAR
                                    356 ;------------------------------------------------------------
                                    357 ;Allocation info for local variables in function 'timer0_ISR'
                                    358 ;------------------------------------------------------------
                                    359 ;i                         Allocated with name '_timer0_ISR_i_65536_18'
                                    360 ;------------------------------------------------------------
                                    361 ;	src/main.c:31: static uint32 i = 0;
      000085 E4               [12]  362 	clr	a
      000086 F5 09            [12]  363 	mov	_timer0_ISR_i_65536_18,a
      000088 F5 0A            [12]  364 	mov	(_timer0_ISR_i_65536_18 + 1),a
                                    365 	.area GSFINAL (CODE)
      00008D 02 00 26         [24]  366 	ljmp	__sdcc_program_startup
                                    367 ;--------------------------------------------------------
                                    368 ; Home
                                    369 ;--------------------------------------------------------
                                    370 	.area HOME    (CODE)
                                    371 	.area HOME    (CODE)
      000026                        372 __sdcc_program_startup:
      000026 02 01 DB         [24]  373 	ljmp	_main
                                    374 ;	return from main will return to caller
                                    375 ;--------------------------------------------------------
                                    376 ; code
                                    377 ;--------------------------------------------------------
                                    378 	.area CSEG    (CODE)
                                    379 ;------------------------------------------------------------
                                    380 ;Allocation info for local variables in function 'main'
                                    381 ;------------------------------------------------------------
                                    382 ;ret                       Allocated to registers 
                                    383 ;i                         Allocated to registers 
                                    384 ;key                       Allocated to registers 
                                    385 ;id                        Allocated to registers r6 r7 
                                    386 ;------------------------------------------------------------
                                    387 ;	src/main.c:8: void main()
                                    388 ;	-----------------------------------------
                                    389 ;	 function main
                                    390 ;	-----------------------------------------
      0001DB                        391 _main:
                           000007   392 	ar7 = 0x07
                           000006   393 	ar6 = 0x06
                           000005   394 	ar5 = 0x05
                           000004   395 	ar4 = 0x04
                           000003   396 	ar3 = 0x03
                           000002   397 	ar2 = 0x02
                           000001   398 	ar1 = 0x01
                           000000   399 	ar0 = 0x00
                                    400 ;	src/main.c:15: init_key_board();
      0001DB 12 00 AD         [24]  401 	lcall	_init_key_board
                                    402 ;	src/main.c:16: init_uart();
      0001DE 12 03 0E         [24]  403 	lcall	_init_uart
                                    404 ;	src/main.c:18: id = D12_read_id();
      0001E1 12 02 D4         [24]  405 	lcall	_D12_read_id
      0001E4 AE 82            [24]  406 	mov	r6,dpl
      0001E6 AF 83            [24]  407 	mov	r7,dph
                                    408 ;	src/main.c:19: Prints("read pdiusb12 id is: ");
      0001E8 90 03 D1         [24]  409 	mov	dptr,#___str_0
      0001EB 75 F0 80         [24]  410 	mov	b,#0x80
      0001EE C0 07            [24]  411 	push	ar7
      0001F0 C0 06            [24]  412 	push	ar6
      0001F2 12 03 36         [24]  413 	lcall	_Prints
      0001F5 D0 06            [24]  414 	pop	ar6
      0001F7 D0 07            [24]  415 	pop	ar7
                                    416 ;	src/main.c:20: print_short_hex(id);
      0001F9 8E 82            [24]  417 	mov	dpl,r6
      0001FB 8F 83            [24]  418 	mov	dph,r7
      0001FD 12 03 61         [24]  419 	lcall	_print_short_hex
                                    420 ;	src/main.c:21: Prints("\n");
      000200 90 03 E7         [24]  421 	mov	dptr,#___str_1
      000203 75 F0 80         [24]  422 	mov	b,#0x80
      000206 12 03 36         [24]  423 	lcall	_Prints
                                    424 ;	src/main.c:23: while(1) {
      000209                        425 00102$:
                                    426 ;	src/main.c:24: Prints("hello world!\n");
      000209 90 03 E9         [24]  427 	mov	dptr,#___str_2
      00020C 75 F0 80         [24]  428 	mov	b,#0x80
      00020F 12 03 36         [24]  429 	lcall	_Prints
                                    430 ;	src/main.c:25: delay_ms(3000);
      000212 90 0B B8         [24]  431 	mov	dptr,#0x0bb8
      000215 12 00 90         [24]  432 	lcall	_delay_ms
                                    433 ;	src/main.c:27: }
      000218 80 EF            [24]  434 	sjmp	00102$
                                    435 ;------------------------------------------------------------
                                    436 ;Allocation info for local variables in function 'timer0_ISR'
                                    437 ;------------------------------------------------------------
                                    438 ;i                         Allocated with name '_timer0_ISR_i_65536_18'
                                    439 ;------------------------------------------------------------
                                    440 ;	src/main.c:29: void timer0_ISR(void) __interrupt (1)
                                    441 ;	-----------------------------------------
                                    442 ;	 function timer0_ISR
                                    443 ;	-----------------------------------------
      00021A                        444 _timer0_ISR:
      00021A C0 E0            [24]  445 	push	acc
      00021C C0 F0            [24]  446 	push	b
      00021E C0 07            [24]  447 	push	ar7
      000220 C0 01            [24]  448 	push	ar1
      000222 C0 00            [24]  449 	push	ar0
      000224 C0 D0            [24]  450 	push	psw
      000226 75 D0 00         [24]  451 	mov	psw,#0x00
                                    452 ;	src/main.c:33: TH0 = (65536 - TIMER0_RELOAD_NUM) / 256;
      000229 75 8C DC         [24]  453 	mov	_TH0,#0xdc
                                    454 ;	src/main.c:34: TL0 = (65536 - TIMER0_RELOAD_NUM) % 256;
      00022C 75 8A 00         [24]  455 	mov	_TL0,#0x00
                                    456 ;	src/main.c:36: i++;
      00022F 05 09            [12]  457 	inc	_timer0_ISR_i_65536_18
      000231 E4               [12]  458 	clr	a
      000232 B5 09 02         [24]  459 	cjne	a,_timer0_ISR_i_65536_18,00128$
      000235 05 0A            [12]  460 	inc	(_timer0_ISR_i_65536_18 + 1)
      000237                        461 00128$:
                                    462 ;	src/main.c:37: if (i > 200) {
      000237 C3               [12]  463 	clr	c
      000238 74 C8            [12]  464 	mov	a,#0xc8
      00023A 95 09            [12]  465 	subb	a,_timer0_ISR_i_65536_18
      00023C E4               [12]  466 	clr	a
      00023D 95 0A            [12]  467 	subb	a,(_timer0_ISR_i_65536_18 + 1)
      00023F 50 07            [24]  468 	jnc	00102$
                                    469 ;	src/main.c:38: i = 0;
      000241 E4               [12]  470 	clr	a
      000242 F5 09            [12]  471 	mov	_timer0_ISR_i_65536_18,a
      000244 F5 0A            [12]  472 	mov	(_timer0_ISR_i_65536_18 + 1),a
                                    473 ;	src/main.c:39: LED8 = !LED8;
      000246 B2 A7            [12]  474 	cpl	_P2_7
      000248                        475 00102$:
                                    476 ;	src/main.c:42: if (!KeyCanChange)
      000248 78 1B            [12]  477 	mov	r0,#_KeyCanChange
      00024A E6               [12]  478 	mov	a,@r0
      00024B 70 02            [24]  479 	jnz	00104$
                                    480 ;	src/main.c:43: return;
      00024D 80 55            [24]  481 	sjmp	00110$
      00024F                        482 00104$:
                                    483 ;	src/main.c:45: KeyCurrent = GetKeyValue();
      00024F E5 90            [12]  484 	mov	a,_P1
      000251 F4               [12]  485 	cpl	a
      000252 FF               [12]  486 	mov	r7,a
      000253 78 14            [12]  487 	mov	r0,#_KeyCurrent
      000255 A6 07            [24]  488 	mov	@r0,ar7
                                    489 ;	src/main.c:47: if (KeyCurrent != KeyOld) {
      000257 78 14            [12]  490 	mov	r0,#_KeyCurrent
      000259 79 15            [12]  491 	mov	r1,#_KeyOld
      00025B 86 F0            [24]  492 	mov	b,@r0
      00025D E7               [12]  493 	mov	a,@r1
      00025E B5 F0 02         [24]  494 	cjne	a,b,00131$
      000261 80 0C            [24]  495 	sjmp	00108$
      000263                        496 00131$:
                                    497 ;	src/main.c:48: KeyNoChangedTime = 0;
      000263 78 16            [12]  498 	mov	r0,#_KeyNoChangedTime
      000265 76 00            [12]  499 	mov	@r0,#0x00
                                    500 ;	src/main.c:49: KeyOld = KeyCurrent;
      000267 78 14            [12]  501 	mov	r0,#_KeyCurrent
      000269 79 15            [12]  502 	mov	r1,#_KeyOld
      00026B E6               [12]  503 	mov	a,@r0
      00026C F7               [12]  504 	mov	@r1,a
                                    505 ;	src/main.c:50: return;
      00026D 80 35            [24]  506 	sjmp	00110$
      00026F                        507 00108$:
                                    508 ;	src/main.c:53: KeyNoChangedTime++;
      00026F 78 16            [12]  509 	mov	r0,#_KeyNoChangedTime
      000271 E6               [12]  510 	mov	a,@r0
      000272 78 16            [12]  511 	mov	r0,#_KeyNoChangedTime
      000274 04               [12]  512 	inc	a
      000275 F6               [12]  513 	mov	@r0,a
                                    514 ;	src/main.c:54: if (KeyNoChangedTime >= 1) {
      000276 78 16            [12]  515 	mov	r0,#_KeyNoChangedTime
      000278 B6 01 00         [24]  516 	cjne	@r0,#0x01,00132$
      00027B                        517 00132$:
      00027B 40 27            [24]  518 	jc	00110$
                                    519 ;	src/main.c:55: KeyNoChangedTime = 1;
      00027D 78 16            [12]  520 	mov	r0,#_KeyNoChangedTime
      00027F 76 01            [12]  521 	mov	@r0,#0x01
                                    522 ;	src/main.c:56: KeyPress = KeyOld;
      000281 78 15            [12]  523 	mov	r0,#_KeyOld
      000283 79 17            [12]  524 	mov	r1,#_KeyPress
      000285 E6               [12]  525 	mov	a,@r0
      000286 F7               [12]  526 	mov	@r1,a
                                    527 ;	src/main.c:57: KeyDown |= (~KeyLast) & (KeyPress);
      000287 78 1A            [12]  528 	mov	r0,#_KeyLast
      000289 E6               [12]  529 	mov	a,@r0
      00028A F4               [12]  530 	cpl	a
      00028B FF               [12]  531 	mov	r7,a
      00028C 78 17            [12]  532 	mov	r0,#_KeyPress
      00028E E6               [12]  533 	mov	a,@r0
      00028F 5F               [12]  534 	anl	a,r7
      000290 78 18            [12]  535 	mov	r0,#_KeyDown
      000292 46               [12]  536 	orl	a,@r0
      000293 F6               [12]  537 	mov	@r0,a
                                    538 ;	src/main.c:58: KeyUp |= KeyLast & (KeyPress);
      000294 78 1A            [12]  539 	mov	r0,#_KeyLast
      000296 79 17            [12]  540 	mov	r1,#_KeyPress
      000298 E7               [12]  541 	mov	a,@r1
      000299 56               [12]  542 	anl	a,@r0
      00029A 78 19            [12]  543 	mov	r0,#_KeyUp
      00029C 46               [12]  544 	orl	a,@r0
      00029D F6               [12]  545 	mov	@r0,a
                                    546 ;	src/main.c:59: KeyLast = KeyPress;
      00029E 78 17            [12]  547 	mov	r0,#_KeyPress
      0002A0 79 1A            [12]  548 	mov	r1,#_KeyLast
      0002A2 E6               [12]  549 	mov	a,@r0
      0002A3 F7               [12]  550 	mov	@r1,a
      0002A4                        551 00110$:
                                    552 ;	src/main.c:62: }
      0002A4 D0 D0            [24]  553 	pop	psw
      0002A6 D0 00            [24]  554 	pop	ar0
      0002A8 D0 01            [24]  555 	pop	ar1
      0002AA D0 07            [24]  556 	pop	ar7
      0002AC D0 F0            [24]  557 	pop	b
      0002AE D0 E0            [24]  558 	pop	acc
      0002B0 32               [24]  559 	reti
                                    560 ;	eliminated unneeded push/pop dpl
                                    561 ;	eliminated unneeded push/pop dph
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'uart_ISR'
                                    564 ;------------------------------------------------------------
                                    565 ;	src/main.c:64: void uart_ISR(void)	__interrupt (4)
                                    566 ;	-----------------------------------------
                                    567 ;	 function uart_ISR
                                    568 ;	-----------------------------------------
      0002B1                        569 _uart_ISR:
                                    570 ;	src/main.c:66: if (RI) {
                                    571 ;	src/main.c:67: RI = 0;			/* clear recieve interrupt */
                                    572 ;	assignBit
      0002B1 10 98 05         [24]  573 	jbc	_RI,00104$
                                    574 ;	src/main.c:69: TI = 0;
                                    575 ;	assignBit
      0002B4 C2 99            [12]  576 	clr	_TI
                                    577 ;	src/main.c:70: sending = 0;
      0002B6 75 0B 00         [24]  578 	mov	_sending,#0x00
      0002B9                        579 00104$:
                                    580 ;	src/main.c:72: }
      0002B9 32               [24]  581 	reti
                                    582 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    583 ;	eliminated unneeded push/pop not_psw
                                    584 ;	eliminated unneeded push/pop dpl
                                    585 ;	eliminated unneeded push/pop dph
                                    586 ;	eliminated unneeded push/pop b
                                    587 ;	eliminated unneeded push/pop acc
                                    588 	.area CSEG    (CODE)
                                    589 	.area CONST   (CODE)
                                    590 	.area CONST   (CODE)
      0003D1                        591 ___str_0:
      0003D1 72 65 61 64 20 70 64   592 	.ascii "read pdiusb12 id is: "
             69 75 73 62 31 32 20
             69 64 20 69 73 3A 20
      0003E6 00                     593 	.db 0x00
                                    594 	.area CSEG    (CODE)
                                    595 	.area CONST   (CODE)
      0003E7                        596 ___str_1:
      0003E7 0A                     597 	.db 0x0a
      0003E8 00                     598 	.db 0x00
                                    599 	.area CSEG    (CODE)
                                    600 	.area CONST   (CODE)
      0003E9                        601 ___str_2:
      0003E9 68 65 6C 6C 6F 20 77   602 	.ascii "hello world!"
             6F 72 6C 64 21
      0003F5 0A                     603 	.db 0x0a
      0003F6 00                     604 	.db 0x00
                                    605 	.area CSEG    (CODE)
                                    606 	.area XINIT   (CODE)
                                    607 	.area CABS    (ABS,CODE)
