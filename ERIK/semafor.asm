    .org 0x0000
rjmp reset
reset: rjmp reset

setup:
    
    sbi ddrb, 5


delovanje:
    call all_on
    call delay
    call all_off
    call delay

    rjmp delovanje

    
    
    
all_on:
    sbi PORTB, 5
    sbi PORTB, 4
    sbi PORTB, 3
    sbi PORTB, 2
    sbi PORTB, 1
    ret
    
all_off:
    cbi PORTB, 5
    cbi PORTB, 4
    cbi PORTB, 3
    cbi PORTB, 2
    cbi PORTB, 1
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

avto_green:
    cbi PORTB, 5
    cbi PORTB, 4
    cbi PORTB, 3
    ret

pes_red:
    sbi PORTB, 2
    cbi PORTB, 1
    ret


pes_green:
    cbi PORTB, 2
    sbi PORTB, 1
    ret
    
delay:
    ldi r21, 125
    ldi r22, 200
    delay1:
        delay2:
            nop
            dec r21
            brne delay2
        dec r22
        brne delay1
    ret
    ret
