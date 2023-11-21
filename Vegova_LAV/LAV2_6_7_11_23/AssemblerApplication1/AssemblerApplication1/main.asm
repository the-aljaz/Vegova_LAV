// program iz niza znakov izraèuna 16 btino število

	.org 0x0000
reset: 
	rjmp start

start:
	ldi ZL, LOW (stevilo* 2)
	ldi ZH, HIGH (stevilo* 2)
	call str2_16bit
	nop

loop:
	rjmp loop
	//podprogram dobi naslov niza s (16 bitnim) številom v Z
	//vrne 16 bitno stevilo, prav tako v registru Z
	//ne kvari ostalih registrov
str2_16bit:
	clr XL
	clr XH

beremo_znak:
	lpm r16, Z+
	cpi r16, 0
	breq konec_branja
	call mnozi_X_z_10
	andi r16,0x0F
	add XL, r16
	brcc ni_prenosa
	inc XH
ni_prenosa:
	rjmp beremo_znak
konec_branja:
	ret

mnozi_X_z_10:
	push r16
	ldi r16, 10
	mul r16, XL
	mov XL, r0
	push r1
	mul r16, XL
	mov XH, r0
	pop r1
	add XH, r1

	pop r16
	ret




stevilo:
	.db "4096", 0