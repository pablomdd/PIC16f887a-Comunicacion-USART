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
# 6 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 7 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_main,_lcd_write
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_putch
	FNCALL	_main,_getch
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_putch
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_putch,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_write,_pause
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_INTCON
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:
_INTCON	set	11
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
	global	_RA6
_RA6	set	46
	global	_RA7
_RA7	set	47
	global	_RCIF
_RCIF	set	101
	global	_RE1
_RE1	set	73
	global	_T0IF
_T0IF	set	90
	global	_TXIF
_TXIF	set	100
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
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
	file	"C_PuertoSerial_usar.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	?_lcd_putch
?_lcd_putch:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	putch@dato
putch@dato:	; 1 bytes @ 0x0
	global	pause@msvalue
pause@msvalue:	; 2 bytes @ 0x0
	ds	2
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	ds	2
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	??_lcd_putch
??_lcd_putch:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	lcd_putch@c
lcd_putch@c:	; 1 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
	global	main@char_recibido
main@char_recibido:	; 1 bytes @ 0x6
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x7
	ds	2
	global	main@i_1809
main@i_1809:	; 2 bytes @ 0x9
	ds	2
	global	main@i_1810
main@i_1810:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; pa	PTR unsigned char  size(1) Largest target is 1
;;		 -> PORTA(BITSFR0[1]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_goto
;;   _main->_lcd_putch
;;   _lcd_goto->_lcd_write
;;   _lcd_putch->_lcd_write
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 8     8      0     510
;;                                              6 COMMON     7     7      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;;                              _putch
;;                              _getch
;;                           _lcd_goto
;;                          _lcd_putch
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0      75
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_putch                                            1     1      0      75
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0      90
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            1     1      0      60
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (3) _pause                                                4     2      2      30
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _putch                                                1     1      0      15
;;                                              0 COMMON     1     1      0
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
;;   _putch
;;   _getch
;;   _lcd_goto
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
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 90 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   11[COMMON] int 
;;  i               2    9[COMMON] int 
;;  i               2    7[COMMON] int 
;;  char_recibid    1    6[COMMON] unsigned char 
;;  pos             1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         7       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pause
;;		_lcd_write
;;		_lcd_clear
;;		_putch
;;		_getch
;;		_lcd_goto
;;		_lcd_putch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	90
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	91
	
l2499:	
;C_PuertoSerial_usart.c: 91: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	92
;C_PuertoSerial_usart.c: 92: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	line	93
;C_PuertoSerial_usart.c: 93: INTCON=0x00;
	clrf	(11)	;volatile
	line	94
;C_PuertoSerial_usart.c: 94: TRISA = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	95
;C_PuertoSerial_usart.c: 95: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	96
;C_PuertoSerial_usart.c: 96: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	98
	
l2501:	
;C_PuertoSerial_usart.c: 98: RA7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(47/8),(47)&7
	line	99
	
l2503:	
;C_PuertoSerial_usart.c: 99: RA6=0;
	bcf	(46/8),(46)&7
	line	100
	
l2505:	
;C_PuertoSerial_usart.c: 100: RE1=0;
	bcf	(73/8),(73)&7
	line	102
	
l2507:	
;C_PuertoSerial_usart.c: 102: PORTD=init_value;
	movlw	(03h)
	movwf	(8)	;volatile
	line	103
	
l2509:	
;C_PuertoSerial_usart.c: 103: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l2511:	
	bcf	(46/8),(46)&7
	line	104
	
l2513:	
;C_PuertoSerial_usart.c: 104: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	105
	
l2515:	
;C_PuertoSerial_usart.c: 105: ((RA6=1),(RA6=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	
l2517:	
	bcf	(46/8),(46)&7
	line	106
	
l2519:	
;C_PuertoSerial_usart.c: 106: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	107
	
l2521:	
;C_PuertoSerial_usart.c: 107: ((RA6=1),(RA6=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	
l2523:	
	bcf	(46/8),(46)&7
	line	108
	
l2525:	
;C_PuertoSerial_usart.c: 108: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	109
	
l2527:	
;C_PuertoSerial_usart.c: 109: PORTD=2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	110
	
l2529:	
;C_PuertoSerial_usart.c: 110: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l2531:	
	bcf	(46/8),(46)&7
	line	112
	
l2533:	
;C_PuertoSerial_usart.c: 112: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	113
	
l2535:	
;C_PuertoSerial_usart.c: 113: lcd_write(0xC);
	movlw	(0Ch)
	fcall	_lcd_write
	line	114
	
l2537:	
;C_PuertoSerial_usart.c: 114: lcd_clear();
	fcall	_lcd_clear
	line	115
	
l2539:	
;C_PuertoSerial_usart.c: 115: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	117
	
l2541:	
;C_PuertoSerial_usart.c: 117: TRISC7=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	118
	
l2543:	
;C_PuertoSerial_usart.c: 118: TRISC6=0;
	bcf	(1086/8)^080h,(1086)&7
	line	119
	
l2545:	
;C_PuertoSerial_usart.c: 119: OSCCON=0x70;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	120
	
l2547:	
;C_PuertoSerial_usart.c: 120: SPBRG=12;
	movlw	(0Ch)
	movwf	(153)^080h	;volatile
	line	121
	
l2549:	
;C_PuertoSerial_usart.c: 121: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	122
	
l2551:	
;C_PuertoSerial_usart.c: 122: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	123
	
l2553:	
;C_PuertoSerial_usart.c: 123: BAUDCTL=0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	124
;C_PuertoSerial_usart.c: 124: pause(500);
	movlw	low(01F4h)
	movwf	(?_pause)
	movlw	high(01F4h)
	movwf	((?_pause))+1
	fcall	_pause
	line	125
	
l2555:	
;C_PuertoSerial_usart.c: 125: PORTA=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	126
	
l2557:	
;C_PuertoSerial_usart.c: 128: char char_recibido;
;C_PuertoSerial_usart.c: 131: unsigned char pos=0;
	movlw	(0FFh)
	movwf	(5)
	line	132
	
l2559:	
;C_PuertoSerial_usart.c: 132: for(int i=48; i<58; i++){
	movlw	030h
	movwf	(main@i)
	clrf	(main@i+1)
	line	133
	
l2565:	
;C_PuertoSerial_usart.c: 133: putch(i);
	movf	(main@i),w
	fcall	_putch
	line	134
;C_PuertoSerial_usart.c: 134: pause(20);
	movlw	014h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	132
	
l2567:	
	incf	(main@i),f
	skipnz
	incf	(main@i+1),f
	
l2569:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u55
	movlw	low(03Ah)
	subwf	(main@i),w
u55:

	skipc
	goto	u51
	goto	u50
u51:
	goto	l2565
u50:
	line	136
	
l2571:	
;C_PuertoSerial_usart.c: 135: }
;C_PuertoSerial_usart.c: 136: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	137
;C_PuertoSerial_usart.c: 137: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	139
	
l2573:	
;C_PuertoSerial_usart.c: 139: for(int i=97; i<123; i++){
	movlw	061h
	movwf	(main@i_1809)
	clrf	(main@i_1809+1)
	line	140
	
l2579:	
;C_PuertoSerial_usart.c: 140: putch(i);
	movf	(main@i_1809),w
	fcall	_putch
	line	141
;C_PuertoSerial_usart.c: 141: pause(20);
	movlw	014h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	139
	
l2581:	
	incf	(main@i_1809),f
	skipnz
	incf	(main@i_1809+1),f
	
l2583:	
	movf	(main@i_1809+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u65
	movlw	low(07Bh)
	subwf	(main@i_1809),w
u65:

	skipc
	goto	u61
	goto	u60
u61:
	goto	l2579
u60:
	line	143
	
l2585:	
;C_PuertoSerial_usart.c: 142: }
;C_PuertoSerial_usart.c: 143: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	144
;C_PuertoSerial_usart.c: 144: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	145
	
l2587:	
;C_PuertoSerial_usart.c: 145: PORTA=0x00;
	clrf	(5)	;volatile
	line	146
	
l2589:	
;C_PuertoSerial_usart.c: 146: pause(1000);
	movlw	low(03E8h)
	movwf	(?_pause)
	movlw	high(03E8h)
	movwf	((?_pause))+1
	fcall	_pause
	line	177
	
l2591:	
;C_PuertoSerial_usart.c: 177: char_recibido = getch();
	fcall	_getch
	movwf	(main@char_recibido)
	line	178
	
l2593:	
;C_PuertoSerial_usart.c: 178: putch(char_recibido);
	movf	(main@char_recibido),w
	fcall	_putch
	line	179
	
l2595:	
;C_PuertoSerial_usart.c: 179: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	180
	
l2597:	
;C_PuertoSerial_usart.c: 180: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	182
	
l2599:	
;C_PuertoSerial_usart.c: 182: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	183
	
l2601:	
;C_PuertoSerial_usart.c: 183: lcd_putch(char_recibido);
	movf	(main@char_recibido),w
	fcall	_lcd_putch
	line	184
	
l2603:	
;C_PuertoSerial_usart.c: 184: pause(500);
	movlw	low(01F4h)
	movwf	(?_pause)
	movlw	high(01F4h)
	movwf	((?_pause))+1
	fcall	_pause
	line	186
	
l2605:	
;C_PuertoSerial_usart.c: 186: for(int i=97; i<123; i++){
	movlw	061h
	movwf	(main@i_1810)
	clrf	(main@i_1810+1)
	line	187
	
l2611:	
;C_PuertoSerial_usart.c: 187: putch(i);
	movf	(main@i_1810),w
	fcall	_putch
	line	188
;C_PuertoSerial_usart.c: 188: pause(20);
	movlw	014h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	186
	
l2613:	
	incf	(main@i_1810),f
	skipnz
	incf	(main@i_1810+1),f
	
l2615:	
	movf	(main@i_1810+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u75
	movlw	low(07Bh)
	subwf	(main@i_1810),w
u75:

	skipc
	goto	u71
	goto	u70
u71:
	goto	l2611
u70:
	line	190
	
l2617:	
;C_PuertoSerial_usart.c: 189: }
;C_PuertoSerial_usart.c: 190: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	191
;C_PuertoSerial_usart.c: 191: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	goto	l2591
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	198
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_goto
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 83 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text99
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	83
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	84
	
l2495:	
;C_PuertoSerial_usart.c: 84: RA7=0;
	bcf	(47/8),(47)&7
	line	85
	
l2497:	
;C_PuertoSerial_usart.c: 85: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	86
	
l1066:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_putch
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 77 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text100
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	77
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
	opt	stack 4
; Regs used in _lcd_putch: [wreg+status,2+status,0+pclath+cstack]
;lcd_putch@c stored from wreg
	movwf	(lcd_putch@c)
	line	78
	
l2491:	
;C_PuertoSerial_usart.c: 78: RA7=1;
	bsf	(47/8),(47)&7
	line	79
	
l2493:	
;C_PuertoSerial_usart.c: 79: lcd_write(c);
	movf	(lcd_putch@c),w
	fcall	_lcd_write
	line	80
	
l1063:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
;; =============== function _lcd_putch ends ============

	signat	_lcd_putch,4216
	global	_lcd_clear
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 63 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
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
psect	text101
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	63
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	64
	
l2487:	
;C_PuertoSerial_usart.c: 64: RA7=0;
	bcf	(47/8),(47)&7
	line	65
	
l2489:	
;C_PuertoSerial_usart.c: 65: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	66
;C_PuertoSerial_usart.c: 66: pause(2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	67
	
l1054:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 54 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_lcd_putch
;;		_lcd_goto
;;		_main
;; This function uses a non-reentrant model
;;
psect	text102
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	54
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	55
	
l2473:	
;C_PuertoSerial_usart.c: 55: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	56
	
l2475:	
;C_PuertoSerial_usart.c: 56: PORTD=((c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	57
	
l2477:	
;C_PuertoSerial_usart.c: 57: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l2479:	
	bcf	(46/8),(46)&7
	line	58
	
l2481:	
;C_PuertoSerial_usart.c: 58: PORTD=(c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	59
	
l2483:	
;C_PuertoSerial_usart.c: 59: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l2485:	
	bcf	(46/8),(46)&7
	line	60
	
l1051:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_pause
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _pause *****************
;; Defined at:
;;		line 18 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  msvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
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
psect	text103
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	18
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 4
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2465:	
;C_PuertoSerial_usart.c: 19: for (unsigned short x=0; x<=msvalue; x++) msecbase();
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l2471
	
l2467:	
	fcall	_msecbase
	
l2469:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l2471:	
	movf	(pause@x+1),w
	subwf	(pause@msvalue+1),w
	skipz
	goto	u45
	movf	(pause@x),w
	subwf	(pause@msvalue),w
u45:
	skipnc
	goto	u41
	goto	u40
u41:
	goto	l2467
u40:
	line	20
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	_getch
psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:

;; *************** function _getch *****************
;; Defined at:
;;		line 210 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text104
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	210
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	211
	
l2459:	
;C_PuertoSerial_usart.c: 211: while(!RCIF) continue;
	
l1087:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u31
	goto	u30
u31:
	goto	l1087
u30:
	line	212
	
l2461:	
;C_PuertoSerial_usart.c: 212: return RCREG;
	movf	(26),w	;volatile
	line	213
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:

;; *************** function _putch *****************
;; Defined at:
;;		line 204 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  dato            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dato            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text105
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	204
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 7
; Regs used in _putch: [wreg]
;putch@dato stored from wreg
	movwf	(putch@dato)
	line	205
	
l2455:	
;C_PuertoSerial_usart.c: 205: while(!TXIF) continue;
	
l1081:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u21
	goto	u20
u21:
	goto	l1081
u20:
	line	206
	
l2457:	
;C_PuertoSerial_usart.c: 206: TXREG=dato;
	movf	(putch@dato),w
	movwf	(25)	;volatile
	line	207
	
l1084:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_msecbase
psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 9 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
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
psect	text106
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	9
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 4
; Regs used in _msecbase: [wreg]
	line	12
	
l2453:	
;C_PuertoSerial_usart.c: 12: OPTION_REG = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	13
;C_PuertoSerial_usart.c: 13: TMR0 = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	14
;C_PuertoSerial_usart.c: 14: while(!T0IF);
	
l1039:	
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l1039
u10:
	
l1041:	
	line	15
;C_PuertoSerial_usart.c: 15: T0IF = 0;
	bcf	(90/8),(90)&7
	line	16
	
l1042:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
