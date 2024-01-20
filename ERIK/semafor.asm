	.org 0x0000
	jmp setup

setup:
    ldi r16, 0x00
    sbi DDRB, 5								;Nastavimo rdeco avto luc na output
    sbi DDRB, 4								;Nastavimo rumeno avto luc na output
    sbi DDRB, 3								;Nastavimo zeleno avto luc na output
    sbi DDRB, 2								;Nastavimo rdeco pes luc na output
    sbi DDRB, 1								;Nastavimo zeleno pes luc na output
	sbi DDRB, 0								;Nastavimo brisalci avto luc na output
	cbi DDRD, 4
	sbi PORTD, 4
	call all_on
	call delay
	call all_off
	call delay
	call all_on
	call delay
	call all_off
	rjmp loop

loop:
	call jes_avto
	call delay
	call delay
	call delay
	call delay
	call delay
	call no_avto
	call delay
	call delay
	call delay
	call delay
	call delay
	call catalan_mode
	call delay
	call delay
	call delay
	call delay
	call delay
	call all_off
	call delay
	call delay
	call delay
	call delay
	call delay

	rjmp loop

jes_avto:
	call pes_red
	call delay
	call delay
	call delay
	call avto_yellowred
	call delay
	call avto_green
	ret

no_avto:
	call avto_yellow
	call delay
	call avto_red
	call delay
	call delay
	call pes_green
	ret

catalan_mode:
	call avto_red
	call pes_red
	call delay
	call delay
	call delay
	call brisalci
	call pes_green
	call avto_green
	ret

all_on:
    sbi PORTB, 5
    sbi PORTB, 4
    sbi PORTB, 3
    sbi PORTB, 2
    sbi PORTB, 1
    sbi PORTB, 0

    ret
    
all_off:
    cbi PORTB, 5
    cbi PORTB, 4
    cbi PORTB, 3
    cbi PORTB, 2
    cbi PORTB, 1
    cbi PORTB, 0

    ret
    
avto_red:
    sbi PORTB, 5
    cbi PORTB, 4
    cbi PORTB, 3
    ret
    
avto_yellow:
    cbi PORTB, 5
    sbi PORTB, 4
    cbi PORTB, 3
    ret

avto_yellowred:
    sbi PORTB, 5
    sbi PORTB, 4
    cbi PORTB, 3
    ret

avto_green:
    cbi PORTB, 5
    cbi PORTB, 4
    sbi PORTB, 3
    ret

pes_red:
    sbi PORTB, 2
    cbi PORTB, 1
    ret


pes_green:
    cbi PORTB, 2
    sbi PORTB, 1
    ret

brisalci: 
	sbi PORTB, 0
    ret

no_brisalci: 
    cbi PORTB, 0
	ret

delay:
    ldi r20, 20
	ldi r21, 255
    ldi r22, 255
    delay1:
        delay2:
			delay3:
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
				dec r22
				brne delay3
			dec r21
			brne delay2
        dec r20
        brne delay1
    ret

forever: rjmp forever
