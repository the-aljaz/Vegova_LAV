	.org 0X0000

reset: rjmp setup

setup:
//	in r16, DDRB			// v r16 damo kako je konfiguriran PORTB, 1 so 1zhodi
//	ori r16, 0b0010_0000	// prižgemo še 5 bit da bo PORTB.5 kjer je LED, izhod
//	out DDRB, r16			// vpišemo nazaj novo konfiguracijo
	sbi DDRB, 5				// vpiši 1 v 5. bit regiostra DDRB



	in r16, PORTB
///	ori r16, 0b0010_0000	//prižgemo 5 bit
	andi r16, 0b1101_1111	//ugasnemo 5 bit
	out PORTB, r16







loop:


	sbi PORTB, 5
	nop
	nop
	nop
	nop
	nop
	nop

	//nop






	cbi PORTB, 5
	rjmp loop




	rjmp loop