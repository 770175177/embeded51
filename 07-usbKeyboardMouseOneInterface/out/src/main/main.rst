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
                                     13 	.globl _ext0_ISR
                                     14 	.globl _main
                                     15 	.globl _usb_bus_isr_ep2_in
                                     16 	.globl _usb_bus_isr_ep2_out
                                     17 	.globl _usb_bus_isr_ep1_in
                                     18 	.globl _usb_bus_isr_ep1_out
                                     19 	.globl _usb_bus_isr_ep0_in
                                     20 	.globl _usb_bus_isr_ep0_out
                                     21 	.globl _usb_bus_isr_reset
                                     22 	.globl _usb_bus_isr_suspend
                                     23 	.globl _usb_connect
                                     24 	.globl _usb_disconnect
                                     25 	.globl _D12_write_endpoint_buffer
                                     26 	.globl _D12_read_id
                                     27 	.globl _D12_read_byte
                                     28 	.globl _D12_write_command
                                     29 	.globl _print_short_hex
                                     30 	.globl _Prints
                                     31 	.globl _init_uart
                                     32 	.globl _init_key_board
                                     33 	.globl _TF2
                                     34 	.globl _EXF2
                                     35 	.globl _RCLK
                                     36 	.globl _TCLK
                                     37 	.globl _EXEN2
                                     38 	.globl _TR2
                                     39 	.globl _C_T2
                                     40 	.globl _CP_RL2
                                     41 	.globl _T2CON_7
                                     42 	.globl _T2CON_6
                                     43 	.globl _T2CON_5
                                     44 	.globl _T2CON_4
                                     45 	.globl _T2CON_3
                                     46 	.globl _T2CON_2
                                     47 	.globl _T2CON_1
                                     48 	.globl _T2CON_0
                                     49 	.globl _PT2
                                     50 	.globl _ET2
                                     51 	.globl _CY
                                     52 	.globl _AC
                                     53 	.globl _F0
                                     54 	.globl _RS1
                                     55 	.globl _RS0
                                     56 	.globl _OV
                                     57 	.globl _F1
                                     58 	.globl _P
                                     59 	.globl _PS
                                     60 	.globl _PT1
                                     61 	.globl _PX1
                                     62 	.globl _PT0
                                     63 	.globl _PX0
                                     64 	.globl _RD
                                     65 	.globl _WR
                                     66 	.globl _T1
                                     67 	.globl _T0
                                     68 	.globl _INT1
                                     69 	.globl _INT0
                                     70 	.globl _TXD
                                     71 	.globl _RXD
                                     72 	.globl _P3_7
                                     73 	.globl _P3_6
                                     74 	.globl _P3_5
                                     75 	.globl _P3_4
                                     76 	.globl _P3_3
                                     77 	.globl _P3_2
                                     78 	.globl _P3_1
                                     79 	.globl _P3_0
                                     80 	.globl _EA
                                     81 	.globl _ES
                                     82 	.globl _ET1
                                     83 	.globl _EX1
                                     84 	.globl _ET0
                                     85 	.globl _EX0
                                     86 	.globl _P2_7
                                     87 	.globl _P2_6
                                     88 	.globl _P2_5
                                     89 	.globl _P2_4
                                     90 	.globl _P2_3
                                     91 	.globl _P2_2
                                     92 	.globl _P2_1
                                     93 	.globl _P2_0
                                     94 	.globl _SM0
                                     95 	.globl _SM1
                                     96 	.globl _SM2
                                     97 	.globl _REN
                                     98 	.globl _TB8
                                     99 	.globl _RB8
                                    100 	.globl _TI
                                    101 	.globl _RI
                                    102 	.globl _P1_7
                                    103 	.globl _P1_6
                                    104 	.globl _P1_5
                                    105 	.globl _P1_4
                                    106 	.globl _P1_3
                                    107 	.globl _P1_2
                                    108 	.globl _P1_1
                                    109 	.globl _P1_0
                                    110 	.globl _TF1
                                    111 	.globl _TR1
                                    112 	.globl _TF0
                                    113 	.globl _TR0
                                    114 	.globl _IE1
                                    115 	.globl _IT1
                                    116 	.globl _IE0
                                    117 	.globl _IT0
                                    118 	.globl _P0_7
                                    119 	.globl _P0_6
                                    120 	.globl _P0_5
                                    121 	.globl _P0_4
                                    122 	.globl _P0_3
                                    123 	.globl _P0_2
                                    124 	.globl _P0_1
                                    125 	.globl _P0_0
                                    126 	.globl _TH2
                                    127 	.globl _TL2
                                    128 	.globl _RCAP2H
                                    129 	.globl _RCAP2L
                                    130 	.globl _T2CON
                                    131 	.globl _B
                                    132 	.globl _ACC
                                    133 	.globl _PSW
                                    134 	.globl _IP
                                    135 	.globl _P3
                                    136 	.globl _IE
                                    137 	.globl _P2
                                    138 	.globl _SBUF
                                    139 	.globl _SCON
                                    140 	.globl _P1
                                    141 	.globl _TH1
                                    142 	.globl _TH0
                                    143 	.globl _TL1
                                    144 	.globl _TL0
                                    145 	.globl _TMOD
                                    146 	.globl _TCON
                                    147 	.globl _PCON
                                    148 	.globl _DPH
                                    149 	.globl _DPL
                                    150 	.globl _SP
                                    151 	.globl _P0
                                    152 	.globl _SendReport
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0	=	0x0080
                           000081   159 _SP	=	0x0081
                           000082   160 _DPL	=	0x0082
                           000083   161 _DPH	=	0x0083
                           000087   162 _PCON	=	0x0087
                           000088   163 _TCON	=	0x0088
                           000089   164 _TMOD	=	0x0089
                           00008A   165 _TL0	=	0x008a
                           00008B   166 _TL1	=	0x008b
                           00008C   167 _TH0	=	0x008c
                           00008D   168 _TH1	=	0x008d
                           000090   169 _P1	=	0x0090
                           000098   170 _SCON	=	0x0098
                           000099   171 _SBUF	=	0x0099
                           0000A0   172 _P2	=	0x00a0
                           0000A8   173 _IE	=	0x00a8
                           0000B0   174 _P3	=	0x00b0
                           0000B8   175 _IP	=	0x00b8
                           0000D0   176 _PSW	=	0x00d0
                           0000E0   177 _ACC	=	0x00e0
                           0000F0   178 _B	=	0x00f0
                           0000C8   179 _T2CON	=	0x00c8
                           0000CA   180 _RCAP2L	=	0x00ca
                           0000CB   181 _RCAP2H	=	0x00cb
                           0000CC   182 _TL2	=	0x00cc
                           0000CD   183 _TH2	=	0x00cd
                                    184 ;--------------------------------------------------------
                                    185 ; special function bits
                                    186 ;--------------------------------------------------------
                                    187 	.area RSEG    (ABS,DATA)
      000000                        188 	.org 0x0000
                           000080   189 _P0_0	=	0x0080
                           000081   190 _P0_1	=	0x0081
                           000082   191 _P0_2	=	0x0082
                           000083   192 _P0_3	=	0x0083
                           000084   193 _P0_4	=	0x0084
                           000085   194 _P0_5	=	0x0085
                           000086   195 _P0_6	=	0x0086
                           000087   196 _P0_7	=	0x0087
                           000088   197 _IT0	=	0x0088
                           000089   198 _IE0	=	0x0089
                           00008A   199 _IT1	=	0x008a
                           00008B   200 _IE1	=	0x008b
                           00008C   201 _TR0	=	0x008c
                           00008D   202 _TF0	=	0x008d
                           00008E   203 _TR1	=	0x008e
                           00008F   204 _TF1	=	0x008f
                           000090   205 _P1_0	=	0x0090
                           000091   206 _P1_1	=	0x0091
                           000092   207 _P1_2	=	0x0092
                           000093   208 _P1_3	=	0x0093
                           000094   209 _P1_4	=	0x0094
                           000095   210 _P1_5	=	0x0095
                           000096   211 _P1_6	=	0x0096
                           000097   212 _P1_7	=	0x0097
                           000098   213 _RI	=	0x0098
                           000099   214 _TI	=	0x0099
                           00009A   215 _RB8	=	0x009a
                           00009B   216 _TB8	=	0x009b
                           00009C   217 _REN	=	0x009c
                           00009D   218 _SM2	=	0x009d
                           00009E   219 _SM1	=	0x009e
                           00009F   220 _SM0	=	0x009f
                           0000A0   221 _P2_0	=	0x00a0
                           0000A1   222 _P2_1	=	0x00a1
                           0000A2   223 _P2_2	=	0x00a2
                           0000A3   224 _P2_3	=	0x00a3
                           0000A4   225 _P2_4	=	0x00a4
                           0000A5   226 _P2_5	=	0x00a5
                           0000A6   227 _P2_6	=	0x00a6
                           0000A7   228 _P2_7	=	0x00a7
                           0000A8   229 _EX0	=	0x00a8
                           0000A9   230 _ET0	=	0x00a9
                           0000AA   231 _EX1	=	0x00aa
                           0000AB   232 _ET1	=	0x00ab
                           0000AC   233 _ES	=	0x00ac
                           0000AF   234 _EA	=	0x00af
                           0000B0   235 _P3_0	=	0x00b0
                           0000B1   236 _P3_1	=	0x00b1
                           0000B2   237 _P3_2	=	0x00b2
                           0000B3   238 _P3_3	=	0x00b3
                           0000B4   239 _P3_4	=	0x00b4
                           0000B5   240 _P3_5	=	0x00b5
                           0000B6   241 _P3_6	=	0x00b6
                           0000B7   242 _P3_7	=	0x00b7
                           0000B0   243 _RXD	=	0x00b0
                           0000B1   244 _TXD	=	0x00b1
                           0000B2   245 _INT0	=	0x00b2
                           0000B3   246 _INT1	=	0x00b3
                           0000B4   247 _T0	=	0x00b4
                           0000B5   248 _T1	=	0x00b5
                           0000B6   249 _WR	=	0x00b6
                           0000B7   250 _RD	=	0x00b7
                           0000B8   251 _PX0	=	0x00b8
                           0000B9   252 _PT0	=	0x00b9
                           0000BA   253 _PX1	=	0x00ba
                           0000BB   254 _PT1	=	0x00bb
                           0000BC   255 _PS	=	0x00bc
                           0000D0   256 _P	=	0x00d0
                           0000D1   257 _F1	=	0x00d1
                           0000D2   258 _OV	=	0x00d2
                           0000D3   259 _RS0	=	0x00d3
                           0000D4   260 _RS1	=	0x00d4
                           0000D5   261 _F0	=	0x00d5
                           0000D6   262 _AC	=	0x00d6
                           0000D7   263 _CY	=	0x00d7
                           0000AD   264 _ET2	=	0x00ad
                           0000BD   265 _PT2	=	0x00bd
                           0000C8   266 _T2CON_0	=	0x00c8
                           0000C9   267 _T2CON_1	=	0x00c9
                           0000CA   268 _T2CON_2	=	0x00ca
                           0000CB   269 _T2CON_3	=	0x00cb
                           0000CC   270 _T2CON_4	=	0x00cc
                           0000CD   271 _T2CON_5	=	0x00cd
                           0000CE   272 _T2CON_6	=	0x00ce
                           0000CF   273 _T2CON_7	=	0x00cf
                           0000C8   274 _CP_RL2	=	0x00c8
                           0000C9   275 _C_T2	=	0x00c9
                           0000CA   276 _TR2	=	0x00ca
                           0000CB   277 _EXEN2	=	0x00cb
                           0000CC   278 _TCLK	=	0x00cc
                           0000CD   279 _RCLK	=	0x00cd
                           0000CE   280 _EXF2	=	0x00ce
                           0000CF   281 _TF2	=	0x00cf
                                    282 ;--------------------------------------------------------
                                    283 ; overlayable register banks
                                    284 ;--------------------------------------------------------
                                    285 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        286 	.ds 8
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable bit register bank
                                    289 ;--------------------------------------------------------
                                    290 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        291 bits:
      000020                        292 	.ds 1
                           008000   293 	b0 = bits[0]
                           008100   294 	b1 = bits[1]
                           008200   295 	b2 = bits[2]
                           008300   296 	b3 = bits[3]
                           008400   297 	b4 = bits[4]
                           008500   298 	b5 = bits[5]
                           008600   299 	b6 = bits[6]
                           008700   300 	b7 = bits[7]
                                    301 ;--------------------------------------------------------
                                    302 ; internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area DSEG    (DATA)
      000009                        305 _SendReport_Buf_65536_39:
      000009                        306 	.ds 9
      000012                        307 _timer0_ISR_i_65536_59:
      000012                        308 	.ds 2
                                    309 ;--------------------------------------------------------
                                    310 ; overlayable items in internal ram 
                                    311 ;--------------------------------------------------------
                                    312 ;--------------------------------------------------------
                                    313 ; Stack segment in internal ram 
                                    314 ;--------------------------------------------------------
                                    315 	.area	SSEG
      00005F                        316 __start__stack:
      00005F                        317 	.ds	1
                                    318 
                                    319 ;--------------------------------------------------------
                                    320 ; indirectly addressable internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area ISEG    (DATA)
                                    323 ;--------------------------------------------------------
                                    324 ; absolute internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area IABS    (ABS,DATA)
                                    327 	.area IABS    (ABS,DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; bit data
                                    330 ;--------------------------------------------------------
                                    331 	.area BSEG    (BIT)
                                    332 ;--------------------------------------------------------
                                    333 ; paged external ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area PSEG    (PAG,XDATA)
                                    336 ;--------------------------------------------------------
                                    337 ; external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area XSEG    (XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; absolute external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XABS    (ABS,XDATA)
                                    344 ;--------------------------------------------------------
                                    345 ; external initialized ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area XISEG   (XDATA)
                                    348 	.area HOME    (CODE)
                                    349 	.area GSINIT0 (CODE)
                                    350 	.area GSINIT1 (CODE)
                                    351 	.area GSINIT2 (CODE)
                                    352 	.area GSINIT3 (CODE)
                                    353 	.area GSINIT4 (CODE)
                                    354 	.area GSINIT5 (CODE)
                                    355 	.area GSINIT  (CODE)
                                    356 	.area GSFINAL (CODE)
                                    357 	.area CSEG    (CODE)
                                    358 ;--------------------------------------------------------
                                    359 ; interrupt vector 
                                    360 ;--------------------------------------------------------
                                    361 	.area HOME    (CODE)
      000000                        362 __interrupt_vect:
      000000 02 00 29         [24]  363 	ljmp	__sdcc_gsinit_startup
      000003 02 03 9E         [24]  364 	ljmp	_ext0_ISR
      000006                        365 	.ds	5
      00000B 02 04 39         [24]  366 	ljmp	_timer0_ISR
      00000E                        367 	.ds	5
      000013 32               [24]  368 	reti
      000014                        369 	.ds	7
      00001B 32               [24]  370 	reti
      00001C                        371 	.ds	7
      000023 02 04 CE         [24]  372 	ljmp	_uart_ISR
                                    373 ;--------------------------------------------------------
                                    374 ; global & static initialisations
                                    375 ;--------------------------------------------------------
                                    376 	.area HOME    (CODE)
                                    377 	.area GSINIT  (CODE)
                                    378 	.area GSFINAL (CODE)
                                    379 	.area GSINIT  (CODE)
                                    380 	.globl __sdcc_gsinit_startup
                                    381 	.globl __sdcc_program_startup
                                    382 	.globl __start__stack
                                    383 	.globl __mcs51_genXINIT
                                    384 	.globl __mcs51_genXRAMCLEAR
                                    385 	.globl __mcs51_genRAMCLEAR
                                    386 ;------------------------------------------------------------
                                    387 ;Allocation info for local variables in function 'timer0_ISR'
                                    388 ;------------------------------------------------------------
                                    389 ;i                         Allocated with name '_timer0_ISR_i_65536_59'
                                    390 ;------------------------------------------------------------
                                    391 ;	src/main.c:192: static uint32 i = 0;
      000085 E4               [12]  392 	clr	a
      000086 F5 12            [12]  393 	mov	_timer0_ISR_i_65536_59,a
      000088 F5 13            [12]  394 	mov	(_timer0_ISR_i_65536_59 + 1),a
                                    395 	.area GSFINAL (CODE)
      00008D 02 00 26         [24]  396 	ljmp	__sdcc_program_startup
                                    397 ;--------------------------------------------------------
                                    398 ; Home
                                    399 ;--------------------------------------------------------
                                    400 	.area HOME    (CODE)
                                    401 	.area HOME    (CODE)
      000026                        402 __sdcc_program_startup:
      000026 02 01 ED         [24]  403 	ljmp	_main
                                    404 ;	return from main will return to caller
                                    405 ;--------------------------------------------------------
                                    406 ; code
                                    407 ;--------------------------------------------------------
                                    408 	.area CSEG    (CODE)
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'main'
                                    411 ;------------------------------------------------------------
                                    412 ;ret                       Allocated to registers 
                                    413 ;i                         Allocated to registers 
                                    414 ;key                       Allocated to registers 
                                    415 ;id                        Allocated to registers r6 r7 
                                    416 ;status                    Allocated to registers r7 
                                    417 ;------------------------------------------------------------
                                    418 ;	src/main.c:12: void main()
                                    419 ;	-----------------------------------------
                                    420 ;	 function main
                                    421 ;	-----------------------------------------
      0001ED                        422 _main:
                           000007   423 	ar7 = 0x07
                           000006   424 	ar6 = 0x06
                           000005   425 	ar5 = 0x05
                           000004   426 	ar4 = 0x04
                           000003   427 	ar3 = 0x03
                           000002   428 	ar2 = 0x02
                           000001   429 	ar1 = 0x01
                           000000   430 	ar0 = 0x00
                                    431 ;	src/main.c:20: init_key_board();
      0001ED 12 00 BF         [24]  432 	lcall	_init_key_board
                                    433 ;	src/main.c:21: init_uart();
      0001F0 12 07 4F         [24]  434 	lcall	_init_uart
                                    435 ;	src/main.c:24: id = D12_read_id();
      0001F3 12 04 F1         [24]  436 	lcall	_D12_read_id
      0001F6 AE 82            [24]  437 	mov	r6,dpl
      0001F8 AF 83            [24]  438 	mov	r7,dph
                                    439 ;	src/main.c:25: Prints("read pdiusb12 id is: ");
      0001FA 90 10 10         [24]  440 	mov	dptr,#___str_0
      0001FD 75 F0 80         [24]  441 	mov	b,#0x80
      000200 C0 07            [24]  442 	push	ar7
      000202 C0 06            [24]  443 	push	ar6
      000204 12 07 77         [24]  444 	lcall	_Prints
      000207 D0 06            [24]  445 	pop	ar6
      000209 D0 07            [24]  446 	pop	ar7
                                    447 ;	src/main.c:26: print_short_hex(id);
      00020B 8E 82            [24]  448 	mov	dpl,r6
      00020D 8F 83            [24]  449 	mov	dph,r7
      00020F 12 07 A2         [24]  450 	lcall	_print_short_hex
                                    451 ;	src/main.c:27: Prints("\n");
      000212 90 10 26         [24]  452 	mov	dptr,#___str_1
      000215 75 F0 80         [24]  453 	mov	b,#0x80
      000218 12 07 77         [24]  454 	lcall	_Prints
                                    455 ;	src/main.c:29: usb_disconnect();
      00021B 12 09 20         [24]  456 	lcall	_usb_disconnect
                                    457 ;	src/main.c:30: usb_connect();
      00021E 12 09 41         [24]  458 	lcall	_usb_connect
                                    459 ;	src/main.c:31: ConfigValue=0;
      000221 75 44 00         [24]  460 	mov	_ConfigValue,#0x00
                                    461 ;	src/main.c:33: while(1) {
      000224                        462 00127$:
                                    463 ;	src/main.c:37: if(D12_get_intrrupt() == 0) {
      000224 20 B2 5F         [24]  464 	jb	_P3_2,00118$
                                    465 ;	src/main.c:38: D12_write_command(D12_READ_INTERRUPT_REG);
      000227 75 82 F4         [24]  466 	mov	dpl,#0xf4
      00022A 12 04 D7         [24]  467 	lcall	_D12_write_command
                                    468 ;	src/main.c:39: status = D12_read_byte();
      00022D 12 04 E5         [24]  469 	lcall	_D12_read_byte
                                    470 ;	src/main.c:40: if(status & 0x80)
      000230 E5 82            [12]  471 	mov	a,dpl
      000232 FF               [12]  472 	mov	r7,a
      000233 30 E7 07         [24]  473 	jnb	acc.7,00102$
                                    474 ;	src/main.c:41: usb_bus_isr_suspend();
      000236 C0 07            [24]  475 	push	ar7
      000238 12 09 5C         [24]  476 	lcall	_usb_bus_isr_suspend
      00023B D0 07            [24]  477 	pop	ar7
      00023D                        478 00102$:
                                    479 ;	src/main.c:42: if(status & 0x40)
      00023D EF               [12]  480 	mov	a,r7
      00023E 30 E6 07         [24]  481 	jnb	acc.6,00104$
                                    482 ;	src/main.c:43: usb_bus_isr_reset();
      000241 C0 07            [24]  483 	push	ar7
      000243 12 09 65         [24]  484 	lcall	_usb_bus_isr_reset
      000246 D0 07            [24]  485 	pop	ar7
      000248                        486 00104$:
                                    487 ;	src/main.c:44: if(status & 0x01)
      000248 EF               [12]  488 	mov	a,r7
      000249 30 E0 07         [24]  489 	jnb	acc.0,00106$
                                    490 ;	src/main.c:45: usb_bus_isr_ep0_out();
      00024C C0 07            [24]  491 	push	ar7
      00024E 12 09 72         [24]  492 	lcall	_usb_bus_isr_ep0_out
      000251 D0 07            [24]  493 	pop	ar7
      000253                        494 00106$:
                                    495 ;	src/main.c:46: if(status & 0x02)
      000253 EF               [12]  496 	mov	a,r7
      000254 30 E1 07         [24]  497 	jnb	acc.1,00108$
                                    498 ;	src/main.c:47: usb_bus_isr_ep0_in();
      000257 C0 07            [24]  499 	push	ar7
      000259 12 0D ED         [24]  500 	lcall	_usb_bus_isr_ep0_in
      00025C D0 07            [24]  501 	pop	ar7
      00025E                        502 00108$:
                                    503 ;	src/main.c:48: if(status & 0x04)
      00025E EF               [12]  504 	mov	a,r7
      00025F 30 E2 07         [24]  505 	jnb	acc.2,00110$
                                    506 ;	src/main.c:49: usb_bus_isr_ep1_out();
      000262 C0 07            [24]  507 	push	ar7
      000264 12 0D FF         [24]  508 	lcall	_usb_bus_isr_ep1_out
      000267 D0 07            [24]  509 	pop	ar7
      000269                        510 00110$:
                                    511 ;	src/main.c:50: if(status & 0x08)
      000269 EF               [12]  512 	mov	a,r7
      00026A 30 E3 07         [24]  513 	jnb	acc.3,00112$
                                    514 ;	src/main.c:51: usb_bus_isr_ep1_in();
      00026D C0 07            [24]  515 	push	ar7
      00026F 12 0E 2E         [24]  516 	lcall	_usb_bus_isr_ep1_in
      000272 D0 07            [24]  517 	pop	ar7
      000274                        518 00112$:
                                    519 ;	src/main.c:52: if(status & 0x10)
      000274 EF               [12]  520 	mov	a,r7
      000275 30 E4 07         [24]  521 	jnb	acc.4,00114$
                                    522 ;	src/main.c:53: usb_bus_isr_ep2_out();
      000278 C0 07            [24]  523 	push	ar7
      00027A 12 0E 41         [24]  524 	lcall	_usb_bus_isr_ep2_out
      00027D D0 07            [24]  525 	pop	ar7
      00027F                        526 00114$:
                                    527 ;	src/main.c:54: if(status & 0x20)
      00027F EF               [12]  528 	mov	a,r7
      000280 30 E5 03         [24]  529 	jnb	acc.5,00118$
                                    530 ;	src/main.c:55: usb_bus_isr_ep2_in();
      000283 12 0E 4A         [24]  531 	lcall	_usb_bus_isr_ep2_in
      000286                        532 00118$:
                                    533 ;	src/main.c:58: if (ConfigValue != 0) {
      000286 E5 44            [12]  534 	mov	a,_ConfigValue
      000288 60 9A            [24]  535 	jz	00127$
                                    536 ;	src/main.c:59: if (!Ep1InIsBusy) {
      00028A E5 43            [12]  537 	mov	a,_Ep1InIsBusy
                                    538 ;	src/main.c:60: KeyCanChange = 0;
      00028C 70 96            [24]  539 	jnz	00127$
      00028E 78 5E            [12]  540 	mov	r0,#_KeyCanChange
      000290 F6               [12]  541 	mov	@r0,a
                                    542 ;	src/main.c:61: if (KeyUp || KeyDown)
      000291 78 5C            [12]  543 	mov	r0,#_KeyUp
      000293 E6               [12]  544 	mov	a,@r0
      000294 70 05            [24]  545 	jnz	00119$
      000296 78 5B            [12]  546 	mov	r0,#_KeyDown
      000298 E6               [12]  547 	mov	a,@r0
      000299 60 03            [24]  548 	jz	00120$
      00029B                        549 00119$:
                                    550 ;	src/main.c:62: SendReport();
      00029B 12 02 A5         [24]  551 	lcall	_SendReport
      00029E                        552 00120$:
                                    553 ;	src/main.c:63: KeyCanChange = 1;
      00029E 78 5E            [12]  554 	mov	r0,#_KeyCanChange
      0002A0 76 01            [12]  555 	mov	@r0,#0x01
                                    556 ;	src/main.c:67: }
      0002A2 02 02 24         [24]  557 	ljmp	00127$
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'SendReport'
                                    560 ;------------------------------------------------------------
                                    561 ;Buf                       Allocated with name '_SendReport_Buf_65536_39'
                                    562 ;i                         Allocated to registers r7 
                                    563 ;------------------------------------------------------------
                                    564 ;	src/main.c:69: void SendReport(void)
                                    565 ;	-----------------------------------------
                                    566 ;	 function SendReport
                                    567 ;	-----------------------------------------
      0002A5                        568 _SendReport:
                                    569 ;	src/main.c:74: int8 Buf[9]={0,0,0,0,0,0,0,0,0}; 
      0002A5 75 09 00         [24]  570 	mov	_SendReport_Buf_65536_39,#0x00
      0002A8 75 0A 00         [24]  571 	mov	(_SendReport_Buf_65536_39 + 0x0001),#0x00
      0002AB 75 0B 00         [24]  572 	mov	(_SendReport_Buf_65536_39 + 0x0002),#0x00
      0002AE 75 0C 00         [24]  573 	mov	(_SendReport_Buf_65536_39 + 0x0003),#0x00
      0002B1 75 0D 00         [24]  574 	mov	(_SendReport_Buf_65536_39 + 0x0004),#0x00
      0002B4 75 0E 00         [24]  575 	mov	(_SendReport_Buf_65536_39 + 0x0005),#0x00
      0002B7 75 0F 00         [24]  576 	mov	(_SendReport_Buf_65536_39 + 0x0006),#0x00
      0002BA 75 10 00         [24]  577 	mov	(_SendReport_Buf_65536_39 + 0x0007),#0x00
      0002BD 75 11 00         [24]  578 	mov	(_SendReport_Buf_65536_39 + 0x0008),#0x00
                                    579 ;	src/main.c:78: uint8 i=3; 
      0002C0 7F 03            [12]  580 	mov	r7,#0x03
                                    581 ;	src/main.c:88: if(KeyPress & KEY1) //??KEY1?????????
      0002C2 78 5A            [12]  582 	mov	r0,#_KeyPress
      0002C4 E6               [12]  583 	mov	a,@r0
      0002C5 30 E0 6D         [24]  584 	jnb	acc.0,00130$
                                    585 ;	src/main.c:90: Buf[0]=0x01;  //???????ID?????ID?1?
      0002C8 75 09 01         [24]  586 	mov	_SendReport_Buf_65536_39,#0x01
                                    587 ;	src/main.c:91: if(KeyPress & KEY2) //??KEY2??
      0002CB 78 5A            [12]  588 	mov	r0,#_KeyPress
      0002CD E6               [12]  589 	mov	a,@r0
      0002CE 30 E1 06         [24]  590 	jnb	acc.1,00102$
                                    591 ;	src/main.c:93: Buf[1]|=0x02;  //KEY2??Shift??
      0002D1 74 02            [12]  592 	mov	a,#0x02
      0002D3 45 0A            [12]  593 	orl	a,(_SendReport_Buf_65536_39 + 0x0001)
      0002D5 F5 0A            [12]  594 	mov	(_SendReport_Buf_65536_39 + 0x0001),a
      0002D7                        595 00102$:
                                    596 ;	src/main.c:95: if(KeyPress & KEY3) //??KEY3??
      0002D7 78 5A            [12]  597 	mov	r0,#_KeyPress
      0002D9 E6               [12]  598 	mov	a,@r0
      0002DA 30 E2 06         [24]  599 	jnb	acc.2,00104$
                                    600 ;	src/main.c:97: Buf[1]|=0x04;  //KEY3??Alt?
      0002DD 74 04            [12]  601 	mov	a,#0x04
      0002DF 45 0A            [12]  602 	orl	a,(_SendReport_Buf_65536_39 + 0x0001)
      0002E1 F5 0A            [12]  603 	mov	(_SendReport_Buf_65536_39 + 0x0001),a
      0002E3                        604 00104$:
                                    605 ;	src/main.c:99: if(KeyPress & KEY4) //??KEY4??
      0002E3 78 5A            [12]  606 	mov	r0,#_KeyPress
      0002E5 E6               [12]  607 	mov	a,@r0
      0002E6 30 E3 05         [24]  608 	jnb	acc.3,00106$
                                    609 ;	src/main.c:101: Buf[i]=0x59;  //KEY4??????1??
      0002E9 75 0C 59         [24]  610 	mov	(_SendReport_Buf_65536_39 + 0x0003),#0x59
                                    611 ;	src/main.c:102: i++;  //????????
      0002EC 7F 04            [12]  612 	mov	r7,#0x04
      0002EE                        613 00106$:
                                    614 ;	src/main.c:104: if(KeyPress & KEY5)  //??KEY5??
      0002EE 78 5A            [12]  615 	mov	r0,#_KeyPress
      0002F0 E6               [12]  616 	mov	a,@r0
      0002F1 30 E4 07         [24]  617 	jnb	acc.4,00108$
                                    618 ;	src/main.c:106: Buf[i]=0x5A;  //KEY5?????2??
      0002F4 EF               [12]  619 	mov	a,r7
      0002F5 24 09            [12]  620 	add	a,#_SendReport_Buf_65536_39
      0002F7 F8               [12]  621 	mov	r0,a
      0002F8 76 5A            [12]  622 	mov	@r0,#0x5a
                                    623 ;	src/main.c:107: i++;  //????????
      0002FA 0F               [12]  624 	inc	r7
      0002FB                        625 00108$:
                                    626 ;	src/main.c:109: if(KeyPress & KEY6)  //??KEY6??
      0002FB 78 5A            [12]  627 	mov	r0,#_KeyPress
      0002FD E6               [12]  628 	mov	a,@r0
      0002FE 30 E5 07         [24]  629 	jnb	acc.5,00110$
                                    630 ;	src/main.c:111: Buf[i]=0x5B;  //KEY6??????3??
      000301 EF               [12]  631 	mov	a,r7
      000302 24 09            [12]  632 	add	a,#_SendReport_Buf_65536_39
      000304 F8               [12]  633 	mov	r0,a
      000305 76 5B            [12]  634 	mov	@r0,#0x5b
                                    635 ;	src/main.c:112: i++;  //????????
      000307 0F               [12]  636 	inc	r7
      000308                        637 00110$:
                                    638 ;	src/main.c:114: if(KeyPress & KEY7)  //??KEY7??
      000308 78 5A            [12]  639 	mov	r0,#_KeyPress
      00030A E6               [12]  640 	mov	a,@r0
      00030B 30 E6 07         [24]  641 	jnb	acc.6,00112$
                                    642 ;	src/main.c:116: Buf[i]=0x39;  //KEY7??/??????
      00030E EF               [12]  643 	mov	a,r7
      00030F 24 09            [12]  644 	add	a,#_SendReport_Buf_65536_39
      000311 F8               [12]  645 	mov	r0,a
      000312 76 39            [12]  646 	mov	@r0,#0x39
                                    647 ;	src/main.c:117: i++;  //????????
      000314 0F               [12]  648 	inc	r7
      000315                        649 00112$:
                                    650 ;	src/main.c:119: if(KeyPress & KEY8)  //??KEY8??
      000315 78 5A            [12]  651 	mov	r0,#_KeyPress
      000317 E6               [12]  652 	mov	a,@r0
      000318 30 E7 06         [24]  653 	jnb	acc.7,00114$
                                    654 ;	src/main.c:121: Buf[i]=0x53;  //KEY8????????????
      00031B EF               [12]  655 	mov	a,r7
      00031C 24 09            [12]  656 	add	a,#_SendReport_Buf_65536_39
      00031E F8               [12]  657 	mov	r0,a
      00031F 76 53            [12]  658 	mov	@r0,#0x53
      000321                        659 00114$:
                                    660 ;	src/main.c:124: D12_write_endpoint_buffer(3, 9, Buf);
      000321 75 19 09         [24]  661 	mov	_D12_write_endpoint_buffer_PARM_3,#_SendReport_Buf_65536_39
      000324 75 1A 00         [24]  662 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),#0x00
      000327 75 1B 40         [24]  663 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),#0x40
      00032A 75 18 09         [24]  664 	mov	_D12_write_endpoint_buffer_PARM_2,#0x09
      00032D 75 82 03         [24]  665 	mov	dpl,#0x03
      000330 12 06 3F         [24]  666 	lcall	_D12_write_endpoint_buffer
      000333 80 5D            [24]  667 	sjmp	00131$
      000335                        668 00130$:
                                    669 ;	src/main.c:128: Buf[0]=0x02;  //???????ID?????ID?2?
      000335 75 09 02         [24]  670 	mov	_SendReport_Buf_65536_39,#0x02
                                    671 ;	src/main.c:129: if(KeyDown & KEY2) //??KEY2??
      000338 78 5B            [12]  672 	mov	r0,#_KeyDown
      00033A E6               [12]  673 	mov	a,@r0
      00033B 30 E1 03         [24]  674 	jnb	acc.1,00116$
                                    675 ;	src/main.c:131: Buf[2]=-10;  //KEY2???????????10????
      00033E 75 0B F6         [24]  676 	mov	(_SendReport_Buf_65536_39 + 0x0002),#0xf6
      000341                        677 00116$:
                                    678 ;	src/main.c:133: if(KeyDown & KEY3) //??KEY3??
      000341 78 5B            [12]  679 	mov	r0,#_KeyDown
      000343 E6               [12]  680 	mov	a,@r0
      000344 30 E2 03         [24]  681 	jnb	acc.2,00118$
                                    682 ;	src/main.c:135: Buf[2]=10;  //KEY3???????????10????
      000347 75 0B 0A         [24]  683 	mov	(_SendReport_Buf_65536_39 + 0x0002),#0x0a
      00034A                        684 00118$:
                                    685 ;	src/main.c:137: if(KeyDown & KEY4) //??KEY4??
      00034A 78 5B            [12]  686 	mov	r0,#_KeyDown
      00034C E6               [12]  687 	mov	a,@r0
      00034D 30 E3 03         [24]  688 	jnb	acc.3,00120$
                                    689 ;	src/main.c:139: Buf[3]=-10;  //KEY4???????????10????
      000350 75 0C F6         [24]  690 	mov	(_SendReport_Buf_65536_39 + 0x0003),#0xf6
      000353                        691 00120$:
                                    692 ;	src/main.c:141: if(KeyDown & KEY5)  //??KEY5??
      000353 78 5B            [12]  693 	mov	r0,#_KeyDown
      000355 E6               [12]  694 	mov	a,@r0
      000356 30 E4 03         [24]  695 	jnb	acc.4,00122$
                                    696 ;	src/main.c:143: Buf[3]=10;  //KEY5???????????10????
      000359 75 0C 0A         [24]  697 	mov	(_SendReport_Buf_65536_39 + 0x0003),#0x0a
      00035C                        698 00122$:
                                    699 ;	src/main.c:145: if(KeyPress & KEY6)  //??KEY6??
      00035C 78 5A            [12]  700 	mov	r0,#_KeyPress
      00035E E6               [12]  701 	mov	a,@r0
      00035F 30 E5 06         [24]  702 	jnb	acc.5,00124$
                                    703 ;	src/main.c:147: Buf[1]|=0x01;  //KEY6??????
      000362 74 01            [12]  704 	mov	a,#0x01
      000364 45 0A            [12]  705 	orl	a,(_SendReport_Buf_65536_39 + 0x0001)
      000366 F5 0A            [12]  706 	mov	(_SendReport_Buf_65536_39 + 0x0001),a
      000368                        707 00124$:
                                    708 ;	src/main.c:149: if(KeyPress & KEY7)  //??KEY7??
      000368 78 5A            [12]  709 	mov	r0,#_KeyPress
      00036A E6               [12]  710 	mov	a,@r0
      00036B 30 E6 06         [24]  711 	jnb	acc.6,00126$
                                    712 ;	src/main.c:151: Buf[1]|=0x04;  //KEY7??????
      00036E 74 04            [12]  713 	mov	a,#0x04
      000370 45 0A            [12]  714 	orl	a,(_SendReport_Buf_65536_39 + 0x0001)
      000372 F5 0A            [12]  715 	mov	(_SendReport_Buf_65536_39 + 0x0001),a
      000374                        716 00126$:
                                    717 ;	src/main.c:153: if(KeyPress & KEY8)  //??KEY8??
      000374 78 5A            [12]  718 	mov	r0,#_KeyPress
      000376 E6               [12]  719 	mov	a,@r0
      000377 30 E7 06         [24]  720 	jnb	acc.7,00128$
                                    721 ;	src/main.c:155: Buf[1]|=0x02;  //KEY8??????
      00037A 74 02            [12]  722 	mov	a,#0x02
      00037C 45 0A            [12]  723 	orl	a,(_SendReport_Buf_65536_39 + 0x0001)
      00037E F5 0A            [12]  724 	mov	(_SendReport_Buf_65536_39 + 0x0001),a
      000380                        725 00128$:
                                    726 ;	src/main.c:158: D12_write_endpoint_buffer(3, 5, Buf);
      000380 75 19 09         [24]  727 	mov	_D12_write_endpoint_buffer_PARM_3,#_SendReport_Buf_65536_39
      000383 75 1A 00         [24]  728 	mov	(_D12_write_endpoint_buffer_PARM_3 + 1),#0x00
      000386 75 1B 40         [24]  729 	mov	(_D12_write_endpoint_buffer_PARM_3 + 2),#0x40
      000389 75 18 05         [24]  730 	mov	_D12_write_endpoint_buffer_PARM_2,#0x05
      00038C 75 82 03         [24]  731 	mov	dpl,#0x03
      00038F 12 06 3F         [24]  732 	lcall	_D12_write_endpoint_buffer
      000392                        733 00131$:
                                    734 ;	src/main.c:160: Ep1InIsBusy=1;  //????????
      000392 75 43 01         [24]  735 	mov	_Ep1InIsBusy,#0x01
                                    736 ;	src/main.c:162: KeyUp=0;
      000395 78 5C            [12]  737 	mov	r0,#_KeyUp
      000397 76 00            [12]  738 	mov	@r0,#0x00
                                    739 ;	src/main.c:163: KeyDown=0;
      000399 78 5B            [12]  740 	mov	r0,#_KeyDown
      00039B 76 00            [12]  741 	mov	@r0,#0x00
                                    742 ;	src/main.c:164: }
      00039D 22               [24]  743 	ret
                                    744 ;------------------------------------------------------------
                                    745 ;Allocation info for local variables in function 'ext0_ISR'
                                    746 ;------------------------------------------------------------
                                    747 ;status                    Allocated to registers r7 
                                    748 ;------------------------------------------------------------
                                    749 ;	src/main.c:166: void ext0_ISR(void) __interrupt (0)
                                    750 ;	-----------------------------------------
                                    751 ;	 function ext0_ISR
                                    752 ;	-----------------------------------------
      00039E                        753 _ext0_ISR:
      00039E C0 20            [24]  754 	push	bits
      0003A0 C0 E0            [24]  755 	push	acc
      0003A2 C0 F0            [24]  756 	push	b
      0003A4 C0 82            [24]  757 	push	dpl
      0003A6 C0 83            [24]  758 	push	dph
      0003A8 C0 07            [24]  759 	push	(0+7)
      0003AA C0 06            [24]  760 	push	(0+6)
      0003AC C0 05            [24]  761 	push	(0+5)
      0003AE C0 04            [24]  762 	push	(0+4)
      0003B0 C0 03            [24]  763 	push	(0+3)
      0003B2 C0 02            [24]  764 	push	(0+2)
      0003B4 C0 01            [24]  765 	push	(0+1)
      0003B6 C0 00            [24]  766 	push	(0+0)
      0003B8 C0 D0            [24]  767 	push	psw
      0003BA 75 D0 00         [24]  768 	mov	psw,#0x00
                                    769 ;	src/main.c:170: D12_write_command(D12_READ_INTERRUPT_REG);
      0003BD 75 82 F4         [24]  770 	mov	dpl,#0xf4
      0003C0 12 04 D7         [24]  771 	lcall	_D12_write_command
                                    772 ;	src/main.c:171: status = D12_read_byte();
      0003C3 12 04 E5         [24]  773 	lcall	_D12_read_byte
                                    774 ;	src/main.c:172: if(status & 0x80)
      0003C6 E5 82            [12]  775 	mov	a,dpl
      0003C8 FF               [12]  776 	mov	r7,a
      0003C9 30 E7 07         [24]  777 	jnb	acc.7,00102$
                                    778 ;	src/main.c:173: usb_bus_isr_suspend();
      0003CC C0 07            [24]  779 	push	ar7
      0003CE 12 09 5C         [24]  780 	lcall	_usb_bus_isr_suspend
      0003D1 D0 07            [24]  781 	pop	ar7
      0003D3                        782 00102$:
                                    783 ;	src/main.c:174: if(status & 0x40)
      0003D3 EF               [12]  784 	mov	a,r7
      0003D4 30 E6 07         [24]  785 	jnb	acc.6,00104$
                                    786 ;	src/main.c:175: usb_bus_isr_reset();
      0003D7 C0 07            [24]  787 	push	ar7
      0003D9 12 09 65         [24]  788 	lcall	_usb_bus_isr_reset
      0003DC D0 07            [24]  789 	pop	ar7
      0003DE                        790 00104$:
                                    791 ;	src/main.c:176: if(status & 0x01)
      0003DE EF               [12]  792 	mov	a,r7
      0003DF 30 E0 07         [24]  793 	jnb	acc.0,00106$
                                    794 ;	src/main.c:177: usb_bus_isr_ep0_out();
      0003E2 C0 07            [24]  795 	push	ar7
      0003E4 12 09 72         [24]  796 	lcall	_usb_bus_isr_ep0_out
      0003E7 D0 07            [24]  797 	pop	ar7
      0003E9                        798 00106$:
                                    799 ;	src/main.c:178: if(status & 0x02)
      0003E9 EF               [12]  800 	mov	a,r7
      0003EA 30 E1 07         [24]  801 	jnb	acc.1,00108$
                                    802 ;	src/main.c:179: usb_bus_isr_ep0_in();
      0003ED C0 07            [24]  803 	push	ar7
      0003EF 12 0D ED         [24]  804 	lcall	_usb_bus_isr_ep0_in
      0003F2 D0 07            [24]  805 	pop	ar7
      0003F4                        806 00108$:
                                    807 ;	src/main.c:180: if(status & 0x04)
      0003F4 EF               [12]  808 	mov	a,r7
      0003F5 30 E2 07         [24]  809 	jnb	acc.2,00110$
                                    810 ;	src/main.c:181: usb_bus_isr_ep1_out();
      0003F8 C0 07            [24]  811 	push	ar7
      0003FA 12 0D FF         [24]  812 	lcall	_usb_bus_isr_ep1_out
      0003FD D0 07            [24]  813 	pop	ar7
      0003FF                        814 00110$:
                                    815 ;	src/main.c:182: if(status & 0x08)
      0003FF EF               [12]  816 	mov	a,r7
      000400 30 E3 07         [24]  817 	jnb	acc.3,00112$
                                    818 ;	src/main.c:183: usb_bus_isr_ep1_in();
      000403 C0 07            [24]  819 	push	ar7
      000405 12 0E 2E         [24]  820 	lcall	_usb_bus_isr_ep1_in
      000408 D0 07            [24]  821 	pop	ar7
      00040A                        822 00112$:
                                    823 ;	src/main.c:184: if(status & 0x10)
      00040A EF               [12]  824 	mov	a,r7
      00040B 30 E4 07         [24]  825 	jnb	acc.4,00114$
                                    826 ;	src/main.c:185: usb_bus_isr_ep2_out();
      00040E C0 07            [24]  827 	push	ar7
      000410 12 0E 41         [24]  828 	lcall	_usb_bus_isr_ep2_out
      000413 D0 07            [24]  829 	pop	ar7
      000415                        830 00114$:
                                    831 ;	src/main.c:186: if(status & 0x20)
      000415 EF               [12]  832 	mov	a,r7
      000416 30 E5 03         [24]  833 	jnb	acc.5,00117$
                                    834 ;	src/main.c:187: usb_bus_isr_ep2_in();
      000419 12 0E 4A         [24]  835 	lcall	_usb_bus_isr_ep2_in
      00041C                        836 00117$:
                                    837 ;	src/main.c:188: }
      00041C D0 D0            [24]  838 	pop	psw
      00041E D0 00            [24]  839 	pop	(0+0)
      000420 D0 01            [24]  840 	pop	(0+1)
      000422 D0 02            [24]  841 	pop	(0+2)
      000424 D0 03            [24]  842 	pop	(0+3)
      000426 D0 04            [24]  843 	pop	(0+4)
      000428 D0 05            [24]  844 	pop	(0+5)
      00042A D0 06            [24]  845 	pop	(0+6)
      00042C D0 07            [24]  846 	pop	(0+7)
      00042E D0 83            [24]  847 	pop	dph
      000430 D0 82            [24]  848 	pop	dpl
      000432 D0 F0            [24]  849 	pop	b
      000434 D0 E0            [24]  850 	pop	acc
      000436 D0 20            [24]  851 	pop	bits
      000438 32               [24]  852 	reti
                                    853 ;------------------------------------------------------------
                                    854 ;Allocation info for local variables in function 'timer0_ISR'
                                    855 ;------------------------------------------------------------
                                    856 ;i                         Allocated with name '_timer0_ISR_i_65536_59'
                                    857 ;------------------------------------------------------------
                                    858 ;	src/main.c:190: void timer0_ISR(void) __interrupt (1)
                                    859 ;	-----------------------------------------
                                    860 ;	 function timer0_ISR
                                    861 ;	-----------------------------------------
      000439                        862 _timer0_ISR:
      000439 C0 E0            [24]  863 	push	acc
      00043B C0 F0            [24]  864 	push	b
      00043D C0 07            [24]  865 	push	ar7
      00043F C0 01            [24]  866 	push	ar1
      000441 C0 00            [24]  867 	push	ar0
      000443 C0 D0            [24]  868 	push	psw
      000445 75 D0 00         [24]  869 	mov	psw,#0x00
                                    870 ;	src/main.c:194: TH0 = (65536 - TIMER0_RELOAD_NUM) / 256;
      000448 75 8C DC         [24]  871 	mov	_TH0,#0xdc
                                    872 ;	src/main.c:195: TL0 = (65536 - TIMER0_RELOAD_NUM) % 256;
      00044B 75 8A 00         [24]  873 	mov	_TL0,#0x00
                                    874 ;	src/main.c:197: i++;
      00044E 05 12            [12]  875 	inc	_timer0_ISR_i_65536_59
      000450 E4               [12]  876 	clr	a
      000451 B5 12 02         [24]  877 	cjne	a,_timer0_ISR_i_65536_59,00128$
      000454 05 13            [12]  878 	inc	(_timer0_ISR_i_65536_59 + 1)
      000456                        879 00128$:
                                    880 ;	src/main.c:198: if (i > 200) {
      000456 C3               [12]  881 	clr	c
      000457 74 C8            [12]  882 	mov	a,#0xc8
      000459 95 12            [12]  883 	subb	a,_timer0_ISR_i_65536_59
      00045B E4               [12]  884 	clr	a
      00045C 95 13            [12]  885 	subb	a,(_timer0_ISR_i_65536_59 + 1)
      00045E 50 05            [24]  886 	jnc	00102$
                                    887 ;	src/main.c:199: i = 0;
      000460 E4               [12]  888 	clr	a
      000461 F5 12            [12]  889 	mov	_timer0_ISR_i_65536_59,a
      000463 F5 13            [12]  890 	mov	(_timer0_ISR_i_65536_59 + 1),a
      000465                        891 00102$:
                                    892 ;	src/main.c:203: if (!KeyCanChange)
      000465 78 5E            [12]  893 	mov	r0,#_KeyCanChange
      000467 E6               [12]  894 	mov	a,@r0
      000468 70 02            [24]  895 	jnz	00104$
                                    896 ;	src/main.c:204: return;
      00046A 80 55            [24]  897 	sjmp	00110$
      00046C                        898 00104$:
                                    899 ;	src/main.c:206: KeyCurrent = GetKeyValue();
      00046C E5 90            [12]  900 	mov	a,_P1
      00046E F4               [12]  901 	cpl	a
      00046F FF               [12]  902 	mov	r7,a
      000470 78 57            [12]  903 	mov	r0,#_KeyCurrent
      000472 A6 07            [24]  904 	mov	@r0,ar7
                                    905 ;	src/main.c:208: if (KeyCurrent != KeyOld) {
      000474 78 57            [12]  906 	mov	r0,#_KeyCurrent
      000476 79 58            [12]  907 	mov	r1,#_KeyOld
      000478 86 F0            [24]  908 	mov	b,@r0
      00047A E7               [12]  909 	mov	a,@r1
      00047B B5 F0 02         [24]  910 	cjne	a,b,00131$
      00047E 80 0C            [24]  911 	sjmp	00108$
      000480                        912 00131$:
                                    913 ;	src/main.c:209: KeyNoChangedTime = 0;
      000480 78 59            [12]  914 	mov	r0,#_KeyNoChangedTime
      000482 76 00            [12]  915 	mov	@r0,#0x00
                                    916 ;	src/main.c:210: KeyOld = KeyCurrent;
      000484 78 57            [12]  917 	mov	r0,#_KeyCurrent
      000486 79 58            [12]  918 	mov	r1,#_KeyOld
      000488 E6               [12]  919 	mov	a,@r0
      000489 F7               [12]  920 	mov	@r1,a
                                    921 ;	src/main.c:211: return;
      00048A 80 35            [24]  922 	sjmp	00110$
      00048C                        923 00108$:
                                    924 ;	src/main.c:214: KeyNoChangedTime++;
      00048C 78 59            [12]  925 	mov	r0,#_KeyNoChangedTime
      00048E E6               [12]  926 	mov	a,@r0
      00048F 78 59            [12]  927 	mov	r0,#_KeyNoChangedTime
      000491 04               [12]  928 	inc	a
      000492 F6               [12]  929 	mov	@r0,a
                                    930 ;	src/main.c:215: if (KeyNoChangedTime >= 1) {
      000493 78 59            [12]  931 	mov	r0,#_KeyNoChangedTime
      000495 B6 01 00         [24]  932 	cjne	@r0,#0x01,00132$
      000498                        933 00132$:
      000498 40 27            [24]  934 	jc	00110$
                                    935 ;	src/main.c:216: KeyNoChangedTime = 1;
      00049A 78 59            [12]  936 	mov	r0,#_KeyNoChangedTime
      00049C 76 01            [12]  937 	mov	@r0,#0x01
                                    938 ;	src/main.c:217: KeyPress = KeyOld;
      00049E 78 58            [12]  939 	mov	r0,#_KeyOld
      0004A0 79 5A            [12]  940 	mov	r1,#_KeyPress
      0004A2 E6               [12]  941 	mov	a,@r0
      0004A3 F7               [12]  942 	mov	@r1,a
                                    943 ;	src/main.c:218: KeyDown |= (~KeyLast) & (KeyPress);
      0004A4 78 5D            [12]  944 	mov	r0,#_KeyLast
      0004A6 E6               [12]  945 	mov	a,@r0
      0004A7 F4               [12]  946 	cpl	a
      0004A8 FF               [12]  947 	mov	r7,a
      0004A9 78 5A            [12]  948 	mov	r0,#_KeyPress
      0004AB E6               [12]  949 	mov	a,@r0
      0004AC 5F               [12]  950 	anl	a,r7
      0004AD 78 5B            [12]  951 	mov	r0,#_KeyDown
      0004AF 46               [12]  952 	orl	a,@r0
      0004B0 F6               [12]  953 	mov	@r0,a
                                    954 ;	src/main.c:219: KeyUp |= KeyLast & (KeyPress);
      0004B1 78 5D            [12]  955 	mov	r0,#_KeyLast
      0004B3 79 5A            [12]  956 	mov	r1,#_KeyPress
      0004B5 E7               [12]  957 	mov	a,@r1
      0004B6 56               [12]  958 	anl	a,@r0
      0004B7 78 5C            [12]  959 	mov	r0,#_KeyUp
      0004B9 46               [12]  960 	orl	a,@r0
      0004BA F6               [12]  961 	mov	@r0,a
                                    962 ;	src/main.c:220: KeyLast = KeyPress;
      0004BB 78 5A            [12]  963 	mov	r0,#_KeyPress
      0004BD 79 5D            [12]  964 	mov	r1,#_KeyLast
      0004BF E6               [12]  965 	mov	a,@r0
      0004C0 F7               [12]  966 	mov	@r1,a
      0004C1                        967 00110$:
                                    968 ;	src/main.c:223: }
      0004C1 D0 D0            [24]  969 	pop	psw
      0004C3 D0 00            [24]  970 	pop	ar0
      0004C5 D0 01            [24]  971 	pop	ar1
      0004C7 D0 07            [24]  972 	pop	ar7
      0004C9 D0 F0            [24]  973 	pop	b
      0004CB D0 E0            [24]  974 	pop	acc
      0004CD 32               [24]  975 	reti
                                    976 ;	eliminated unneeded push/pop dpl
                                    977 ;	eliminated unneeded push/pop dph
                                    978 ;------------------------------------------------------------
                                    979 ;Allocation info for local variables in function 'uart_ISR'
                                    980 ;------------------------------------------------------------
                                    981 ;	src/main.c:225: void uart_ISR(void)	__interrupt (4)
                                    982 ;	-----------------------------------------
                                    983 ;	 function uart_ISR
                                    984 ;	-----------------------------------------
      0004CE                        985 _uart_ISR:
                                    986 ;	src/main.c:227: if (RI) {
                                    987 ;	src/main.c:228: RI = 0;			/* clear recieve interrupt */
                                    988 ;	assignBit
      0004CE 10 98 05         [24]  989 	jbc	_RI,00104$
                                    990 ;	src/main.c:230: TI = 0;
                                    991 ;	assignBit
      0004D1 C2 99            [12]  992 	clr	_TI
                                    993 ;	src/main.c:231: sending = 0;
      0004D3 75 21 00         [24]  994 	mov	_sending,#0x00
      0004D6                        995 00104$:
                                    996 ;	src/main.c:233: }
      0004D6 32               [24]  997 	reti
                                    998 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    999 ;	eliminated unneeded push/pop not_psw
                                   1000 ;	eliminated unneeded push/pop dpl
                                   1001 ;	eliminated unneeded push/pop dph
                                   1002 ;	eliminated unneeded push/pop b
                                   1003 ;	eliminated unneeded push/pop acc
                                   1004 	.area CSEG    (CODE)
                                   1005 	.area CONST   (CODE)
                                   1006 	.area CONST   (CODE)
      001010                       1007 ___str_0:
      001010 72 65 61 64 20 70 64  1008 	.ascii "read pdiusb12 id is: "
             69 75 73 62 31 32 20
             69 64 20 69 73 3A 20
      001025 00                    1009 	.db 0x00
                                   1010 	.area CSEG    (CODE)
                                   1011 	.area CONST   (CODE)
      001026                       1012 ___str_1:
      001026 0A                    1013 	.db 0x0a
      001027 00                    1014 	.db 0x00
                                   1015 	.area CSEG    (CODE)
                                   1016 	.area XINIT   (CODE)
                                   1017 	.area CABS    (ABS,CODE)
