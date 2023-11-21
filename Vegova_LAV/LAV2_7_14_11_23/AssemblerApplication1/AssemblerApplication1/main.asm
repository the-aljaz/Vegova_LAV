	.org 0x0000

start:
	call dly_20_cycl




start_16bit_LSR:
	ldi ZL, LOW (0xFFEE)
	ldi ZH, HIGH (0xFFEE)
	jmp pomik_16bit_stevila_v_desno

start_deljenje:
	ldi r17, 0x07
	sts 0x0220, r17
	jmp deljenje_s4


menjava_registrov:
	ldi r18, 0xF1
	ldi r20, 0x1F

	push r18
	push r20
	pop r18
	pop r20


deljenje_s4:
	lds r16, 0x0220
	lsr r16
	lsr r16


pomik_16bit_stevila_v_desno:
	lsr R30
	lsr R31

dly_20_cycl:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret



loop:
	jmp loop