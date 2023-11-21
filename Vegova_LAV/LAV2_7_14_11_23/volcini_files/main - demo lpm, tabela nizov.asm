	.org 0x0000
	jmp start

	.org 0x0034
start:
    // išèemo, kje je morsejeva koda za èrko C
	ldi ZL, LOW (morse*2)   // tukaj je naslov spiska, kje so morsejeve kode
	ldi ZH, HIGH(morse*2)	// tam je tudi naslov crke A
	
	// prištejemo 4 za to, da dobimo èrko C (ki je 2 èrki naprej od A, 2*2 = 4)
	adiw ZH:ZL,4     // add immediate to word

	// tukaj dobimo naslov èrke C
	lpm XL, Z+
	lpm XH, Z+
	// prekopiramo ga v Z, ker LPM dela samo z registrom Z
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

crka_a:
	.db ".-",0
crka_b:
	.db ".---",0
crka_c:
	.db "-.-.",0
crka_d:
	.db "-..",0

morse:
	.dw crka_a*2
	.dw crka_b*2
	.dw crka_c*2
	.dw crka_d*2


