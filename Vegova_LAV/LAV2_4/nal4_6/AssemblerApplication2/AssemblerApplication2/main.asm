.org 0x0000		; prvi naslednji ukaz bo na naslovu 0000
rjmp start		; skoèi na mesto start ( = 0050 )
.org 0x0050
start:
	ldi  ZH, 0x01		; v register Z naložimo vrednost 0100
	ldi  ZL, 0x50

;	ldi  r16, 0xFF
	ldi  r17, 0x2F
	st z, r17

loop:
	st   -Z, r17
	dec  r17
	brne loop		; ponovno skoèi na naslov loop, èe je r17 postal 0
		
sestevanje:
	lds 



forever:
		rjmp forever








;NOT DONE