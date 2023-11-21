// NALOGA 1: PROGRAM IZ NIZA ZNAKOV IZRAÈUNA 16-bitno ŠTEVILO
    .org 0x0000
reset: rjmp start
	


start:
	ldi ZL, LOW  (stevilo * 2)
	ldi ZH, HIGH (stevilo * 2)
	call str2_16bit
	nop
loop:	 
	rjmp loop

	// podprogram dobi naslov niza s (16-bitnim) številom v Z
	// vrne 16-bitno stevilo, prav tako v registru X
	// ne kvari ostalih registrov
str2_16bit: 
	clr XL
	clr XH
beremo_znak:    // iz programskega pomnilnika poberemo znak
	lpm r16, Z+ // in pogledamo, èe smo prispeli do konca niza
	cpi r16, 0  // takrat bo Z
	breq konec_branja  // èe je Z, gremo ven iz podprograma
	call mnozi_X_z_10  // sicer pa množimo z 10 in prištejemo še vrednost števke
	andi r16,0x0F  // olupimo ASCII stevko, da dobimo njeno binarno vrednost
	// r16 prištejemo k X
	add XL, r16
	brcc ni_prenosa
	inc XH
ni_prenosa:
	rjmp beremo_znak
konec_branja: 
	ret

	// 16-bitno množenje z 10
mnozi_X_z_10:
    push r16
    ldi r16, 10   // deset (po desetiško)
	mul r16, XL    // mnozili bomo 10 in ZL, rezultat bo v R1:R0
	mov XL, r0    // nizka vrednost je ok
	push r1
	mul r16, XH
	mov XH, r0
	pop r1
	add XH, r1
	
	pop r16
	ret

stevilo:
	.db "65535",0
