	.org 0x0000
	jmp start

	.org 0x0034
start:
    // išèemo niz znakov, ki opisuje dan v tednu
	// 0 = pon, 6 = ned
	ldi r16,4
	ldi ZL, LOW (dnevi_v_tednu)   // tukaj je naslov spiska, kje so imena
	ldi ZH, HIGH(dnevi_v_tednu)	// tam je tudi naslov ponedeljka
	
	//prištejemo k Z-ju kateri dan rabimo 
	clr r17
	add ZL, r16
	adc ZH, r17
	// množimo Z z 2
	lsl ZL
	rol ZH
	// imamo naslov, kjer je notri naslov imena dneva
	
	// naložimo naslov v X
	lpm XL, Z+
	lpm XH, Z+
	// prekopiramo X v Z, ker LPM dela samo z registrom Z
	mov ZL, XL
	mov ZH, XH

naslednja_crka:
	lpm r16, Z+ // load value from program space
	and r16, r16
	brne naslednja_crka

loop:
    rjmp loop

send_char:
	nop
	nop
	ret

	.org 0x01FF
msg1:
	.db "Press <ENTER> to continue!",0x00
msg2:
	.db "Press any key to continue or any other key to quit!",0
msg3:
	.db "Keyboard missing. Press <F1> to continue!",0
music:
	.db 0,2,4,5

sporocila:
	.dw msg1*2
	.dw msg2*2
	.dw msg3*2

pon:	.db "Ponedeljek",0
tor:	.db "Torek",0
sre:	.db "Sreda",0
cet:	.db "Cetrtek",0
pet:	.db "Petek",0
sob:	.db "Sobota",0
ned:	.db "Nedelja",0

dnevi_v_tednu:
		.dw pon*2, tor*2, sre*2, cet*2, pet*2, sob*2, ned*2