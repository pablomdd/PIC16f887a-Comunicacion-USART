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
# 9 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 10 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	psect config,class=CONFIG,delta=2 ;#
# 10 "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_main,_lcd_write
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_putch
	FNCALL	_main,_gets_Serial
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,_sprintf
	FNCALL	_main,_atoi
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	_lcd_write,_pause
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_gets_Serial,_getch
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_nin
	global	_input
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_PORTB
_PORTB	set	6
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
	global	_GO_DONE
_GO_DONE	set	249
	global	_RCIF
_RCIF	set	101
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_RE1
_RE1	set	73
	global	_T0IF
_T0IF	set	90
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2ON
_TMR2ON	set	146
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
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
	
STR_2:	
	retlw	80	;'P'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	80	;'P'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	66	;'B'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	40	;'('
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	41	;')'
	retlw	0
psect	strings
	
STR_5:	
	retlw	104	;'h'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	0
psect	strings
	file	"C_PuertoSerial_usar.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_nin:
       ds      2

_input:
       ds      17

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+013h)
	fcall	clear_ram
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
	global	?_gets_Serial
?_gets_Serial:	; 0 bytes @ 0x0
	global	??_gets_Serial
??_gets_Serial:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
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
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	putch@dato
putch@dato:	; 1 bytes @ 0x0
	global	_isdigit$2400
_isdigit$2400:	; 1 bytes @ 0x0
	global	pause@msvalue
pause@msvalue:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	gets_Serial@s
gets_Serial@s:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	gets_Serial@i
gets_Serial@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	gets_Serial@i_1851
gets_Serial@i_1851:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	ds	1
	global	?_atoi
?_atoi:	; 2 bytes @ 0x6
	global	gets_Serial@c
gets_Serial@c:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??_atoi
??_atoi:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	1
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0xA
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	global	atoi@a
atoi@a:	; 2 bytes @ 0xB
	ds	1
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xC
	ds	1
	global	atoi@s
atoi@s:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	ds	3
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x4
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x5
	ds	1
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x6
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x6
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x7
	ds	2
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x9
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xA
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xB
	ds	2
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xD
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xE
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xF
	ds	2
	global	main@buffer
main@buffer:	; 15 bytes @ 0x11
	ds	15
	global	main@val
main@val:	; 2 bytes @ 0x20
	ds	2
	global	main@pwm_1
main@pwm_1:	; 2 bytes @ 0x22
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x24
	ds	2
	global	main@i_1832
main@i_1832:	; 2 bytes @ 0x26
	ds	2
	global	main@x
main@x:	; 1 bytes @ 0x28
	ds	1
	global	main@x_1838
main@x_1838:	; 1 bytes @ 0x29
	ds	1
	global	main@x_1840
main@x_1840:	; 1 bytes @ 0x2A
	ds	1
	global	main@x_1842
main@x_1842:	; 1 bytes @ 0x2B
	ds	1
;;Data sizes: Strings 61, constant 10, data 0, bss 19, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     44      63
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 17
;;		 -> input(BANK0[17]), 
;;
;; ?_atoi	int  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; atoi@s	PTR const unsigned char  size(1) Largest target is 17
;;		 -> input(BANK0[17]), 
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 13
;;		 -> STR_4(CODE[12]), STR_3(CODE[12]), STR_2(CODE[13]), STR_1(CODE[12]), 
;;
;; sprintf@_val._cp	PTR const unsigned char  size(2) Largest target is 17
;;		 -> STR_6(CODE[7]), input(BANK0[17]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 15
;;		 -> main@buffer(BANK0[15]), 
;;
;; ?_sprintf	int  size(1) Largest target is 17
;;		 -> input(BANK0[17]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1870$_cp	PTR const unsigned char  size(2) Largest target is 17
;;		 -> STR_6(CODE[7]), input(BANK0[17]), 
;;
;; _val._str._cp	PTR const unsigned char  size(2) Largest target is 17
;;		 -> STR_6(CODE[7]), input(BANK0[17]), 
;;
;; gets_Serial@s	PTR unsigned char  size(1) Largest target is 17
;;		 -> input(BANK0[17]), main@buffer(BANK0[15]), 
;;
;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 8192
;;		 -> ROM(CODE[8192]), STR_5(CODE[5]), 
;;
;; pa	PTR unsigned char  size(1) Largest target is 1
;;		 -> PORTA(BITSFR0[1]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_sprintf
;;   _main->_atoi
;;   _lcd_goto->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _lcd_write->_pause
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   _atoi->___wmul
;;   _sprintf->___lwmod
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftmul
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                36    36      0    3616
;;                                             15 BANK0     29    29      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;;                              _putch
;;                        _gets_Serial
;;                           ___awtoft
;;                            ___ftmul
;;                            _sprintf
;;                               _atoi
;;                           _lcd_goto
;;                           _lcd_puts
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     112
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
;; (1) ___awtoft                                             4     1      3     300
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             15     9      6     535
;;                                              0 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _atoi                                                 8     6      2     388
;;                                              6 COMMON     8     6      2
;;                             ___wmul
;;                            _isdigit
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             14    11      3     913
;;                                             12 COMMON     2     2      0
;;                                              0 BANK0     12     9      3
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _gets_Serial                                          7     7      0     247
;;                                              0 COMMON     7     7      0
;;                              _getch
;; ---------------------------------------------------------------------------------
;; (3) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _putch                                                1     1      0      22
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
;;   _gets_Serial
;;     _getch
;;   ___awtoft
;;     ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;   _sprintf
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _atoi
;;     ___wmul
;;     _isdigit
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_puts
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
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      4D       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     2C      3F       5       78.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      51      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 94 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               1   43[BANK0 ] unsigned char 
;;  x               1   42[BANK0 ] unsigned char 
;;  x               1   41[BANK0 ] unsigned char 
;;  x               1   40[BANK0 ] unsigned char 
;;  val             2   32[BANK0 ] int 
;;  num_f           2    0        int 
;;  i               2   38[BANK0 ] int 
;;  i               2   36[BANK0 ] int 
;;  buffer         15   17[BANK0 ] unsigned char [15]
;;  pwm_1           2   34[BANK0 ] unsigned int 
;;  entrada         2    0        int 
;;  pos             1    0        unsigned char 
;;  char_pwm        1    0        unsigned char 
;;  char_recibid    1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 160/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      27       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      29       0       0       0
;;Total ram usage:       29 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pause
;;		_lcd_write
;;		_lcd_clear
;;		_putch
;;		_gets_Serial
;;		___awtoft
;;		___ftmul
;;		_sprintf
;;		_atoi
;;		_lcd_goto
;;		_lcd_puts
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	94
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	95
	
l3547:	
;C_PuertoSerial_usart.c: 95: ANSEL=0x60;
	movlw	(060h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	96
	
l3549:	
;C_PuertoSerial_usart.c: 96: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	line	98
	
l3551:	
;C_PuertoSerial_usart.c: 98: TRISA = 0xFF;
	movlw	(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	100
;C_PuertoSerial_usart.c: 100: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	101
;C_PuertoSerial_usart.c: 101: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	102
;C_PuertoSerial_usart.c: 102: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	103
	
l3553:	
;C_PuertoSerial_usart.c: 103: TRISE = 0x03;
	movlw	(03h)
	movwf	(137)^080h	;volatile
	line	106
	
l3555:	
;C_PuertoSerial_usart.c: 106: TRISE=0x03;
	movlw	(03h)
	movwf	(137)^080h	;volatile
	line	107
;C_PuertoSerial_usart.c: 107: ADCON1=0b00000000;
	clrf	(159)^080h	;volatile
	line	108
	
l3557:	
;C_PuertoSerial_usart.c: 108: PR2=0xFF;
	movlw	(0FFh)
	movwf	(146)^080h	;volatile
	line	110
	
l3559:	
;C_PuertoSerial_usart.c: 110: CCP1CON = 0xC0;
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	111
	
l3561:	
;C_PuertoSerial_usart.c: 111: CCP2CON = 0xC0;
	movlw	(0C0h)
	movwf	(29)	;volatile
	line	112
	
l3563:	
;C_PuertoSerial_usart.c: 112: T2CKPS1 = 1;
	bsf	(145/8),(145)&7
	line	113
	
l3565:	
;C_PuertoSerial_usart.c: 113: T2CKPS0 = 1;
	bsf	(144/8),(144)&7
	line	114
	
l3567:	
;C_PuertoSerial_usart.c: 114: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	117
	
l3569:	
;C_PuertoSerial_usart.c: 117: RD7=0;
	bcf	(71/8),(71)&7
	line	118
	
l3571:	
;C_PuertoSerial_usart.c: 118: RD6=0;
	bcf	(70/8),(70)&7
	line	119
	
l3573:	
;C_PuertoSerial_usart.c: 119: RE1=0;
	bcf	(73/8),(73)&7
	line	121
	
l3575:	
;C_PuertoSerial_usart.c: 121: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	122
	
l3577:	
;C_PuertoSerial_usart.c: 122: PORTD=init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	123
	
l3579:	
;C_PuertoSerial_usart.c: 123: ((RD6=1),(RD6=0));
	bsf	(70/8),(70)&7
	
l3581:	
	bcf	(70/8),(70)&7
	line	124
	
l3583:	
;C_PuertoSerial_usart.c: 124: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	125
	
l3585:	
;C_PuertoSerial_usart.c: 125: ((RD6=1),(RD6=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	
l3587:	
	bcf	(70/8),(70)&7
	line	126
	
l3589:	
;C_PuertoSerial_usart.c: 126: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	127
	
l3591:	
;C_PuertoSerial_usart.c: 127: ((RD6=1),(RD6=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	
l3593:	
	bcf	(70/8),(70)&7
	line	128
	
l3595:	
;C_PuertoSerial_usart.c: 128: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	129
	
l3597:	
;C_PuertoSerial_usart.c: 129: PORTD=2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	130
	
l3599:	
;C_PuertoSerial_usart.c: 130: ((RD6=1),(RD6=0));
	bsf	(70/8),(70)&7
	
l3601:	
	bcf	(70/8),(70)&7
	line	132
	
l3603:	
;C_PuertoSerial_usart.c: 132: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	133
	
l3605:	
;C_PuertoSerial_usart.c: 133: lcd_write(0xC);
	movlw	(0Ch)
	fcall	_lcd_write
	line	134
	
l3607:	
;C_PuertoSerial_usart.c: 134: lcd_clear();
	fcall	_lcd_clear
	line	135
	
l3609:	
;C_PuertoSerial_usart.c: 135: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	138
	
l3611:	
;C_PuertoSerial_usart.c: 138: TRISC7=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	139
	
l3613:	
;C_PuertoSerial_usart.c: 139: TRISC6=0;
	bcf	(1086/8)^080h,(1086)&7
	line	140
	
l3615:	
;C_PuertoSerial_usart.c: 140: OSCCON=0x70;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	141
	
l3617:	
;C_PuertoSerial_usart.c: 141: SPBRG=12;
	movlw	(0Ch)
	movwf	(153)^080h	;volatile
	line	142
	
l3619:	
;C_PuertoSerial_usart.c: 142: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	143
	
l3621:	
;C_PuertoSerial_usart.c: 143: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	144
	
l3623:	
;C_PuertoSerial_usart.c: 144: BAUDCTL=0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	145
	
l3625:	
;C_PuertoSerial_usart.c: 145: pause(500);
	movlw	low(01F4h)
	movwf	(?_pause)
	movlw	high(01F4h)
	movwf	((?_pause))+1
	fcall	_pause
	line	149
	
l3627:	
;C_PuertoSerial_usart.c: 153: char char_recibido;
;C_PuertoSerial_usart.c: 154: char char_pwm;
;C_PuertoSerial_usart.c: 155: char buffer[15];
;C_PuertoSerial_usart.c: 157: int entrada = 0;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)
	line	160
	
l3629:	
;C_PuertoSerial_usart.c: 160: CCPR1L = 0x80;
	movlw	(080h)
	movwf	(21)	;volatile
	line	161
	
l3631:	
;C_PuertoSerial_usart.c: 161: CCP1CON = 0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	163
	
l3633:	
;C_PuertoSerial_usart.c: 163: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	165
	
l3635:	
	line	170
	
l3637:	
;C_PuertoSerial_usart.c: 170: for(int i=48; i<58; i++){
	movlw	030h
	movwf	(main@i)
	clrf	(main@i+1)
	line	171
	
l3643:	
;C_PuertoSerial_usart.c: 171: putch(i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	fcall	_putch
	line	172
;C_PuertoSerial_usart.c: 172: pause(20);
	movlw	014h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	170
	
l3645:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(main@i),f
	skipnz
	incf	(main@i+1),f
	
l3647:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u1135
	movlw	low(03Ah)
	subwf	(main@i),w
u1135:

	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l3643
u1130:
	line	174
	
l3649:	
;C_PuertoSerial_usart.c: 173: }
;C_PuertoSerial_usart.c: 174: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	175
;C_PuertoSerial_usart.c: 175: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	177
	
l3651:	
;C_PuertoSerial_usart.c: 177: for(int i=97; i<123; i++){
	movlw	061h
	movwf	(main@i_1832)
	clrf	(main@i_1832+1)
	line	178
	
l3657:	
;C_PuertoSerial_usart.c: 178: putch(i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i_1832),w
	fcall	_putch
	line	179
;C_PuertoSerial_usart.c: 179: pause(20);
	movlw	014h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	177
	
l3659:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(main@i_1832),f
	skipnz
	incf	(main@i_1832+1),f
	
l3661:	
	movf	(main@i_1832+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u1145
	movlw	low(07Bh)
	subwf	(main@i_1832),w
u1145:

	skipc
	goto	u1141
	goto	u1140
u1141:
	goto	l3657
u1140:
	line	181
	
l3663:	
;C_PuertoSerial_usart.c: 180: }
;C_PuertoSerial_usart.c: 181: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	182
;C_PuertoSerial_usart.c: 182: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	184
;C_PuertoSerial_usart.c: 184: pause(1000);
	movlw	low(03E8h)
	movwf	(?_pause)
	movlw	high(03E8h)
	movwf	((?_pause))+1
	fcall	_pause
	line	189
	
l3665:	
;C_PuertoSerial_usart.c: 189: gets_Serial(&buffer);
	movlw	(main@buffer)&0ffh
	fcall	_gets_Serial
	line	194
	
l3667:	
;C_PuertoSerial_usart.c: 192: int val;
;C_PuertoSerial_usart.c: 194: lcd_clear();
	fcall	_lcd_clear
	line	196
	
l3669:	
;C_PuertoSerial_usart.c: 196: ADCON0=0xD5;
	movlw	(0D5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	197
	
l3671:	
;C_PuertoSerial_usart.c: 197: GO_DONE = 1;
	bsf	(249/8),(249)&7
	line	198
;C_PuertoSerial_usart.c: 198: while (GO_DONE ==1);
	
l1092:	
	btfsc	(249/8),(249)&7
	goto	u1151
	goto	u1150
u1151:
	goto	l1092
u1150:
	line	199
	
l3673:	
;C_PuertoSerial_usart.c: 199: nin=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	movwf	(_nin)
	clrf	(_nin+1)
	
l3675:	
	clrc
	rlf	(_nin),f
	rlf	(_nin+1),f
	clrc
	rlf	(_nin),f
	rlf	(_nin+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movlw	06h
u1165:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u1165
	movf	0+(??_main+0)+0,w
	iorwf	(_nin),f
	line	202
	
l3677:	
;C_PuertoSerial_usart.c: 203: int num_f = 255;
	movlw	0x28
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	movf	(_nin+1),w
	movwf	(?___awtoft+1)
	movf	(_nin),w
	movwf	(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	line	205
	
l3679:	
;C_PuertoSerial_usart.c: 205: sprintf(buffer,"ADC es:%i  ", nin);
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(_nin+1),w
	movwf	1+(?_sprintf)+01h
	movf	(_nin),w
	movwf	0+(?_sprintf)+01h
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	208
	
l3681:	
;C_PuertoSerial_usart.c: 208: for (char x = 0; x<17; x++)
	clrf	(main@x)
	line	210
	
l3687:	
;C_PuertoSerial_usart.c: 209: {
;C_PuertoSerial_usart.c: 210: putch (buffer[x]);
	movf	(main@x),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	208
	
l3689:	
	incf	(main@x),f
	
l3691:	
	movlw	(011h)
	subwf	(main@x),w
	skipc
	goto	u1171
	goto	u1170
u1171:
	goto	l3687
u1170:
	line	212
	
l3693:	
;C_PuertoSerial_usart.c: 211: }
;C_PuertoSerial_usart.c: 212: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	214
;C_PuertoSerial_usart.c: 214: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	215
;C_PuertoSerial_usart.c: 215: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	220
	
l3695:	
;C_PuertoSerial_usart.c: 220: sprintf(buffer,"PORTA es:%d ", PORTA);
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(5),w	;volatile
	movwf	0+(?_sprintf)+01h
	clrf	1+(?_sprintf)+01h
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	223
	
l3697:	
;C_PuertoSerial_usart.c: 223: for (char x = 0; x<12; x++)
	clrf	(main@x_1838)
	line	225
	
l3703:	
;C_PuertoSerial_usart.c: 224: {
;C_PuertoSerial_usart.c: 225: putch (buffer[x]);
	movf	(main@x_1838),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	223
	
l3705:	
	incf	(main@x_1838),f
	
l3707:	
	movlw	(0Ch)
	subwf	(main@x_1838),w
	skipc
	goto	u1181
	goto	u1180
u1181:
	goto	l3703
u1180:
	line	227
	
l3709:	
;C_PuertoSerial_usart.c: 226: }
;C_PuertoSerial_usart.c: 227: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	229
;C_PuertoSerial_usart.c: 229: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	230
;C_PuertoSerial_usart.c: 230: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	235
	
l3711:	
;C_PuertoSerial_usart.c: 235: gets_Serial(&input);
	movlw	(_input)&0ffh
	fcall	_gets_Serial
	line	237
	
l3713:	
;C_PuertoSerial_usart.c: 237: sprintf(buffer,"PORTB: %s  ", input);
	movlw	((STR_3-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	movlw	(_input)&0ffh
	movwf	(0+?_sprintf+01h)
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	240
	
l3715:	
;C_PuertoSerial_usart.c: 240: for (char x = 0; x<15; x++)
	clrf	(main@x_1840)
	line	242
	
l3721:	
;C_PuertoSerial_usart.c: 241: {
;C_PuertoSerial_usart.c: 242: putch (buffer[x]);
	movf	(main@x_1840),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	240
	
l3723:	
	incf	(main@x_1840),f
	
l3725:	
	movlw	(0Fh)
	subwf	(main@x_1840),w
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l3721
u1190:
	line	244
	
l3727:	
;C_PuertoSerial_usart.c: 243: }
;C_PuertoSerial_usart.c: 244: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	246
;C_PuertoSerial_usart.c: 246: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	247
;C_PuertoSerial_usart.c: 247: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	251
	
l3729:	
;C_PuertoSerial_usart.c: 251: PORTB = atoi(input);
	movlw	(_input)&0ffh
	fcall	_atoi
	movf	(0+(?_atoi)),w
	movwf	(6)	;volatile
	line	256
	
l3731:	
;C_PuertoSerial_usart.c: 256: gets_Serial(&input);
	movlw	(_input)&0ffh
	fcall	_gets_Serial
	line	258
	
l3733:	
;C_PuertoSerial_usart.c: 258: sprintf(buffer,"PWM es: %s ", input);
	movlw	((STR_4-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	movlw	(_input)&0ffh
	movwf	(0+?_sprintf+01h)
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	261
	
l3735:	
;C_PuertoSerial_usart.c: 261: for (char x = 0; x<15; x++)
	clrf	(main@x_1842)
	line	263
	
l3741:	
;C_PuertoSerial_usart.c: 262: {
;C_PuertoSerial_usart.c: 263: putch (buffer[x]);
	movf	(main@x_1842),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	261
	
l3743:	
	incf	(main@x_1842),f
	
l3745:	
	movlw	(0Fh)
	subwf	(main@x_1842),w
	skipc
	goto	u1201
	goto	u1200
u1201:
	goto	l3741
u1200:
	line	265
	
l3747:	
;C_PuertoSerial_usart.c: 264: }
;C_PuertoSerial_usart.c: 265: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	267
;C_PuertoSerial_usart.c: 267: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	268
;C_PuertoSerial_usart.c: 268: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	270
	
l3749:	
;C_PuertoSerial_usart.c: 270: pwm_1 = atoi(input);
	movlw	(_input)&0ffh
	fcall	_atoi
	movf	(1+(?_atoi)),w
	movwf	(main@pwm_1+1)
	movf	(0+(?_atoi)),w
	movwf	(main@pwm_1)
	line	275
	
l3751:	
;C_PuertoSerial_usart.c: 275: CCPR1L = (pwm_1>>2) & 0xFF;
	movf	(main@pwm_1+1),w
	movwf	(??_main+0)+0+1
	movf	(main@pwm_1),w
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	clrc
	rrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	movwf	(21)	;volatile
	line	276
	
l3753:	
;C_PuertoSerial_usart.c: 276: CCP1CON = 0x0C|((pwm_1 & 0x03)<<4);
	swapf	(main@pwm_1),w
	andlw	03h shl 4
	iorlw	0Ch
	movwf	(23)	;volatile
	line	278
	
l3755:	
;C_PuertoSerial_usart.c: 278: pause(1000);
	movlw	low(03E8h)
	movwf	(?_pause)
	movlw	high(03E8h)
	movwf	((?_pause))+1
	fcall	_pause
	line	281
	
l3757:	
;C_PuertoSerial_usart.c: 281: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	282
	
l3759:	
;C_PuertoSerial_usart.c: 282: lcd_puts("hOLA");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_lcd_puts
	line	283
;C_PuertoSerial_usart.c: 283: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	284
	
l3761:	
;C_PuertoSerial_usart.c: 284: lcd_puts(val);
	movf	(main@val),w
	fcall	_lcd_puts
	line	286
	
l3763:	
;C_PuertoSerial_usart.c: 286: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	288
	
l3765:	
;C_PuertoSerial_usart.c: 288: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	289
	
l3767:	
;C_PuertoSerial_usart.c: 289: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	goto	l3667
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	292
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_goto
psect	text353,local,class=CODE,delta=2
global __ptext353
__ptext353:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 89 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text353
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	89
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	90
	
l3543:	
;C_PuertoSerial_usart.c: 90: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	line	91
	
l3545:	
;C_PuertoSerial_usart.c: 91: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	92
	
l1084:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_puts
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 76 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> ROM(8192), STR_5(5), 
;; Auto vars:     Size  Location     Type
;;  s               1    5[COMMON] PTR const unsigned char 
;;		 -> ROM(8192), STR_5(5), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
psect	text354
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	76
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	movwf	(lcd_puts@s)
	line	77
	
l3535:	
;C_PuertoSerial_usart.c: 77: RD7=1;
	bsf	(71/8),(71)&7
	line	78
;C_PuertoSerial_usart.c: 78: while(*s)
	goto	l3541
	line	79
	
l3537:	
;C_PuertoSerial_usart.c: 79: lcd_write(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_write
	
l3539:	
	incf	(lcd_puts@s),f
	line	78
	
l3541:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u1121
	goto	u1120
u1121:
	goto	l3537
u1120:
	line	80
	
l1078:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 69 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;;		_pause
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text355
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	69
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	70
	
l3531:	
;C_PuertoSerial_usart.c: 70: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	line	71
	
l3533:	
;C_PuertoSerial_usart.c: 71: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	72
;C_PuertoSerial_usart.c: 72: pause(2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	73
	
l1072:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_write
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 60 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
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
;;		_lcd_puts
;;		_lcd_goto
;;		_main
;; This function uses a non-reentrant model
;;
psect	text356
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	60
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	61
	
l3517:	
;C_PuertoSerial_usart.c: 61: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	62
	
l3519:	
;C_PuertoSerial_usart.c: 62: PORTD=((c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	63
	
l3521:	
;C_PuertoSerial_usart.c: 63: ((RD6=1),(RD6=0));
	bsf	(70/8),(70)&7
	
l3523:	
	bcf	(70/8),(70)&7
	line	64
	
l3525:	
;C_PuertoSerial_usart.c: 64: PORTD=(c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	65
	
l3527:	
;C_PuertoSerial_usart.c: 65: ((RD6=1),(RD6=0));
	bsf	(70/8),(70)&7
	
l3529:	
	bcf	(70/8),(70)&7
	line	66
	
l1069:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	___awtoft
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text357
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3505:	
	clrf	(___awtoft@sign)
	line	37
	
l3507:	
	btfss	(___awtoft@c+1),7
	goto	u1111
	goto	u1110
u1111:
	goto	l3513
u1110:
	line	38
	
l3509:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l3511:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l3513:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l2306:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   10[BANK0 ] unsigned um
;;  sign            1   14[BANK0 ] unsigned char 
;;  cntr            1   13[BANK0 ] unsigned char 
;;  exp             1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text358
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3449:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u1031
	goto	u1030
u1031:
	goto	l3455
u1030:
	line	57
	
l3451:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2268
	line	58
	
l3455:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l3461
u1040:
	line	59
	
l3457:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2268
	line	60
	
l3461:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l3463:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l3465:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l3467:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l3469:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3471:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3473:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3475:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l3477:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l3479:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1051
	goto	u1050
u1051:
	goto	l3483
u1050:
	line	72
	
l3481:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1061
	addwf	(___ftmul@f3_as_product+1),f
u1061:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1062
	addwf	(___ftmul@f3_as_product+2),f
u1062:

	line	73
	
l3483:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l3485:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l3487:	
	decfsz	(___ftmul@cntr),f
	goto	u1071
	goto	u1070
u1071:
	goto	l3479
u1070:
	line	76
	
l3489:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l3491:	
	btfss	(___ftmul@f1),(0)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l3495
u1080:
	line	79
	
l3493:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u1091
	addwf	(___ftmul@f3_as_product+1),f
u1091:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u1092
	addwf	(___ftmul@f3_as_product+2),f
u1092:

	line	80
	
l3495:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l3497:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l3499:	
	decfsz	(___ftmul@cntr),f
	goto	u1101
	goto	u1100
u1101:
	goto	l3491
u1100:
	line	83
	
l3501:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	84
	
l2268:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	_atoi
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _atoi *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\atoi.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> input(17), 
;; Auto vars:     Size  Location     Type
;;  s               1   13[COMMON] PTR const unsigned char 
;;		 -> input(17), 
;;  a               2   11[COMMON] int 
;;  sign            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text359
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\atoi.c"
	line	6
	global	__size_of_atoi
	__size_of_atoi	equ	__end_of_atoi-_atoi
	
_atoi:	
	opt	stack 6
; Regs used in _atoi: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;atoi@s stored from wreg
	movwf	(atoi@s)
	line	10
	
l3415:	
	goto	l3419
	line	11
	
l3417:	
	incf	(atoi@s),f
	line	10
	
l3419:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u971
	goto	u970
u971:
	goto	l3417
u970:
	
l3421:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u981
	goto	u980
u981:
	goto	l3417
u980:
	line	12
	
l3423:	
	clrf	(atoi@a)
	clrf	(atoi@a+1)
	line	13
	clrf	(atoi@sign)
	line	14
	
l3425:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u991
	goto	u990
u991:
	goto	l3429
u990:
	line	15
	
l3427:	
	incf	(atoi@sign),f
	line	16
	incf	(atoi@s),f
	line	17
	goto	l3437
	
l3429:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u1001
	goto	u1000
u1001:
	goto	l3437
u1000:
	line	18
	
l3431:	
	incf	(atoi@s),f
	goto	l3437
	line	20
	
l3433:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	(atoi@a+1),w
	movwf	(?___wmul+1)
	movf	(atoi@a),w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	indf,w
	addwf	(0+(?___wmul)),w
	movwf	(??_atoi+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_atoi+0)+0
	movf	0+(??_atoi+0)+0,w
	addlw	low(0FFD0h)
	movwf	(atoi@a)
	movf	1+(??_atoi+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(atoi@a)
	goto	l3431
	line	19
	
l3437:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u1011
	goto	u1010
u1011:
	goto	l3433
u1010:
	line	21
	
l3439:	
	movf	(atoi@sign),w
	skipz
	goto	u1020
	goto	l3445
u1020:
	line	22
	
l3441:	
	comf	(atoi@a),w
	movwf	(??_atoi+0)+0
	comf	(atoi@a+1),w
	movwf	((??_atoi+0)+0+1)
	incf	(??_atoi+0)+0,f
	skipnz
	incf	((??_atoi+0)+0+1),f
	movf	0+(??_atoi+0)+0,w
	movwf	(?_atoi)
	movf	1+(??_atoi+0)+0,w
	movwf	(?_atoi+1)
	goto	l2155
	line	23
	
l3445:	
	movf	(atoi@a+1),w
	movwf	(?_atoi+1)
	movf	(atoi@a),w
	movwf	(?_atoi)
	line	24
	
l2155:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
;; =============== function _atoi ends ============

	signat	_atoi,4218
	global	_sprintf
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@buffer(15), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(12), STR_3(12), STR_2(13), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  sp              1    6[BANK0 ] PTR unsigned char 
;;		 -> main@buffer(15), 
;;  _val            4    7[BANK0 ] struct .
;;  c               1   11[BANK0 ] char 
;;  ap              1    5[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  prec            1    4[BANK0 ] char 
;;  flag            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2      12       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text360
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 6
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	movwf	(sprintf@sp)
	
l3343:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	540
	goto	l3409
	line	542
	
l3345:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u881
	goto	u880
u881:
	goto	l3351
u880:
	line	545
	
l3347:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3349:	
	incf	(sprintf@sp),f
	line	546
	goto	l3409
	line	552
	
l3351:	
	clrf	(sprintf@flag)
	line	638
	goto	l3369
	line	737
	
l3353:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	movlw	(0x0/2)
	movwf	(sprintf@_val+1)
	
l3355:	
	incf	(sprintf@ap),f
	line	743
	
l3357:	
	movf	((sprintf@_val+1)),w
	iorwf	((sprintf@_val)),w
	skipz
	goto	u891
	goto	u890
u891:
	goto	l1147
u890:
	line	744
	
l3359:	
	movlw	low((STR_6-__stringbase))
	movwf	(sprintf@_val)
	movlw	80h
	movwf	(sprintf@_val+1)
	goto	l1147
	line	781
	
l3361:	
	movf	(sprintf@_val+1),w
	movwf	btemp+1
	movf	(sprintf@_val),w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3363:	
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	
l3365:	
	incf	(sprintf@sp),f
	
l1147:	
	line	780
	movf	(sprintf@_val+1),w
	movwf	btemp+1
	movf	(sprintf@_val),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u901
	goto	u900
u901:
	goto	l3361
u900:
	goto	l3409
	line	638
	
l3369:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 115
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
; rangetable           120     6 (fixed)
; spacedrange          238     9 (fixed)
; locatedrange         116     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3411
	xorlw	100^0	; case 100
	skipnz
	goto	l3371
	xorlw	105^100	; case 105
	skipnz
	goto	l3371
	xorlw	115^105	; case 115
	skipnz
	goto	l3353
	goto	l3409
	opt asmopt_on

	line	1254
	
l3371:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l3373:	
	incf	(sprintf@ap),f
	incf	(sprintf@ap),f
	line	1256
	
l3375:	
	btfss	(sprintf@_val+1),7
	goto	u911
	goto	u910
u911:
	goto	l3381
u910:
	line	1257
	
l3377:	
	movlw	(03h)
	iorwf	(sprintf@flag),f
	line	1258
	
l3379:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	line	1300
	
l3381:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1301
	
l3385:	
	clrc
	rlf	(sprintf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	fcall	stringdir
	movwf	(??_sprintf+0)+0+1
	movf	1+(??_sprintf+0)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u925
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@_val),w
u925:
	skipnc
	goto	u921
	goto	u920
u921:
	goto	l3389
u920:
	goto	l3393
	line	1300
	
l3389:	
	incf	(sprintf@c),f
	
l3391:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u931
	goto	u930
u931:
	goto	l3385
u930:
	line	1433
	
l3393:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u941
	goto	u940
u941:
	goto	l3399
u940:
	line	1434
	
l3395:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3397:	
	incf	(sprintf@sp),f
	line	1467
	
l3399:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1469
	goto	l3407
	line	1484
	
l3401:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(sprintf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(sprintf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(sprintf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(sprintf@c)
	line	1516
	
l3403:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3405:	
	incf	(sprintf@sp),f
	line	1469
	
l3407:	
	decf	(sprintf@prec),f
	incf	((sprintf@prec)),w
	skipz
	goto	u951
	goto	u950
u951:
	goto	l3401
u950:
	line	540
	
l3409:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u961
	goto	u960
u961:
	goto	l3345
u960:
	line	1530
	
l3411:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1160:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_gets_Serial
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function _gets_Serial *****************
;; Defined at:
;;		line 307 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR unsigned char 
;;		 -> input(17), main@buffer(15), 
;; Auto vars:     Size  Location     Type
;;  s               1    1[COMMON] PTR unsigned char 
;;		 -> input(17), main@buffer(15), 
;;  c               1    6[COMMON] unsigned char 
;;  i               2    4[COMMON] int 
;;  i               2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_getch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text361
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	307
	global	__size_of_gets_Serial
	__size_of_gets_Serial	equ	__end_of_gets_Serial-_gets_Serial
	
_gets_Serial:	
	opt	stack 6
; Regs used in _gets_Serial: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;gets_Serial@s stored from wreg
	line	309
	movwf	(gets_Serial@s)
	
l3313:	
;C_PuertoSerial_usart.c: 309: for(int i=0; i<=16; i++) *(s+i)=0;
	clrf	(gets_Serial@i)
	clrf	(gets_Serial@i+1)
	
l3319:	
	movf	(gets_Serial@i),w
	addwf	(gets_Serial@s),w
	movwf	(??_gets_Serial+0)+0
	movf	0+(??_gets_Serial+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	
l3321:	
	incf	(gets_Serial@i),f
	skipnz
	incf	(gets_Serial@i+1),f
	
l3323:	
	movf	(gets_Serial@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(011h))^80h
	subwf	btemp+1,w
	skipz
	goto	u845
	movlw	low(011h)
	subwf	(gets_Serial@i),w
u845:

	skipc
	goto	u841
	goto	u840
u841:
	goto	l3319
u840:
	line	310
	
l3325:	
;C_PuertoSerial_usart.c: 310: for(int i=0; i<16; i++){
	clrf	(gets_Serial@i_1851)
	clrf	(gets_Serial@i_1851+1)
	line	311
	
l3331:	
;C_PuertoSerial_usart.c: 311: char c=getch();
	fcall	_getch
	movwf	(gets_Serial@c)
	line	313
	
l3333:	
;C_PuertoSerial_usart.c: 313: if(c==10 | c==13) break;
	movf	(gets_Serial@c),w
	xorlw	0Ah
	skipnz
	goto	u851
	goto	u850
u851:
	goto	l1127
u850:
	
l3335:	
	movf	(gets_Serial@c),w
	xorlw	0Dh
	skipz
	goto	u861
	goto	u860
u861:
	goto	l3337
u860:
	goto	l1127
	line	314
	
l3337:	
;C_PuertoSerial_usart.c: 314: *(s+i)=c;
	movf	(gets_Serial@i_1851),w
	addwf	(gets_Serial@s),w
	movwf	(??_gets_Serial+0)+0
	movf	0+(??_gets_Serial+0)+0,w
	movwf	fsr0
	movf	(gets_Serial@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	310
	
l3339:	
	incf	(gets_Serial@i_1851),f
	skipnz
	incf	(gets_Serial@i_1851+1),f
	
l3341:	
	movf	(gets_Serial@i_1851+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u875
	movlw	low(010h)
	subwf	(gets_Serial@i_1851),w
u875:

	skipc
	goto	u871
	goto	u870
u871:
	goto	l3331
u870:
	line	317
	
l1127:	
	return
	opt stack 0
GLOBAL	__end_of_gets_Serial
	__end_of_gets_Serial:
;; =============== function _gets_Serial ends ============

	signat	_gets_Serial,4216
	global	_pause
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

;; *************** function _pause *****************
;; Defined at:
;;		line 21 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
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
psect	text362
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	21
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 4
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l3305:	
;C_PuertoSerial_usart.c: 22: for (unsigned short x=0; x<=msvalue; x++) msecbase();
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l3311
	
l3307:	
	fcall	_msecbase
	
l3309:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l3311:	
	movf	(pause@x+1),w
	subwf	(pause@msvalue+1),w
	skipz
	goto	u835
	movf	(pause@x),w
	subwf	(pause@msvalue),w
u835:
	skipnc
	goto	u831
	goto	u830
u831:
	goto	l3307
u830:
	line	23
	
l1066:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___ftpack
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftmul
;;		___awtoft
;; This function uses a non-reentrant model
;;
psect	text363
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3277:	
	movf	(___ftpack@exp),w
	skipz
	goto	u760
	goto	l3281
u760:
	
l3279:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u771
	goto	u770
u771:
	goto	l3287
u770:
	line	65
	
l3281:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2504
	line	67
	
l3285:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l3287:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u781
	goto	u780
u781:
	goto	l3285
u780:
	goto	l3291
	line	71
	
l3289:	
	incf	(___ftpack@exp),f
	line	72
	incf	(___ftpack@arg),f
	skipnz
	incf	(___ftpack@arg+1),f
	skipnz
	incf	(___ftpack@arg+2),f
	line	73
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	70
	
l3291:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u791
	goto	u790
u791:
	goto	l3289
u790:
	goto	l3295
	line	76
	
l3293:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l3295:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u801
	goto	u800
u801:
	goto	l3293
u800:
	
l2513:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u811
	goto	u810
u811:
	goto	l2514
u810:
	line	80
	
l3297:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2514:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l3299:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0+2)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+0)
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l3301:	
	movf	(___ftpack@sign),w
	skipz
	goto	u820
	goto	l2515
u820:
	line	84
	
l3303:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2515:	
	line	85
	line	86
	
l2504:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] unsigned int 
;;  dividend        2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text364
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3257:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u721
	goto	u720
u721:
	goto	l3273
u720:
	line	9
	
l3259:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3263
	line	11
	
l3261:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3263:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u731
	goto	u730
u731:
	goto	l3261
u730:
	line	15
	
l3265:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u745
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u745:
	skipc
	goto	u741
	goto	u740
u741:
	goto	l3269
u740:
	line	16
	
l3267:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3269:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3271:	
	decfsz	(___lwmod@counter),f
	goto	u751
	goto	u750
u751:
	goto	l3265
u750:
	line	20
	
l3273:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2192:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

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
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text365
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3231:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3233:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u681
	goto	u680
u681:
	goto	l3253
u680:
	line	11
	
l3235:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3239
	line	13
	
l3237:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3239:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u691
	goto	u690
u691:
	goto	l3237
u690:
	line	17
	
l3241:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3243:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u705
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u705:
	skipc
	goto	u701
	goto	u700
u701:
	goto	l3249
u700:
	line	19
	
l3245:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3247:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3249:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3251:	
	decfsz	(___lwdiv@counter),f
	goto	u711
	goto	u710
u711:
	goto	l3241
u710:
	line	25
	
l3253:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2182:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

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
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
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
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text366
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3215:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3217:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u661
	goto	u660
u661:
	goto	l3221
u660:
	line	8
	
l3219:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3221:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3223:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3225:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u671
	goto	u670
u671:
	goto	l3217
u670:
	line	12
	
l3227:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2172:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_atoi
;; This function uses a non-reentrant model
;;
psect	text367
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l3203:	
	clrf	(_isdigit$2400)
	
l3205:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u641
	goto	u640
u641:
	goto	l3211
u640:
	
l3207:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u651
	goto	u650
u651:
	goto	l3211
u650:
	
l3209:	
	clrf	(_isdigit$2400)
	incf	(_isdigit$2400),f
	
l3211:	
	rrf	(_isdigit$2400),w
	
	line	15
	
l2160:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_getch
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:

;; *************** function _getch *****************
;; Defined at:
;;		line 302 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
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
;;		_gets_Serial
;; This function uses a non-reentrant model
;;
psect	text368
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	302
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 6
; Regs used in _getch: [wreg]
	line	303
	
l3197:	
;C_PuertoSerial_usart.c: 303: while(!RCIF) continue;
	
l1114:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u631
	goto	u630
u631:
	goto	l1114
u630:
	line	304
	
l3199:	
;C_PuertoSerial_usart.c: 304: return RCREG;
	movf	(26),w	;volatile
	line	305
	
l1117:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text369,local,class=CODE,delta=2
global __ptext369
__ptext369:

;; *************** function _putch *****************
;; Defined at:
;;		line 296 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
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
psect	text369
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	296
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 7
; Regs used in _putch: [wreg]
;putch@dato stored from wreg
	movwf	(putch@dato)
	line	297
	
l3193:	
;C_PuertoSerial_usart.c: 297: while(!TXIF) continue;
	
l1108:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u621
	goto	u620
u621:
	goto	l1108
u620:
	line	298
	
l3195:	
;C_PuertoSerial_usart.c: 298: TXREG=dato;
	movf	(putch@dato),w
	movwf	(25)	;volatile
	line	299
	
l1111:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_msecbase
psect	text370,local,class=CODE,delta=2
global __ptext370
__ptext370:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 12 in file "C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
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
psect	text370
	file	"C:\Users\petir\Documents\PIC_PROG\C_PuertoSerial\C_PuertoSerial_usart.c"
	line	12
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 4
; Regs used in _msecbase: [wreg]
	line	15
	
l3191:	
;C_PuertoSerial_usart.c: 15: OPTION_REG = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	16
;C_PuertoSerial_usart.c: 16: TMR0 = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	17
;C_PuertoSerial_usart.c: 17: while(!T0IF);
	
l1057:	
	btfss	(90/8),(90)&7
	goto	u611
	goto	u610
u611:
	goto	l1057
u610:
	
l1059:	
	line	18
;C_PuertoSerial_usart.c: 18: T0IF = 0;
	bcf	(90/8),(90)&7
	line	19
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
psect	text371,local,class=CODE,delta=2
global __ptext371
__ptext371:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
