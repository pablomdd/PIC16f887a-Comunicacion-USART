opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 9453"

opt pagewidth 120

	opt pm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 11 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 12 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	psect config,class=CONFIG,delta=2 ;#
# 12 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_main,_lcd_write
	FNCALL	_main,_lcd_clear
	FNCALL	_main,___lwdiv
	FNCALL	_main,_con_ascii
	FNCALL	_main,___wmul
	FNCALL	_main,_putch
	FNCALL	_main,_getch
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_lcd_putch
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_putch,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_write,_pause
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_nin
	global	_num
	global	_sal
	global	_ADCON0
psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_INTCON
_INTCON	set	11
	global	_PIR1
_PIR1	set	12
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T2CON
_T2CON	set	18
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
	global	_GO_DONE
_GO_DONE	set	249
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_T0IF
_T0IF	set	90
	global	_TMR2ON
_TMR2ON	set	146
	global	_TXIF
_TXIF	set	100
	global	_ADRESL
_ADRESL	set	158
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BAUDCTL
_BAUDCTL	set	391
	global	_PORTA
_PORTA	set	5
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_2:	
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"C_PuertoSerial_usar.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_sal:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_nin:
       ds      2

_num:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
	global	?_msecbase
?_msecbase:	; 0 bytes @ 0x0
	global	??_msecbase
??_msecbase:	; 0 bytes @ 0x0
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x0
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?_con_ascii
?_con_ascii:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	putch@dato
putch@dato:	; 1 bytes @ 0x0
	global	pause@msvalue
pause@msvalue:	; 2 bytes @ 0x0
	global	con_ascii@entrar
con_ascii@entrar:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	??_con_ascii
??_con_ascii:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x5
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x5
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@dc
main@dc:	; 2 bytes @ 0x0
	ds	2
	global	main@pb
main@pb:	; 2 bytes @ 0x2
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x4
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x6
	ds	2
	global	main@u
main@u:	; 2 bytes @ 0x8
	ds	2
	global	main@char_recibido3
main@char_recibido3:	; 1 bytes @ 0xA
	ds	1
	global	main@char_recibido4
main@char_recibido4:	; 1 bytes @ 0xB
	ds	1
	global	main@char_recibido5
main@char_recibido5:	; 1 bytes @ 0xC
	ds	1
	global	main@char_recibido6
main@char_recibido6:	; 1 bytes @ 0xD
	ds	1
	global	main@pb1
main@pb1:	; 2 bytes @ 0xE
	ds	2
	global	main@numu
main@numu:	; 2 bytes @ 0x10
	ds	2
	global	main@char_recibido1
main@char_recibido1:	; 1 bytes @ 0x12
	ds	1
	global	main@char_recibido2
main@char_recibido2:	; 1 bytes @ 0x13
	ds	1
	global	main@numdc
main@numdc:	; 2 bytes @ 0x14
	ds	2
	global	main@char_recibido
main@char_recibido:	; 1 bytes @ 0x16
	ds	1
	global	main@numd
main@numd:	; 2 bytes @ 0x17
	ds	2
	global	main@numc
main@numc:	; 2 bytes @ 0x19
	ds	2
;;Data sizes: Strings 11, constant 0, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      13
;; BANK0           80     27      31
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_con_ascii	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_2(CODE[5]), STR_1(CODE[6]), 
;;
;; pa	PTR unsigned char  size(1) Largest target is 1
;;		 -> PORTA(BITSFR0[1]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwdiv
;;   _lcd_goto->_lcd_write
;;   _lcd_putch->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _lcd_write->_pause
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                31    31      0    2158
;;                                              7 COMMON     4     4      0
;;                                              0 BANK0     27    27      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;;                            ___lwdiv
;;                          _con_ascii
;;                             ___wmul
;;                              _putch
;;                              _getch
;;                           _lcd_goto
;;                           _lcd_puts
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     112
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_putch                                            1     1      0     112
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             1     1      0     135
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     136
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            1     1      0      90
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (3) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _putch                                                1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _con_ascii                                            2     0      2     220
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (4) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _pause
;;     _msecbase
;;   _lcd_write
;;     _pause
;;       _msecbase
;;   _lcd_clear
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _pause
;;       _msecbase
;;   ___lwdiv
;;   _con_ascii
;;   ___wmul
;;   _putch
;;   _getch
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_putch
;;     _lcd_write
;;       _pause
;;         _msecbase
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      2C       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     1B      1F       5       38.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      30      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 134 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  numc            2   25[BANK0 ] unsigned int 
;;  numd            2   23[BANK0 ] unsigned int 
;;  numdc           2   20[BANK0 ] unsigned int 
;;  numu            2   16[BANK0 ] unsigned int 
;;  pb1             2   14[BANK0 ] unsigned int 
;;  u               2    8[BANK0 ] unsigned int 
;;  c               2    6[BANK0 ] unsigned int 
;;  d               2    4[BANK0 ] unsigned int 
;;  pb              2    2[BANK0 ] unsigned int 
;;  dc              2    0[BANK0 ] unsigned int 
;;  char_recibid    1   13[BANK0 ] unsigned char 
;;  char_recibid    1   12[BANK0 ] unsigned char 
;;  char_recibid    1   11[BANK0 ] unsigned char 
;;  char_recibid    1   10[BANK0 ] unsigned char 
;;  char_recibid    1   22[BANK0 ] unsigned char 
;;  char_recibid    1   19[BANK0 ] unsigned char 
;;  char_recibid    1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      27       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      27       0       0       0
;;Total ram usage:       31 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pause
;;		_lcd_write
;;		_lcd_clear
;;		___lwdiv
;;		_con_ascii
;;		___wmul
;;		_putch
;;		_getch
;;		_lcd_goto
;;		_lcd_puts
;;		_lcd_putch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	134
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	135
	
l3341:	
;C_PuertoSerial_usart.c: 135: ANSEL=32;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	136
;C_PuertoSerial_usart.c: 136: OSCCON=0xC0;
	movlw	(0C0h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	137
	
l3343:	
;C_PuertoSerial_usart.c: 137: ANSELH=0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	line	138
	
l3345:	
;C_PuertoSerial_usart.c: 138: INTCON=0x00;
	clrf	(11)	;volatile
	line	139
;C_PuertoSerial_usart.c: 139: TRISA = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	140
	
l3347:	
;C_PuertoSerial_usart.c: 140: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	141
	
l3349:	
;C_PuertoSerial_usart.c: 141: TRISC=6;
	movlw	(06h)
	movwf	(135)^080h	;volatile
	line	142
;C_PuertoSerial_usart.c: 142: TRISD= 0x00;
	clrf	(136)^080h	;volatile
	line	143
	
l3351:	
;C_PuertoSerial_usart.c: 143: TRISE= 1;
	movlw	(01h)
	movwf	(137)^080h	;volatile
	line	144
	
l3353:	
;C_PuertoSerial_usart.c: 144: PR2=0xFC;
	movlw	(0FCh)
	movwf	(146)^080h	;volatile
	line	145
	
l3355:	
;C_PuertoSerial_usart.c: 145: CCP2CON=0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(29)	;volatile
	line	146
	
l3357:	
;C_PuertoSerial_usart.c: 146: CCP1CON=0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	147
	
l3359:	
;C_PuertoSerial_usart.c: 147: CCPR1L=0x80;
	movlw	(080h)
	movwf	(21)	;volatile
	line	148
	
l3361:	
;C_PuertoSerial_usart.c: 148: CCPR2L=0x80;
	movlw	(080h)
	movwf	(27)	;volatile
	line	149
;C_PuertoSerial_usart.c: 149: PIR1=0;
	clrf	(12)	;volatile
	line	150
	
l3363:	
;C_PuertoSerial_usart.c: 150: T2CON=0x07;
	movlw	(07h)
	movwf	(18)	;volatile
	line	151
;C_PuertoSerial_usart.c: 151: while(PIR1);
	
l3365:	
	movf	(12),f
	skipz	;volatile
	goto	u501
	goto	u500
u501:
	goto	l3365
u500:
	
l1106:	
	line	152
;C_PuertoSerial_usart.c: 152: TRISC1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	153
;C_PuertoSerial_usart.c: 153: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	154
;C_PuertoSerial_usart.c: 154: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(74/8),(74)&7
	line	155
;C_PuertoSerial_usart.c: 155: RE1=0;
	bcf	(73/8),(73)&7
	line	156
;C_PuertoSerial_usart.c: 156: RE0=0;
	bcf	(72/8),(72)&7
	line	158
	
l3367:	
;C_PuertoSerial_usart.c: 158: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	159
	
l3369:	
;C_PuertoSerial_usart.c: 159: PORTD=init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	160
	
l3371:	
;C_PuertoSerial_usart.c: 160: ((RE1=1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3373:	
	bcf	(73/8),(73)&7
	line	161
	
l3375:	
;C_PuertoSerial_usart.c: 161: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	162
	
l3377:	
;C_PuertoSerial_usart.c: 162: ((RE1=1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l3379:	
	bcf	(73/8),(73)&7
	line	163
	
l3381:	
;C_PuertoSerial_usart.c: 163: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	164
	
l3383:	
;C_PuertoSerial_usart.c: 164: ((RE1=1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l3385:	
	bcf	(73/8),(73)&7
	line	165
	
l3387:	
;C_PuertoSerial_usart.c: 165: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	166
;C_PuertoSerial_usart.c: 166: PORTD=2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	167
	
l3389:	
;C_PuertoSerial_usart.c: 167: ((RE1=1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3391:	
	bcf	(73/8),(73)&7
	line	169
	
l3393:	
;C_PuertoSerial_usart.c: 169: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	170
	
l3395:	
;C_PuertoSerial_usart.c: 170: lcd_write(0xC);
	movlw	(0Ch)
	fcall	_lcd_write
	line	171
	
l3397:	
;C_PuertoSerial_usart.c: 171: lcd_clear();
	fcall	_lcd_clear
	line	172
	
l3399:	
;C_PuertoSerial_usart.c: 172: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	173
	
l3401:	
;C_PuertoSerial_usart.c: 173: PORTB=0;
	clrf	(6)	;volatile
	line	175
	
l3403:	
;C_PuertoSerial_usart.c: 175: CCPR1L = 0x80;
	movlw	(080h)
	movwf	(21)	;volatile
	line	176
	
l3405:	
;C_PuertoSerial_usart.c: 176: CCP1CON = 0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	178
	
l3407:	
;C_PuertoSerial_usart.c: 178: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	180
	
l3409:	
;C_PuertoSerial_usart.c: 180: TRISC7=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	181
	
l3411:	
;C_PuertoSerial_usart.c: 181: TRISC6=0;
	bcf	(1086/8)^080h,(1086)&7
	line	182
	
l3413:	
;C_PuertoSerial_usart.c: 182: OSCCON=0x70;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	183
	
l3415:	
;C_PuertoSerial_usart.c: 183: SPBRG=12;
	movlw	(0Ch)
	movwf	(153)^080h	;volatile
	line	184
	
l3417:	
;C_PuertoSerial_usart.c: 184: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	185
	
l3419:	
;C_PuertoSerial_usart.c: 185: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	186
	
l3421:	
;C_PuertoSerial_usart.c: 186: BAUDCTL=0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	187
	
l3423:	
;C_PuertoSerial_usart.c: 187: pause(500);
	movlw	low(01F4h)
	movwf	(?_pause)
	movlw	high(01F4h)
	movwf	((?_pause))+1
	fcall	_pause
	line	188
	
l3425:	
;C_PuertoSerial_usart.c: 188: PORTA=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	189
	
l3427:	
;C_PuertoSerial_usart.c: 189: *pa=0xFF;
	movlw	(0FFh)
	movwf	(5)
	line	201
	
l3429:	
;C_PuertoSerial_usart.c: 201: ADCON0=0xD5;
	movlw	(0D5h)
	movwf	(31)	;volatile
	line	202
	
l3431:	
;C_PuertoSerial_usart.c: 202: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	203
;C_PuertoSerial_usart.c: 203: while(GO_DONE==1);
	
l1108:	
	btfsc	(249/8),(249)&7
	goto	u511
	goto	u510
u511:
	goto	l1108
u510:
	line	204
	
l3433:	
;C_PuertoSerial_usart.c: 204: nin=((ADRESH<<2)|(ADRESL>>6));
	movf	(30),w	;volatile
	movwf	(_nin)
	clrf	(_nin+1)
	
l3435:	
	clrc
	rlf	(_nin),f
	rlf	(_nin+1),f
	clrc
	rlf	(_nin),f
	rlf	(_nin+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_main+0)+0
	movlw	06h
u525:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u525
	movf	0+(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(_nin),f
	line	205
	
l3437:	
;C_PuertoSerial_usart.c: 205: num=nin;
	movf	(_nin+1),w
	movwf	(_num+1)
	movf	(_nin),w
	movwf	(_num)
	line	210
	
l3439:	
;C_PuertoSerial_usart.c: 206: unsigned int d;
;C_PuertoSerial_usart.c: 207: unsigned int c;
;C_PuertoSerial_usart.c: 208: unsigned int u;
;C_PuertoSerial_usart.c: 209: unsigned int dc;
;C_PuertoSerial_usart.c: 210: unsigned int numd=num/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_num+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_num),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@numd+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@numd)
	line	211
	
l3441:	
;C_PuertoSerial_usart.c: 211: unsigned int numc=num/100;
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_num+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_num),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@numc+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@numc)
	line	212
	
l3443:	
;C_PuertoSerial_usart.c: 212: unsigned int numdc=num/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(_num+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_num),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@numdc+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@numdc)
	line	213
	
l3445:	
;C_PuertoSerial_usart.c: 213: dc=con_ascii(numdc);
	movf	(main@numdc+1),w
	movwf	(?_con_ascii+1)
	movf	(main@numdc),w
	movwf	(?_con_ascii)
	fcall	_con_ascii
	movf	(1+(?_con_ascii)),w
	movwf	(main@dc+1)
	movf	(0+(?_con_ascii)),w
	movwf	(main@dc)
	line	214
	
l3447:	
;C_PuertoSerial_usart.c: 214: numc=numc-(numdc*10);
	movf	(main@numdc+1),w
	movwf	(?___wmul+1)
	movf	(main@numdc),w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@numc),f
	skipnc
	incf	(main@numc+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@numc+1),f
	line	215
	
l3449:	
;C_PuertoSerial_usart.c: 215: c=con_ascii(numc);
	movf	(main@numc+1),w
	movwf	(?_con_ascii+1)
	movf	(main@numc),w
	movwf	(?_con_ascii)
	fcall	_con_ascii
	movf	(1+(?_con_ascii)),w
	movwf	(main@c+1)
	movf	(0+(?_con_ascii)),w
	movwf	(main@c)
	line	216
	
l3451:	
;C_PuertoSerial_usart.c: 216: numd=numd-(numc*10)-(numdc*100);
	movf	(main@numdc+1),w
	movwf	(?___wmul+1)
	movf	(main@numdc),w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+?___wmul),w
	movwf	(??_main+0)+0
	movf	(1+?___wmul),w
	movwf	((??_main+0)+0+1)
	movf	(main@numc+1),w
	movwf	(?___wmul+1)
	movf	(main@numc),w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(??_main+2)+0
	movf	0+(??_main+2)+0,w
	addwf	(main@numd),f
	skipnc
	incf	(main@numd+1),f
	movf	1+(??_main+2)+0,w
	addwf	(main@numd+1),f
	line	217
	
l3453:	
;C_PuertoSerial_usart.c: 217: d=con_ascii(numd);
	movf	(main@numd+1),w
	movwf	(?_con_ascii+1)
	movf	(main@numd),w
	movwf	(?_con_ascii)
	fcall	_con_ascii
	movf	(1+(?_con_ascii)),w
	movwf	(main@d+1)
	movf	(0+(?_con_ascii)),w
	movwf	(main@d)
	line	218
	
l3455:	
;C_PuertoSerial_usart.c: 218: unsigned int numu=num-(numdc*1000)-(numc*100)-(numd*10);
	movf	(main@numd+1),w
	movwf	(?___wmul+1)
	movf	(main@numd),w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@numu+1)
	movf	(0+(?___wmul)),w
	movwf	(main@numu)
	
l3457:	
	movf	(main@numc+1),w
	movwf	(?___wmul+1)
	movf	(main@numc),w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@numu),f
	skipnc
	incf	(main@numu+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@numu+1),f
	
l3459:	
	movf	(main@numdc+1),w
	movwf	(?___wmul+1)
	movf	(main@numdc),w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@numu),f
	skipnc
	incf	(main@numu+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@numu+1),f
	
l3461:	
	movf	(_num),w
	addwf	(main@numu),f
	skipnc
	incf	(main@numu+1),f
	movf	(_num+1),w
	addwf	(main@numu+1),f
	line	219
	
l3463:	
;C_PuertoSerial_usart.c: 219: u=con_ascii(numu);
	movf	(main@numu+1),w
	movwf	(?_con_ascii+1)
	movf	(main@numu),w
	movwf	(?_con_ascii)
	fcall	_con_ascii
	movf	(1+(?_con_ascii)),w
	movwf	(main@u+1)
	movf	(0+(?_con_ascii)),w
	movwf	(main@u)
	line	221
	
l3465:	
;C_PuertoSerial_usart.c: 221: putch(dc);
	movf	(main@dc),w
	fcall	_putch
	line	222
	
l3467:	
;C_PuertoSerial_usart.c: 222: putch(c);
	movf	(main@c),w
	fcall	_putch
	line	223
	
l3469:	
;C_PuertoSerial_usart.c: 223: putch(d);
	movf	(main@d),w
	fcall	_putch
	line	224
	
l3471:	
;C_PuertoSerial_usart.c: 224: putch(u);
	movf	(main@u),w
	fcall	_putch
	line	225
	
l3473:	
;C_PuertoSerial_usart.c: 225: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	226
	
l3475:	
;C_PuertoSerial_usart.c: 226: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	228
	
l3477:	
;C_PuertoSerial_usart.c: 228: num=PORTA;
	movf	(5),w	;volatile
	movwf	(_num)
	clrf	(_num+1)
	line	229
	
l3479:	
;C_PuertoSerial_usart.c: 229: numd=num/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_num+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_num),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@numd+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@numd)
	line	230
	
l3481:	
;C_PuertoSerial_usart.c: 230: numc=numd/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@numd+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(main@numd),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@numc+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@numc)
	line	231
	
l3483:	
;C_PuertoSerial_usart.c: 231: c=con_ascii(numc);
	movf	(main@numc+1),w
	movwf	(?_con_ascii+1)
	movf	(main@numc),w
	movwf	(?_con_ascii)
	fcall	_con_ascii
	movf	(1+(?_con_ascii)),w
	movwf	(main@c+1)
	movf	(0+(?_con_ascii)),w
	movwf	(main@c)
	line	232
	
l3485:	
;C_PuertoSerial_usart.c: 232: numd=numd-(numc*10);
	movf	(main@numc+1),w
	movwf	(?___wmul+1)
	movf	(main@numc),w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@numd),f
	skipnc
	incf	(main@numd+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@numd+1),f
	line	233
	
l3487:	
;C_PuertoSerial_usart.c: 233: d=con_ascii(numd);
	movf	(main@numd+1),w
	movwf	(?_con_ascii+1)
	movf	(main@numd),w
	movwf	(?_con_ascii)
	fcall	_con_ascii
	movf	(1+(?_con_ascii)),w
	movwf	(main@d+1)
	movf	(0+(?_con_ascii)),w
	movwf	(main@d)
	line	234
	
l3489:	
;C_PuertoSerial_usart.c: 234: numu=num-(numc*100)-(numd*10);
	movf	(main@numd+1),w
	movwf	(?___wmul+1)
	movf	(main@numd),w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@numu+1)
	movf	(0+(?___wmul)),w
	movwf	(main@numu)
	
l3491:	
	movf	(main@numc+1),w
	movwf	(?___wmul+1)
	movf	(main@numc),w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@numu),f
	skipnc
	incf	(main@numu+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@numu+1),f
	
l3493:	
	movf	(_num),w
	addwf	(main@numu),f
	skipnc
	incf	(main@numu+1),f
	movf	(_num+1),w
	addwf	(main@numu+1),f
	line	235
	
l3495:	
;C_PuertoSerial_usart.c: 235: u=con_ascii(numu);
	movf	(main@numu+1),w
	movwf	(?_con_ascii+1)
	movf	(main@numu),w
	movwf	(?_con_ascii)
	fcall	_con_ascii
	movf	(1+(?_con_ascii)),w
	movwf	(main@u+1)
	movf	(0+(?_con_ascii)),w
	movwf	(main@u)
	line	237
	
l3497:	
;C_PuertoSerial_usart.c: 237: putch(c);
	movf	(main@c),w
	fcall	_putch
	line	238
	
l3499:	
;C_PuertoSerial_usart.c: 238: putch(d);
	movf	(main@d),w
	fcall	_putch
	line	239
	
l3501:	
;C_PuertoSerial_usart.c: 239: putch(u);
	movf	(main@u),w
	fcall	_putch
	line	240
	
l3503:	
;C_PuertoSerial_usart.c: 240: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	241
	
l3505:	
;C_PuertoSerial_usart.c: 241: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	246
	
l3507:	
;C_PuertoSerial_usart.c: 246: char_recibido = getch();
	fcall	_getch
	movwf	(main@char_recibido)
	line	247
	
l3509:	
;C_PuertoSerial_usart.c: 247: char_recibido1 = getch();
	fcall	_getch
	movwf	(main@char_recibido1)
	line	248
	
l3511:	
;C_PuertoSerial_usart.c: 248: char_recibido2 = getch();
	fcall	_getch
	movwf	(main@char_recibido2)
	line	259
	
l3513:	
;C_PuertoSerial_usart.c: 255: unsigned char char_recibido3;
;C_PuertoSerial_usart.c: 256: unsigned char char_recibido4;
;C_PuertoSerial_usart.c: 257: unsigned char char_recibido5;
;C_PuertoSerial_usart.c: 258: unsigned char char_recibido6;
;C_PuertoSerial_usart.c: 259: char_recibido3 = getch();
	fcall	_getch
	movwf	(main@char_recibido3)
	line	260
	
l3515:	
;C_PuertoSerial_usart.c: 260: char_recibido4 = getch();
	fcall	_getch
	movwf	(main@char_recibido4)
	line	261
	
l3517:	
;C_PuertoSerial_usart.c: 261: char_recibido5 = getch();
	fcall	_getch
	movwf	(main@char_recibido5)
	line	262
	
l3519:	
;C_PuertoSerial_usart.c: 262: char_recibido6 = getch();
	fcall	_getch
	movwf	(main@char_recibido6)
	line	269
	
l3521:	
;C_PuertoSerial_usart.c: 267: unsigned int pb;
;C_PuertoSerial_usart.c: 268: unsigned int pb1;
;C_PuertoSerial_usart.c: 269: pb=((char_recibido-48)*100)+((char_recibido1-48)*10)+((char_recibido2-48));
	movf	(main@char_recibido),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@pb+1)
	movf	(0+(?___wmul)),w
	movwf	(main@pb)
	
l3523:	
	movf	(main@char_recibido1),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@pb),f
	skipnc
	incf	(main@pb+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@pb+1),f
	movf	(main@char_recibido2),w
	addwf	(main@pb),f
	skipnc
	incf	(main@pb+1),f
	movlw	low(-5328)
	addwf	(main@pb),f
	skipnc
	incf	(main@pb+1),f
	movlw	high(-5328)
	addwf	(main@pb+1),f
	line	270
	
l3525:	
;C_PuertoSerial_usart.c: 270: pb1=((char_recibido3-48)*1000)+((char_recibido4-48)*100)+((char_recibido5-48)*10)+char_recibido6-48;
	movf	(main@char_recibido3),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	low(03E8h)
	movwf	0+(?___wmul)+02h
	movlw	high(03E8h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@pb1+1)
	movf	(0+(?___wmul)),w
	movwf	(main@pb1)
	
l3527:	
	movf	(main@char_recibido4),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@pb1),f
	skipnc
	incf	(main@pb1+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@pb1+1),f
	
l3529:	
	movf	(main@char_recibido5),w
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@pb1),f
	skipnc
	incf	(main@pb1+1),f
	movf	(1+(?___wmul)),w
	addwf	(main@pb1+1),f
	
l3531:	
	movf	(main@char_recibido6),w
	addwf	(main@pb1),f
	skipnc
	incf	(main@pb1+1),f
	
l3533:	
	movlw	low(02FB0h)
	addwf	(main@pb1),f
	skipnc
	incf	(main@pb1+1),f
	movlw	high(02FB0h)
	addwf	(main@pb1+1),f
	line	271
	
l3535:	
;C_PuertoSerial_usart.c: 271: PORTB=pb;
	movf	(main@pb),w
	movwf	(6)	;volatile
	line	273
	
l3537:	
;C_PuertoSerial_usart.c: 273: CCPR1L = (pb1>>2) & 0xFF;
	movf	(main@pb1+1),w
	movwf	(??_main+0)+0+1
	movf	(main@pb1),w
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	movwf	(21)	;volatile
	line	274
	
l3539:	
;C_PuertoSerial_usart.c: 274: CCP1CON = 0x0C|((pb1 & 0x03)<<4);
	swapf	(main@pb1),w
	andlw	03h shl 4
	iorlw	0Ch
	movwf	(23)	;volatile
	line	296
;C_PuertoSerial_usart.c: 296: lcd_clear();
	fcall	_lcd_clear
	line	297
	
l3541:	
;C_PuertoSerial_usart.c: 297: if(char_recibido>50)
	movlw	(033h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@char_recibido),w
	skipc
	goto	u531
	goto	u530
u531:
	goto	l1111
u530:
	line	299
	
l3543:	
;C_PuertoSerial_usart.c: 298: {
;C_PuertoSerial_usart.c: 299: char_recibido=50;
	movlw	(032h)
	movwf	(main@char_recibido)
	line	300
	
l1111:	
	line	301
;C_PuertoSerial_usart.c: 300: }
;C_PuertoSerial_usart.c: 301: if(char_recibido==50)
	movf	(main@char_recibido),w
	xorlw	032h
	skipz
	goto	u541
	goto	u540
u541:
	goto	l3551
u540:
	line	303
	
l3545:	
;C_PuertoSerial_usart.c: 302: {
;C_PuertoSerial_usart.c: 303: if(char_recibido1>53)
	movlw	(036h)
	subwf	(main@char_recibido1),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l1113
u550:
	line	305
	
l3547:	
;C_PuertoSerial_usart.c: 304: {
;C_PuertoSerial_usart.c: 305: char_recibido1=53;
	movlw	(035h)
	movwf	(main@char_recibido1)
	line	306
	
l1113:	
	line	307
;C_PuertoSerial_usart.c: 306: }
;C_PuertoSerial_usart.c: 307: if(char_recibido2>53)
	movlw	(036h)
	subwf	(main@char_recibido2),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l3551
u560:
	line	309
	
l3549:	
;C_PuertoSerial_usart.c: 308: {
;C_PuertoSerial_usart.c: 309: char_recibido2=53;
	movlw	(035h)
	movwf	(main@char_recibido2)
	line	312
	
l3551:	
;C_PuertoSerial_usart.c: 310: }
;C_PuertoSerial_usart.c: 311: }
;C_PuertoSerial_usart.c: 312: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	313
	
l3553:	
;C_PuertoSerial_usart.c: 313: lcd_puts("LEDS:");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_lcd_puts
	line	314
	
l3555:	
;C_PuertoSerial_usart.c: 314: lcd_goto(6);
	movlw	(06h)
	fcall	_lcd_goto
	line	315
	
l3557:	
;C_PuertoSerial_usart.c: 315: lcd_putch(char_recibido);
	movf	(main@char_recibido),w
	fcall	_lcd_putch
	line	316
	
l3559:	
;C_PuertoSerial_usart.c: 316: lcd_goto(7);
	movlw	(07h)
	fcall	_lcd_goto
	line	317
	
l3561:	
;C_PuertoSerial_usart.c: 317: lcd_putch(char_recibido1);
	movf	(main@char_recibido1),w
	fcall	_lcd_putch
	line	318
	
l3563:	
;C_PuertoSerial_usart.c: 318: lcd_goto(8);
	movlw	(08h)
	fcall	_lcd_goto
	line	319
	
l3565:	
;C_PuertoSerial_usart.c: 319: lcd_putch(char_recibido2);
	movf	(main@char_recibido2),w
	fcall	_lcd_putch
	line	320
	
l3567:	
;C_PuertoSerial_usart.c: 320: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	321
	
l3569:	
;C_PuertoSerial_usart.c: 321: lcd_puts("PWM:");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_puts
	line	322
	
l3571:	
;C_PuertoSerial_usart.c: 322: lcd_goto(0x45);
	movlw	(045h)
	fcall	_lcd_goto
	line	323
	
l3573:	
;C_PuertoSerial_usart.c: 323: lcd_putch(char_recibido3);
	movf	(main@char_recibido3),w
	fcall	_lcd_putch
	line	324
	
l3575:	
;C_PuertoSerial_usart.c: 324: lcd_goto(0x46);
	movlw	(046h)
	fcall	_lcd_goto
	line	325
	
l3577:	
;C_PuertoSerial_usart.c: 325: lcd_putch(char_recibido4);
	movf	(main@char_recibido4),w
	fcall	_lcd_putch
	line	326
	
l3579:	
;C_PuertoSerial_usart.c: 326: lcd_goto(0x47);
	movlw	(047h)
	fcall	_lcd_goto
	line	327
	
l3581:	
;C_PuertoSerial_usart.c: 327: lcd_putch(char_recibido5);
	movf	(main@char_recibido5),w
	fcall	_lcd_putch
	line	328
	
l3583:	
;C_PuertoSerial_usart.c: 328: lcd_goto(0x48);
	movlw	(048h)
	fcall	_lcd_goto
	line	329
	
l3585:	
;C_PuertoSerial_usart.c: 329: lcd_putch(char_recibido6);
	movf	(main@char_recibido6),w
	fcall	_lcd_putch
	goto	l3429
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	344
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_goto
psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 78 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text211
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	78
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	79
	
l3337:	
;C_PuertoSerial_usart.c: 79: RE2=0;
	bcf	(74/8),(74)&7
	line	80
	
l3339:	
;C_PuertoSerial_usart.c: 80: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	81
	
l1076:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_putch
psect	text212,local,class=CODE,delta=2
global __ptext212
__ptext212:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 72 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text212
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	72
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 4
; Regs used in _lcd_putch: [wreg+status,2+status,0+pclath+cstack]
;lcd_putch@c stored from wreg
	movwf	(lcd_putch@c)
	line	73
	
l3333:	
;C_PuertoSerial_usart.c: 73: RE2=1;
	bsf	(74/8),(74)&7
	line	74
	
l3335:	
;C_PuertoSerial_usart.c: 74: lcd_write(c);
	movf	(lcd_putch@c),w
	fcall	_lcd_write
	line	75
	
l1073:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_lcd_puts
psect	text213,local,class=CODE,delta=2
global __ptext213
__ptext213:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 65 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(5), STR_1(6), 
;; Auto vars:     Size  Location     Type
;;  s               1    5[COMMON] PTR const unsigned char 
;;		 -> STR_2(5), STR_1(6), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text213
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	65
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	movwf	(lcd_puts@s)
	line	66
	
l3325:	
;C_PuertoSerial_usart.c: 66: RE2=1;
	bsf	(74/8),(74)&7
	line	67
;C_PuertoSerial_usart.c: 67: while(*s)
	goto	l3331
	line	68
	
l3327:	
;C_PuertoSerial_usart.c: 68: lcd_write(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_write
	
l3329:	
	incf	(lcd_puts@s),f
	line	67
	
l3331:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u491
	goto	u490
u491:
	goto	l3327
u490:
	line	69
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text214,local,class=CODE,delta=2
global __ptext214
__ptext214:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 58 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;;		_pause
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text214
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	58
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l3321:	
;C_PuertoSerial_usart.c: 59: RE2=0;
	bcf	(74/8),(74)&7
	line	60
	
l3323:	
;C_PuertoSerial_usart.c: 60: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	61
;C_PuertoSerial_usart.c: 61: pause(2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	62
	
l1064:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text215,local,class=CODE,delta=2
global __ptext215
__ptext215:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 49 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;; This function is called by:
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_putch
;;		_lcd_goto
;;		_main
;; This function uses a non-reentrant model
;;
psect	text215
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	49
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	50
	
l3307:	
;C_PuertoSerial_usart.c: 50: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	51
	
l3309:	
;C_PuertoSerial_usart.c: 51: PORTD=((c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	52
	
l3311:	
;C_PuertoSerial_usart.c: 52: ((RE1=1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3313:	
	bcf	(73/8),(73)&7
	line	53
	
l3315:	
;C_PuertoSerial_usart.c: 53: PORTD=(c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	54
	
l3317:	
;C_PuertoSerial_usart.c: 54: ((RE1=1),(RE1=0));
	bsf	(73/8),(73)&7
	
l3319:	
	bcf	(73/8),(73)&7
	line	55
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_pause
psect	text216,local,class=CODE,delta=2
global __ptext216
__ptext216:

;; *************** function _pause *****************
;; Defined at:
;;		line 23 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  msvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_msecbase
;; This function is called by:
;;		_lcd_write
;;		_lcd_clear
;;		_main
;; This function uses a non-reentrant model
;;
psect	text216
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	23
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 4
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l3299:	
;C_PuertoSerial_usart.c: 24: for (unsigned short x=0; x<=msvalue; x++) msecbase();
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l3305
	
l3301:	
	fcall	_msecbase
	
l3303:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l3305:	
	movf	(pause@x+1),w
	subwf	(pause@msvalue+1),w
	skipz
	goto	u485
	movf	(pause@x),w
	subwf	(pause@msvalue),w
u485:
	skipnc
	goto	u481
	goto	u480
u481:
	goto	l3301
u480:
	line	25
	
l1058:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___lwdiv
psect	text217,local,class=CODE,delta=2
global __ptext217
__ptext217:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text217
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3273:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3275:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u441
	goto	u440
u441:
	goto	l3295
u440:
	line	11
	
l3277:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3281
	line	13
	
l3279:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3281:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u451
	goto	u450
u451:
	goto	l3279
u450:
	line	17
	
l3283:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3285:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u465
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u465:
	skipc
	goto	u461
	goto	u460
u461:
	goto	l3291
u460:
	line	19
	
l3287:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3289:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3291:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3293:	
	decfsz	(___lwdiv@counter),f
	goto	u471
	goto	u470
u471:
	goto	l3283
u470:
	line	25
	
l3295:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2148:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text218
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3257:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3259:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u421
	goto	u420
u421:
	goto	l3263
u420:
	line	8
	
l3261:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3263:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3265:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3267:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u431
	goto	u430
u431:
	goto	l3259
u430:
	line	12
	
l3269:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2138:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_getch
psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:

;; *************** function _getch *****************
;; Defined at:
;;		line 354 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text219
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	354
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	355
	
l3251:	
;C_PuertoSerial_usart.c: 355: while(!RCIF) continue;
	
l1126:	
	btfss	(101/8),(101)&7
	goto	u411
	goto	u410
u411:
	goto	l1126
u410:
	line	356
	
l3253:	
;C_PuertoSerial_usart.c: 356: return RCREG;
	movf	(26),w	;volatile
	line	357
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:

;; *************** function _putch *****************
;; Defined at:
;;		line 348 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  dato            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dato            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text220
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	348
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 7
; Regs used in _putch: [wreg]
;putch@dato stored from wreg
	movwf	(putch@dato)
	line	349
	
l3247:	
;C_PuertoSerial_usart.c: 349: while(!TXIF) continue;
	
l1120:	
	btfss	(100/8),(100)&7
	goto	u401
	goto	u400
u401:
	goto	l1120
u400:
	line	350
	
l3249:	
;C_PuertoSerial_usart.c: 350: TXREG=dato;
	movf	(putch@dato),w
	movwf	(25)	;volatile
	line	351
	
l1123:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_con_ascii
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function _con_ascii *****************
;; Defined at:
;;		line 90 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  entrar          2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text221
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	90
	global	__size_of_con_ascii
	__size_of_con_ascii	equ	__end_of_con_ascii-_con_ascii
	
_con_ascii:	
	opt	stack 7
; Regs used in _con_ascii: [wreg+status,2+status,0]
	line	91
	
l3205:	
;C_PuertoSerial_usart.c: 91: if(entrar==0)
	movf	((con_ascii@entrar+1)),w
	iorwf	((con_ascii@entrar)),w
	skipz
	goto	u301
	goto	u300
u301:
	goto	l3209
u300:
	line	93
	
l3207:	
;C_PuertoSerial_usart.c: 92: {
;C_PuertoSerial_usart.c: 93: sal=48;
	movlw	030h
	movwf	(_sal)
	clrf	(_sal+1)
	line	94
;C_PuertoSerial_usart.c: 94: }
	goto	l1083
	line	95
	
l3209:	
;C_PuertoSerial_usart.c: 95: else if(entrar==1)
	decf	(con_ascii@entrar),w
	iorwf	(con_ascii@entrar+1),w

	skipz
	goto	u311
	goto	u310
u311:
	goto	l3213
u310:
	line	97
	
l3211:	
;C_PuertoSerial_usart.c: 96: {
;C_PuertoSerial_usart.c: 97: sal=49;
	movlw	031h
	movwf	(_sal)
	clrf	(_sal+1)
	line	98
;C_PuertoSerial_usart.c: 98: }
	goto	l1083
	line	99
	
l3213:	
;C_PuertoSerial_usart.c: 99: else if(entrar==2)
		movf	(con_ascii@entrar),w
	xorlw	2
	iorwf	(con_ascii@entrar+1),w

	skipz
	goto	u321
	goto	u320
u321:
	goto	l3217
u320:
	line	101
	
l3215:	
;C_PuertoSerial_usart.c: 100: {
;C_PuertoSerial_usart.c: 101: sal=50;
	movlw	032h
	movwf	(_sal)
	clrf	(_sal+1)
	line	102
;C_PuertoSerial_usart.c: 102: }
	goto	l1083
	line	103
	
l3217:	
;C_PuertoSerial_usart.c: 103: else if(entrar==3)
		movf	(con_ascii@entrar),w
	xorlw	3
	iorwf	(con_ascii@entrar+1),w

	skipz
	goto	u331
	goto	u330
u331:
	goto	l3221
u330:
	line	105
	
l3219:	
;C_PuertoSerial_usart.c: 104: {
;C_PuertoSerial_usart.c: 105: sal=51;
	movlw	033h
	movwf	(_sal)
	clrf	(_sal+1)
	line	106
;C_PuertoSerial_usart.c: 106: }
	goto	l1083
	line	107
	
l3221:	
;C_PuertoSerial_usart.c: 107: else if(entrar==4)
		movf	(con_ascii@entrar),w
	xorlw	4
	iorwf	(con_ascii@entrar+1),w

	skipz
	goto	u341
	goto	u340
u341:
	goto	l3225
u340:
	line	109
	
l3223:	
;C_PuertoSerial_usart.c: 108: {
;C_PuertoSerial_usart.c: 109: sal=52;
	movlw	034h
	movwf	(_sal)
	clrf	(_sal+1)
	line	110
;C_PuertoSerial_usart.c: 110: }
	goto	l1083
	line	111
	
l3225:	
;C_PuertoSerial_usart.c: 111: else if(entrar==5)
		movf	(con_ascii@entrar),w
	xorlw	5
	iorwf	(con_ascii@entrar+1),w

	skipz
	goto	u351
	goto	u350
u351:
	goto	l3229
u350:
	line	113
	
l3227:	
;C_PuertoSerial_usart.c: 112: {
;C_PuertoSerial_usart.c: 113: sal=53;
	movlw	035h
	movwf	(_sal)
	clrf	(_sal+1)
	line	114
;C_PuertoSerial_usart.c: 114: }
	goto	l1083
	line	115
	
l3229:	
;C_PuertoSerial_usart.c: 115: else if(entrar==6)
		movf	(con_ascii@entrar),w
	xorlw	6
	iorwf	(con_ascii@entrar+1),w

	skipz
	goto	u361
	goto	u360
u361:
	goto	l3233
u360:
	line	117
	
l3231:	
;C_PuertoSerial_usart.c: 116: {
;C_PuertoSerial_usart.c: 117: sal=54;
	movlw	036h
	movwf	(_sal)
	clrf	(_sal+1)
	line	118
;C_PuertoSerial_usart.c: 118: }
	goto	l1083
	line	119
	
l3233:	
;C_PuertoSerial_usart.c: 119: else if(entrar==7)
		movf	(con_ascii@entrar),w
	xorlw	7
	iorwf	(con_ascii@entrar+1),w

	skipz
	goto	u371
	goto	u370
u371:
	goto	l3237
u370:
	line	121
	
l3235:	
;C_PuertoSerial_usart.c: 120: {
;C_PuertoSerial_usart.c: 121: sal=55;
	movlw	037h
	movwf	(_sal)
	clrf	(_sal+1)
	line	122
;C_PuertoSerial_usart.c: 122: }
	goto	l1083
	line	123
	
l3237:	
;C_PuertoSerial_usart.c: 123: else if(entrar==8)
		movf	(con_ascii@entrar),w
	xorlw	8
	iorwf	(con_ascii@entrar+1),w

	skipz
	goto	u381
	goto	u380
u381:
	goto	l3241
u380:
	line	125
	
l3239:	
;C_PuertoSerial_usart.c: 124: {
;C_PuertoSerial_usart.c: 125: sal=56;
	movlw	038h
	movwf	(_sal)
	clrf	(_sal+1)
	line	126
;C_PuertoSerial_usart.c: 126: }
	goto	l1083
	line	127
	
l3241:	
;C_PuertoSerial_usart.c: 127: else if(entrar==9)
		movf	(con_ascii@entrar),w
	xorlw	9
	iorwf	(con_ascii@entrar+1),w

	skipz
	goto	u391
	goto	u390
u391:
	goto	l1095
u390:
	line	129
	
l3243:	
;C_PuertoSerial_usart.c: 128: {
;C_PuertoSerial_usart.c: 129: sal=57;
	movlw	039h
	movwf	(_sal)
	clrf	(_sal+1)
	goto	l1083
	line	131
	
l1095:	
	
l1083:	
;C_PuertoSerial_usart.c: 130: }
;C_PuertoSerial_usart.c: 131: return sal;
	movf	(_sal+1),w
	movwf	(?_con_ascii+1)
	movf	(_sal),w
	movwf	(?_con_ascii)
	line	132
	
l1101:	
	return
	opt stack 0
GLOBAL	__end_of_con_ascii
	__end_of_con_ascii:
;; =============== function _con_ascii ends ============

	signat	_con_ascii,4218
	global	_msecbase
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 14 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 11F/0
;;		On exit  : 11F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pause
;; This function uses a non-reentrant model
;;
psect	text222
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	14
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 4
; Regs used in _msecbase: [wreg]
	line	17
	
l3203:	
;C_PuertoSerial_usart.c: 17: OPTION_REG = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	18
;C_PuertoSerial_usart.c: 18: TMR0 = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	19
;C_PuertoSerial_usart.c: 19: while(!T0IF);
	
l1049:	
	btfss	(90/8),(90)&7
	goto	u291
	goto	u290
u291:
	goto	l1049
u290:
	
l1051:	
	line	20
;C_PuertoSerial_usart.c: 20: T0IF = 0;
	bcf	(90/8),(90)&7
	line	21
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
