                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module mouse
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TF2
                                     12 	.globl _EXF2
                                     13 	.globl _RCLK
                                     14 	.globl _TCLK
                                     15 	.globl _EXEN2
                                     16 	.globl _TR2
                                     17 	.globl _C_T2
                                     18 	.globl _CP_RL2
                                     19 	.globl _T2CON_7
                                     20 	.globl _T2CON_6
                                     21 	.globl _T2CON_5
                                     22 	.globl _T2CON_4
                                     23 	.globl _T2CON_3
                                     24 	.globl _T2CON_2
                                     25 	.globl _T2CON_1
                                     26 	.globl _T2CON_0
                                     27 	.globl _PT2
                                     28 	.globl _ET2
                                     29 	.globl _CY
                                     30 	.globl _AC
                                     31 	.globl _F0
                                     32 	.globl _RS1
                                     33 	.globl _RS0
                                     34 	.globl _OV
                                     35 	.globl _F1
                                     36 	.globl _P
                                     37 	.globl _PS
                                     38 	.globl _PT1
                                     39 	.globl _PX1
                                     40 	.globl _PT0
                                     41 	.globl _PX0
                                     42 	.globl _RD
                                     43 	.globl _WR
                                     44 	.globl _T1
                                     45 	.globl _T0
                                     46 	.globl _INT1
                                     47 	.globl _INT0
                                     48 	.globl _TXD
                                     49 	.globl _RXD
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _EA
                                     59 	.globl _ES
                                     60 	.globl _ET1
                                     61 	.globl _EX1
                                     62 	.globl _ET0
                                     63 	.globl _EX0
                                     64 	.globl _P2_7
                                     65 	.globl _P2_6
                                     66 	.globl _P2_5
                                     67 	.globl _P2_4
                                     68 	.globl _P2_3
                                     69 	.globl _P2_2
                                     70 	.globl _P2_1
                                     71 	.globl _P2_0
                                     72 	.globl _SM0
                                     73 	.globl _SM1
                                     74 	.globl _SM2
                                     75 	.globl _REN
                                     76 	.globl _TB8
                                     77 	.globl _RB8
                                     78 	.globl _TI
                                     79 	.globl _RI
                                     80 	.globl _P1_7
                                     81 	.globl _P1_6
                                     82 	.globl _P1_5
                                     83 	.globl _P1_4
                                     84 	.globl _P1_3
                                     85 	.globl _P1_2
                                     86 	.globl _P1_1
                                     87 	.globl _P1_0
                                     88 	.globl _TF1
                                     89 	.globl _TR1
                                     90 	.globl _TF0
                                     91 	.globl _TR0
                                     92 	.globl _IE1
                                     93 	.globl _IT1
                                     94 	.globl _IE0
                                     95 	.globl _IT0
                                     96 	.globl _P0_7
                                     97 	.globl _P0_6
                                     98 	.globl _P0_5
                                     99 	.globl _P0_4
                                    100 	.globl _P0_3
                                    101 	.globl _P0_2
                                    102 	.globl _P0_1
                                    103 	.globl _P0_0
                                    104 	.globl _TH2
                                    105 	.globl _TL2
                                    106 	.globl _RCAP2H
                                    107 	.globl _RCAP2L
                                    108 	.globl _T2CON
                                    109 	.globl _B
                                    110 	.globl _ACC
                                    111 	.globl _PSW
                                    112 	.globl _IP
                                    113 	.globl _P3
                                    114 	.globl _IE
                                    115 	.globl _P2
                                    116 	.globl _SBUF
                                    117 	.globl _SCON
                                    118 	.globl _P1
                                    119 	.globl _TH1
                                    120 	.globl _TH0
                                    121 	.globl _TL1
                                    122 	.globl _TL0
                                    123 	.globl _TMOD
                                    124 	.globl _TCON
                                    125 	.globl _PCON
                                    126 	.globl _DPH
                                    127 	.globl _DPL
                                    128 	.globl _SP
                                    129 	.globl _P0
                                    130 ;--------------------------------------------------------
                                    131 ; special function registers
                                    132 ;--------------------------------------------------------
                                    133 	.area RSEG    (ABS,DATA)
      000000                        134 	.org 0x0000
                           000080   135 _P0	=	0x0080
                           000081   136 _SP	=	0x0081
                           000082   137 _DPL	=	0x0082
                           000083   138 _DPH	=	0x0083
                           000087   139 _PCON	=	0x0087
                           000088   140 _TCON	=	0x0088
                           000089   141 _TMOD	=	0x0089
                           00008A   142 _TL0	=	0x008a
                           00008B   143 _TL1	=	0x008b
                           00008C   144 _TH0	=	0x008c
                           00008D   145 _TH1	=	0x008d
                           000090   146 _P1	=	0x0090
                           000098   147 _SCON	=	0x0098
                           000099   148 _SBUF	=	0x0099
                           0000A0   149 _P2	=	0x00a0
                           0000A8   150 _IE	=	0x00a8
                           0000B0   151 _P3	=	0x00b0
                           0000B8   152 _IP	=	0x00b8
                           0000D0   153 _PSW	=	0x00d0
                           0000E0   154 _ACC	=	0x00e0
                           0000F0   155 _B	=	0x00f0
                           0000C8   156 _T2CON	=	0x00c8
                           0000CA   157 _RCAP2L	=	0x00ca
                           0000CB   158 _RCAP2H	=	0x00cb
                           0000CC   159 _TL2	=	0x00cc
                           0000CD   160 _TH2	=	0x00cd
                                    161 ;--------------------------------------------------------
                                    162 ; special function bits
                                    163 ;--------------------------------------------------------
                                    164 	.area RSEG    (ABS,DATA)
      000000                        165 	.org 0x0000
                           000080   166 _P0_0	=	0x0080
                           000081   167 _P0_1	=	0x0081
                           000082   168 _P0_2	=	0x0082
                           000083   169 _P0_3	=	0x0083
                           000084   170 _P0_4	=	0x0084
                           000085   171 _P0_5	=	0x0085
                           000086   172 _P0_6	=	0x0086
                           000087   173 _P0_7	=	0x0087
                           000088   174 _IT0	=	0x0088
                           000089   175 _IE0	=	0x0089
                           00008A   176 _IT1	=	0x008a
                           00008B   177 _IE1	=	0x008b
                           00008C   178 _TR0	=	0x008c
                           00008D   179 _TF0	=	0x008d
                           00008E   180 _TR1	=	0x008e
                           00008F   181 _TF1	=	0x008f
                           000090   182 _P1_0	=	0x0090
                           000091   183 _P1_1	=	0x0091
                           000092   184 _P1_2	=	0x0092
                           000093   185 _P1_3	=	0x0093
                           000094   186 _P1_4	=	0x0094
                           000095   187 _P1_5	=	0x0095
                           000096   188 _P1_6	=	0x0096
                           000097   189 _P1_7	=	0x0097
                           000098   190 _RI	=	0x0098
                           000099   191 _TI	=	0x0099
                           00009A   192 _RB8	=	0x009a
                           00009B   193 _TB8	=	0x009b
                           00009C   194 _REN	=	0x009c
                           00009D   195 _SM2	=	0x009d
                           00009E   196 _SM1	=	0x009e
                           00009F   197 _SM0	=	0x009f
                           0000A0   198 _P2_0	=	0x00a0
                           0000A1   199 _P2_1	=	0x00a1
                           0000A2   200 _P2_2	=	0x00a2
                           0000A3   201 _P2_3	=	0x00a3
                           0000A4   202 _P2_4	=	0x00a4
                           0000A5   203 _P2_5	=	0x00a5
                           0000A6   204 _P2_6	=	0x00a6
                           0000A7   205 _P2_7	=	0x00a7
                           0000A8   206 _EX0	=	0x00a8
                           0000A9   207 _ET0	=	0x00a9
                           0000AA   208 _EX1	=	0x00aa
                           0000AB   209 _ET1	=	0x00ab
                           0000AC   210 _ES	=	0x00ac
                           0000AF   211 _EA	=	0x00af
                           0000B0   212 _P3_0	=	0x00b0
                           0000B1   213 _P3_1	=	0x00b1
                           0000B2   214 _P3_2	=	0x00b2
                           0000B3   215 _P3_3	=	0x00b3
                           0000B4   216 _P3_4	=	0x00b4
                           0000B5   217 _P3_5	=	0x00b5
                           0000B6   218 _P3_6	=	0x00b6
                           0000B7   219 _P3_7	=	0x00b7
                           0000B0   220 _RXD	=	0x00b0
                           0000B1   221 _TXD	=	0x00b1
                           0000B2   222 _INT0	=	0x00b2
                           0000B3   223 _INT1	=	0x00b3
                           0000B4   224 _T0	=	0x00b4
                           0000B5   225 _T1	=	0x00b5
                           0000B6   226 _WR	=	0x00b6
                           0000B7   227 _RD	=	0x00b7
                           0000B8   228 _PX0	=	0x00b8
                           0000B9   229 _PT0	=	0x00b9
                           0000BA   230 _PX1	=	0x00ba
                           0000BB   231 _PT1	=	0x00bb
                           0000BC   232 _PS	=	0x00bc
                           0000D0   233 _P	=	0x00d0
                           0000D1   234 _F1	=	0x00d1
                           0000D2   235 _OV	=	0x00d2
                           0000D3   236 _RS0	=	0x00d3
                           0000D4   237 _RS1	=	0x00d4
                           0000D5   238 _F0	=	0x00d5
                           0000D6   239 _AC	=	0x00d6
                           0000D7   240 _CY	=	0x00d7
                           0000AD   241 _ET2	=	0x00ad
                           0000BD   242 _PT2	=	0x00bd
                           0000C8   243 _T2CON_0	=	0x00c8
                           0000C9   244 _T2CON_1	=	0x00c9
                           0000CA   245 _T2CON_2	=	0x00ca
                           0000CB   246 _T2CON_3	=	0x00cb
                           0000CC   247 _T2CON_4	=	0x00cc
                           0000CD   248 _T2CON_5	=	0x00cd
                           0000CE   249 _T2CON_6	=	0x00ce
                           0000CF   250 _T2CON_7	=	0x00cf
                           0000C8   251 _CP_RL2	=	0x00c8
                           0000C9   252 _C_T2	=	0x00c9
                           0000CA   253 _TR2	=	0x00ca
                           0000CB   254 _EXEN2	=	0x00cb
                           0000CC   255 _TCLK	=	0x00cc
                           0000CD   256 _RCLK	=	0x00cd
                           0000CE   257 _EXF2	=	0x00ce
                           0000CF   258 _TF2	=	0x00cf
                                    259 ;--------------------------------------------------------
                                    260 ; overlayable register banks
                                    261 ;--------------------------------------------------------
                                    262 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        263 	.ds 8
                                    264 ;--------------------------------------------------------
                                    265 ; internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area DSEG    (DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; overlayable items in internal ram 
                                    270 ;--------------------------------------------------------
                                    271 ;--------------------------------------------------------
                                    272 ; indirectly addressable internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area ISEG    (DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; absolute internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area IABS    (ABS,DATA)
                                    279 	.area IABS    (ABS,DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; bit data
                                    282 ;--------------------------------------------------------
                                    283 	.area BSEG    (BIT)
                                    284 ;--------------------------------------------------------
                                    285 ; paged external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area PSEG    (PAG,XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XSEG    (XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; absolute external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XABS    (ABS,XDATA)
                                    296 ;--------------------------------------------------------
                                    297 ; external initialized ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area XISEG   (XDATA)
                                    300 	.area HOME    (CODE)
                                    301 	.area GSINIT0 (CODE)
                                    302 	.area GSINIT1 (CODE)
                                    303 	.area GSINIT2 (CODE)
                                    304 	.area GSINIT3 (CODE)
                                    305 	.area GSINIT4 (CODE)
                                    306 	.area GSINIT5 (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.area GSFINAL (CODE)
                                    309 	.area CSEG    (CODE)
                                    310 ;--------------------------------------------------------
                                    311 ; global & static initialisations
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.area GSFINAL (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 ;--------------------------------------------------------
                                    318 ; Home
                                    319 ;--------------------------------------------------------
                                    320 	.area HOME    (CODE)
                                    321 	.area HOME    (CODE)
                                    322 ;--------------------------------------------------------
                                    323 ; code
                                    324 ;--------------------------------------------------------
                                    325 	.area CSEG    (CODE)
                                    326 	.area CSEG    (CODE)
                                    327 	.area CONST   (CODE)
                                    328 	.area XINIT   (CODE)
                                    329 	.area CABS    (ABS,CODE)
