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
                                     11 	.globl _main
                                     12 	.globl _key_scan
                                     13 	.globl _delay_ms
                                     14 	.globl _led_light_on
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
                                    134 ;--------------------------------------------------------
                                    135 ; special function registers
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0	=	0x0080
                           000081   140 _SP	=	0x0081
                           000082   141 _DPL	=	0x0082
                           000083   142 _DPH	=	0x0083
                           000087   143 _PCON	=	0x0087
                           000088   144 _TCON	=	0x0088
                           000089   145 _TMOD	=	0x0089
                           00008A   146 _TL0	=	0x008a
                           00008B   147 _TL1	=	0x008b
                           00008C   148 _TH0	=	0x008c
                           00008D   149 _TH1	=	0x008d
                           000090   150 _P1	=	0x0090
                           000098   151 _SCON	=	0x0098
                           000099   152 _SBUF	=	0x0099
                           0000A0   153 _P2	=	0x00a0
                           0000A8   154 _IE	=	0x00a8
                           0000B0   155 _P3	=	0x00b0
                           0000B8   156 _IP	=	0x00b8
                           0000D0   157 _PSW	=	0x00d0
                           0000E0   158 _ACC	=	0x00e0
                           0000F0   159 _B	=	0x00f0
                           0000C8   160 _T2CON	=	0x00c8
                           0000CA   161 _RCAP2L	=	0x00ca
                           0000CB   162 _RCAP2H	=	0x00cb
                           0000CC   163 _TL2	=	0x00cc
                           0000CD   164 _TH2	=	0x00cd
                                    165 ;--------------------------------------------------------
                                    166 ; special function bits
                                    167 ;--------------------------------------------------------
                                    168 	.area RSEG    (ABS,DATA)
      000000                        169 	.org 0x0000
                           000080   170 _P0_0	=	0x0080
                           000081   171 _P0_1	=	0x0081
                           000082   172 _P0_2	=	0x0082
                           000083   173 _P0_3	=	0x0083
                           000084   174 _P0_4	=	0x0084
                           000085   175 _P0_5	=	0x0085
                           000086   176 _P0_6	=	0x0086
                           000087   177 _P0_7	=	0x0087
                           000088   178 _IT0	=	0x0088
                           000089   179 _IE0	=	0x0089
                           00008A   180 _IT1	=	0x008a
                           00008B   181 _IE1	=	0x008b
                           00008C   182 _TR0	=	0x008c
                           00008D   183 _TF0	=	0x008d
                           00008E   184 _TR1	=	0x008e
                           00008F   185 _TF1	=	0x008f
                           000090   186 _P1_0	=	0x0090
                           000091   187 _P1_1	=	0x0091
                           000092   188 _P1_2	=	0x0092
                           000093   189 _P1_3	=	0x0093
                           000094   190 _P1_4	=	0x0094
                           000095   191 _P1_5	=	0x0095
                           000096   192 _P1_6	=	0x0096
                           000097   193 _P1_7	=	0x0097
                           000098   194 _RI	=	0x0098
                           000099   195 _TI	=	0x0099
                           00009A   196 _RB8	=	0x009a
                           00009B   197 _TB8	=	0x009b
                           00009C   198 _REN	=	0x009c
                           00009D   199 _SM2	=	0x009d
                           00009E   200 _SM1	=	0x009e
                           00009F   201 _SM0	=	0x009f
                           0000A0   202 _P2_0	=	0x00a0
                           0000A1   203 _P2_1	=	0x00a1
                           0000A2   204 _P2_2	=	0x00a2
                           0000A3   205 _P2_3	=	0x00a3
                           0000A4   206 _P2_4	=	0x00a4
                           0000A5   207 _P2_5	=	0x00a5
                           0000A6   208 _P2_6	=	0x00a6
                           0000A7   209 _P2_7	=	0x00a7
                           0000A8   210 _EX0	=	0x00a8
                           0000A9   211 _ET0	=	0x00a9
                           0000AA   212 _EX1	=	0x00aa
                           0000AB   213 _ET1	=	0x00ab
                           0000AC   214 _ES	=	0x00ac
                           0000AF   215 _EA	=	0x00af
                           0000B0   216 _P3_0	=	0x00b0
                           0000B1   217 _P3_1	=	0x00b1
                           0000B2   218 _P3_2	=	0x00b2
                           0000B3   219 _P3_3	=	0x00b3
                           0000B4   220 _P3_4	=	0x00b4
                           0000B5   221 _P3_5	=	0x00b5
                           0000B6   222 _P3_6	=	0x00b6
                           0000B7   223 _P3_7	=	0x00b7
                           0000B0   224 _RXD	=	0x00b0
                           0000B1   225 _TXD	=	0x00b1
                           0000B2   226 _INT0	=	0x00b2
                           0000B3   227 _INT1	=	0x00b3
                           0000B4   228 _T0	=	0x00b4
                           0000B5   229 _T1	=	0x00b5
                           0000B6   230 _WR	=	0x00b6
                           0000B7   231 _RD	=	0x00b7
                           0000B8   232 _PX0	=	0x00b8
                           0000B9   233 _PT0	=	0x00b9
                           0000BA   234 _PX1	=	0x00ba
                           0000BB   235 _PT1	=	0x00bb
                           0000BC   236 _PS	=	0x00bc
                           0000D0   237 _P	=	0x00d0
                           0000D1   238 _F1	=	0x00d1
                           0000D2   239 _OV	=	0x00d2
                           0000D3   240 _RS0	=	0x00d3
                           0000D4   241 _RS1	=	0x00d4
                           0000D5   242 _F0	=	0x00d5
                           0000D6   243 _AC	=	0x00d6
                           0000D7   244 _CY	=	0x00d7
                           0000AD   245 _ET2	=	0x00ad
                           0000BD   246 _PT2	=	0x00bd
                           0000C8   247 _T2CON_0	=	0x00c8
                           0000C9   248 _T2CON_1	=	0x00c9
                           0000CA   249 _T2CON_2	=	0x00ca
                           0000CB   250 _T2CON_3	=	0x00cb
                           0000CC   251 _T2CON_4	=	0x00cc
                           0000CD   252 _T2CON_5	=	0x00cd
                           0000CE   253 _T2CON_6	=	0x00ce
                           0000CF   254 _T2CON_7	=	0x00cf
                           0000C8   255 _CP_RL2	=	0x00c8
                           0000C9   256 _C_T2	=	0x00c9
                           0000CA   257 _TR2	=	0x00ca
                           0000CB   258 _EXEN2	=	0x00cb
                           0000CC   259 _TCLK	=	0x00cc
                           0000CD   260 _RCLK	=	0x00cd
                           0000CE   261 _EXF2	=	0x00ce
                           0000CF   262 _TF2	=	0x00cf
                                    263 ;--------------------------------------------------------
                                    264 ; overlayable register banks
                                    265 ;--------------------------------------------------------
                                    266 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        267 	.ds 8
                                    268 ;--------------------------------------------------------
                                    269 ; internal ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area DSEG    (DATA)
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable items in internal ram 
                                    274 ;--------------------------------------------------------
                                    275 ;--------------------------------------------------------
                                    276 ; Stack segment in internal ram 
                                    277 ;--------------------------------------------------------
                                    278 	.area	SSEG
      00000A                        279 __start__stack:
      00000A                        280 	.ds	1
                                    281 
                                    282 ;--------------------------------------------------------
                                    283 ; indirectly addressable internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area ISEG    (DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; absolute internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area IABS    (ABS,DATA)
                                    290 	.area IABS    (ABS,DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; bit data
                                    293 ;--------------------------------------------------------
                                    294 	.area BSEG    (BIT)
                                    295 ;--------------------------------------------------------
                                    296 ; paged external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area PSEG    (PAG,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XSEG    (XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XABS    (ABS,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external initialized ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XISEG   (XDATA)
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT0 (CODE)
                                    313 	.area GSINIT1 (CODE)
                                    314 	.area GSINIT2 (CODE)
                                    315 	.area GSINIT3 (CODE)
                                    316 	.area GSINIT4 (CODE)
                                    317 	.area GSINIT5 (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.area GSFINAL (CODE)
                                    320 	.area CSEG    (CODE)
                                    321 ;--------------------------------------------------------
                                    322 ; interrupt vector 
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
      000000                        325 __interrupt_vect:
      000000 02 00 06         [24]  326 	ljmp	__sdcc_gsinit_startup
                                    327 ;--------------------------------------------------------
                                    328 ; global & static initialisations
                                    329 ;--------------------------------------------------------
                                    330 	.area HOME    (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.area GSFINAL (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.globl __sdcc_gsinit_startup
                                    335 	.globl __sdcc_program_startup
                                    336 	.globl __start__stack
                                    337 	.globl __mcs51_genXINIT
                                    338 	.globl __mcs51_genXRAMCLEAR
                                    339 	.globl __mcs51_genRAMCLEAR
                                    340 	.area GSFINAL (CODE)
      000062 02 00 03         [24]  341 	ljmp	__sdcc_program_startup
                                    342 ;--------------------------------------------------------
                                    343 ; Home
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
                                    346 	.area HOME    (CODE)
      000003                        347 __sdcc_program_startup:
      000003 02 01 89         [24]  348 	ljmp	_main
                                    349 ;	return from main will return to caller
                                    350 ;--------------------------------------------------------
                                    351 ; code
                                    352 ;--------------------------------------------------------
                                    353 	.area CSEG    (CODE)
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'main'
                                    356 ;------------------------------------------------------------
                                    357 ;ret                       Allocated to registers 
                                    358 ;i                         Allocated to registers r6 r7 
                                    359 ;key                       Allocated to registers r7 
                                    360 ;------------------------------------------------------------
                                    361 ;	src/main.c:6: int main()
                                    362 ;	-----------------------------------------
                                    363 ;	 function main
                                    364 ;	-----------------------------------------
      000189                        365 _main:
                           000007   366 	ar7 = 0x07
                           000006   367 	ar6 = 0x06
                           000005   368 	ar5 = 0x05
                           000004   369 	ar4 = 0x04
                           000003   370 	ar3 = 0x03
                           000002   371 	ar2 = 0x02
                           000001   372 	ar1 = 0x01
                           000000   373 	ar0 = 0x00
                                    374 ;	src/main.c:12: for (i = 0; i < LED_NUM; i ++) {
      000189 7E 00            [12]  375 	mov	r6,#0x00
      00018B 7F 00            [12]  376 	mov	r7,#0x00
      00018D                        377 00110$:
                                    378 ;	src/main.c:13: led_light_on(i, true);
      00018D 8E 82            [24]  379 	mov	dpl,r6
      00018F 75 09 01         [24]  380 	mov	_led_light_on_PARM_2,#0x01
      000192 C0 07            [24]  381 	push	ar7
      000194 C0 06            [24]  382 	push	ar6
      000196 12 01 2E         [24]  383 	lcall	_led_light_on
                                    384 ;	src/main.c:14: delay_ms(500);
      000199 90 01 F4         [24]  385 	mov	dptr,#0x01f4
      00019C 12 00 65         [24]  386 	lcall	_delay_ms
      00019F D0 06            [24]  387 	pop	ar6
      0001A1 D0 07            [24]  388 	pop	ar7
                                    389 ;	src/main.c:12: for (i = 0; i < LED_NUM; i ++) {
      0001A3 0E               [12]  390 	inc	r6
      0001A4 BE 00 01         [24]  391 	cjne	r6,#0x00,00149$
      0001A7 0F               [12]  392 	inc	r7
      0001A8                        393 00149$:
      0001A8 C3               [12]  394 	clr	c
      0001A9 EE               [12]  395 	mov	a,r6
      0001AA 94 08            [12]  396 	subb	a,#0x08
      0001AC EF               [12]  397 	mov	a,r7
      0001AD 64 80            [12]  398 	xrl	a,#0x80
      0001AF 94 80            [12]  399 	subb	a,#0x80
      0001B1 40 DA            [24]  400 	jc	00110$
                                    401 ;	src/main.c:17: for (i = 0; i < LED_NUM; i ++) {
      0001B3 7E 00            [12]  402 	mov	r6,#0x00
      0001B5 7F 00            [12]  403 	mov	r7,#0x00
      0001B7                        404 00112$:
                                    405 ;	src/main.c:18: led_light_on(i, false);
      0001B7 8E 82            [24]  406 	mov	dpl,r6
      0001B9 75 09 00         [24]  407 	mov	_led_light_on_PARM_2,#0x00
      0001BC C0 07            [24]  408 	push	ar7
      0001BE C0 06            [24]  409 	push	ar6
      0001C0 12 01 2E         [24]  410 	lcall	_led_light_on
                                    411 ;	src/main.c:19: delay_ms(500);
      0001C3 90 01 F4         [24]  412 	mov	dptr,#0x01f4
      0001C6 12 00 65         [24]  413 	lcall	_delay_ms
      0001C9 D0 06            [24]  414 	pop	ar6
      0001CB D0 07            [24]  415 	pop	ar7
                                    416 ;	src/main.c:17: for (i = 0; i < LED_NUM; i ++) {
      0001CD 0E               [12]  417 	inc	r6
      0001CE BE 00 01         [24]  418 	cjne	r6,#0x00,00151$
      0001D1 0F               [12]  419 	inc	r7
      0001D2                        420 00151$:
      0001D2 C3               [12]  421 	clr	c
      0001D3 EE               [12]  422 	mov	a,r6
      0001D4 94 08            [12]  423 	subb	a,#0x08
      0001D6 EF               [12]  424 	mov	a,r7
      0001D7 64 80            [12]  425 	xrl	a,#0x80
      0001D9 94 80            [12]  426 	subb	a,#0x80
      0001DB 40 DA            [24]  427 	jc	00112$
                                    428 ;	src/main.c:22: while(1) {
      0001DD                        429 00108$:
                                    430 ;	src/main.c:23: key = key_scan();
      0001DD 12 00 82         [24]  431 	lcall	_key_scan
      0001E0 AF 82            [24]  432 	mov	r7,dpl
                                    433 ;	src/main.c:24: for (i = 0; i < KEY_MAX_NUM; i++) {
      0001E2 7D 00            [12]  434 	mov	r5,#0x00
      0001E4 7E 00            [12]  435 	mov	r6,#0x00
      0001E6                        436 00114$:
                                    437 ;	src/main.c:25: if (key & (0x1 << i))
      0001E6 8D F0            [24]  438 	mov	b,r5
      0001E8 05 F0            [12]  439 	inc	b
      0001EA 7B 01            [12]  440 	mov	r3,#0x01
      0001EC 7C 00            [12]  441 	mov	r4,#0x00
      0001EE 80 06            [24]  442 	sjmp	00154$
      0001F0                        443 00153$:
      0001F0 EB               [12]  444 	mov	a,r3
      0001F1 2B               [12]  445 	add	a,r3
      0001F2 FB               [12]  446 	mov	r3,a
      0001F3 EC               [12]  447 	mov	a,r4
      0001F4 33               [12]  448 	rlc	a
      0001F5 FC               [12]  449 	mov	r4,a
      0001F6                        450 00154$:
      0001F6 D5 F0 F7         [24]  451 	djnz	b,00153$
      0001F9 EF               [12]  452 	mov	a,r7
      0001FA F9               [12]  453 	mov	r1,a
      0001FB 33               [12]  454 	rlc	a
      0001FC 95 E0            [12]  455 	subb	a,acc
      0001FE FA               [12]  456 	mov	r2,a
      0001FF E9               [12]  457 	mov	a,r1
      000200 52 03            [12]  458 	anl	ar3,a
      000202 EA               [12]  459 	mov	a,r2
      000203 52 04            [12]  460 	anl	ar4,a
      000205 EB               [12]  461 	mov	a,r3
      000206 4C               [12]  462 	orl	a,r4
      000207 60 16            [24]  463 	jz	00104$
                                    464 ;	src/main.c:26: led_light_on(i, true);
      000209 8D 82            [24]  465 	mov	dpl,r5
      00020B 75 09 01         [24]  466 	mov	_led_light_on_PARM_2,#0x01
      00020E C0 07            [24]  467 	push	ar7
      000210 C0 06            [24]  468 	push	ar6
      000212 C0 05            [24]  469 	push	ar5
      000214 12 01 2E         [24]  470 	lcall	_led_light_on
      000217 D0 05            [24]  471 	pop	ar5
      000219 D0 06            [24]  472 	pop	ar6
      00021B D0 07            [24]  473 	pop	ar7
      00021D 80 14            [24]  474 	sjmp	00115$
      00021F                        475 00104$:
                                    476 ;	src/main.c:28: led_light_on(i, false);
      00021F 8D 82            [24]  477 	mov	dpl,r5
      000221 75 09 00         [24]  478 	mov	_led_light_on_PARM_2,#0x00
      000224 C0 07            [24]  479 	push	ar7
      000226 C0 06            [24]  480 	push	ar6
      000228 C0 05            [24]  481 	push	ar5
      00022A 12 01 2E         [24]  482 	lcall	_led_light_on
      00022D D0 05            [24]  483 	pop	ar5
      00022F D0 06            [24]  484 	pop	ar6
      000231 D0 07            [24]  485 	pop	ar7
      000233                        486 00115$:
                                    487 ;	src/main.c:24: for (i = 0; i < KEY_MAX_NUM; i++) {
      000233 0D               [12]  488 	inc	r5
      000234 BD 00 01         [24]  489 	cjne	r5,#0x00,00156$
      000237 0E               [12]  490 	inc	r6
      000238                        491 00156$:
      000238 C3               [12]  492 	clr	c
      000239 ED               [12]  493 	mov	a,r5
      00023A 94 08            [12]  494 	subb	a,#0x08
      00023C EE               [12]  495 	mov	a,r6
      00023D 64 80            [12]  496 	xrl	a,#0x80
      00023F 94 80            [12]  497 	subb	a,#0x80
      000241 40 A3            [24]  498 	jc	00114$
                                    499 ;	src/main.c:32: return 0;
                                    500 ;	src/main.c:33: }
      000243 80 98            [24]  501 	sjmp	00108$
                                    502 	.area CSEG    (CODE)
                                    503 	.area CONST   (CODE)
                                    504 	.area XINIT   (CODE)
                                    505 	.area CABS    (ABS,CODE)
