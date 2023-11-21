.org 0x0000		; prvi naslednji ukaz bo na naslovu 0000
rjmp start		; skoèi na mesto start ( = 0050 )
.org 0x0050
start:
	ldi  ZH, 0x01		; v register Z naložimo vrednost 0100
	ldi  ZL, 0x00

	ldi  r16, 0xFF		;to bo nova vsebina s katero bomo popisali pomnilnik
	ldi  r17, 0x10		;koliko bytov, r17 je naš števec, koliko bytov še

loop:
	st   Z+, r16		;na naslov Z v data space vpišemo vrednost iz r16, poveèamo Z za 1
	dec  r17			;zmanjšamo števec
	brne loop			; ne ponovno skoèi na naslov loop, èe je r17 postal 0
	
forever:
	rjmp forever