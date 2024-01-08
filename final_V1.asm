.org 0x0000
jmp setup

setup:
        sbi PORTB, 5
        cbi DDRD, 4
        sbi PORTD, 4


        
        

loop:
	in r23, PIND
	andi r23, 0b0010000

	brne song

	cbi PORTB, 5


	rjmp loop
           
        
song:        
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call A4
    call A4
    call A4
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call A5
    call G5
    call FS5
    call FS5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call B4
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call A4
    call A4
    call A4
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call A5
    call G5
    call FS5
    call FS5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call B4
    call D5
    call D5
    call D5
    call REST
    call REST
    call REST
    call REST
    call B4
    call B4
    call CS5
    call CS5
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call CS5
    call CS5
    call CS5
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call REST
    call REST
    call REST
    call REST
    call REST
    call REST
    call B4
    call B4
    call B4
    call B4
    call CS5
    call CS5
    call D5
    call D5
    call B4
    call B4
    call B4
    call B4
    call A4
    call A4
    call A5
    call A5
    call REST
    call REST
    call A5
    call A5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call REST
    call REST
    call REST
    call REST
    call B4
    call B4
    call B4
    call B4
    call CS5
    call CS5
    call D5
    call D5
    call B4
    call B4
    call D5
    call D5
    call E5
    call E5
    call REST
    call REST
    call REST
    call REST
    call CS5
    call CS5
    call B4
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call REST
    call REST
    call REST
    call REST
    call REST
    call REST
    call B4
    call B4
    call B4
    call B4
    call CS5
    call CS5
    call D5
    call D5
    call B4
    call B4
    call A4
    call A4
    call A4
    call A4
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call REST
    call REST
    call REST
    call REST
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call FS5
    call FS5
    call D5
    call D5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call A4
    call A4
    call A4
    call A4
    call REST
    call REST
    call REST
    call REST
    call REST
    call REST
    call REST
    call REST
    call B4
    call B4
    call CS5
    call CS5
    call D5
    call D5
    call B4
    call B4
    call REST
    call REST
    call E5
    call E5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call B4
    call D5
    call B4
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call B4
    call D5
    call B4
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call D5
    call D5
    call D5
    call CS5
    call B4
    call B4
    call B4
    call A4
    call B4
    call D5
    call B4
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call CS5
    call CS5
    call CS5
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call E5
    call E5
    call E5
    call E5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call A4
    call B4
    call D5
    call B4
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call B4
    call D5
    call B4
    call A5
    call A5
    call A5
    call A5
    call CS5
    call CS5
    call D5
    call D5
    call D5
    call CS5
    call B4
    call B4
    call A4
    call B4
    call D5
    call B4
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call CS5
    call CS5
    call CS5
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call E5
    call E5
    call E5
    call E5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call REST
    call REST
    call REST
    call REST
    call REST
    call REST
    call B4
    call B4
    call D5
    call D5
    call B4
    call B4
    call D5
    call D5
    call E5
    call E5
    call E5
    call E5
    call REST
    call REST
    call REST
    call REST
    call CS5
    call CS5
    call B4
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call REST
    call REST
    call REST
    call REST
    call REST
    call REST
    call B4
    call B4
    call B4
    call B4
    call CS5
    call CS5
    call D5
    call D5
    call B4
    call B4
    call A4
    call A4
    call A4
    call A4
    call REST
    call REST
    call A5
    call A5
    call A5
    call A5
    call E5
    call E5
    call FS5
    call FS5
    call E5
    call E5
    call D5
    call D5
    call REST
    call REST
    call A4
    call A4
    call B4
    call B4
    call CS5
    call CS5
    call D5
    call D5
    call B4
    call B4
    call REST
    call REST
    call CS5
    call CS5
    call B4
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call REST
    call REST
    call REST
    call REST
    call B4
    call B4
    call B4
    call B4
    call CS5
    call CS5
    call D5
    call D5
    call B4
    call B4
    call A4
    call A4
    call A4
    call A4
    call REST
    call REST
    call REST
    call REST
    call E5
    call E5
    call E5
    call E5
    call FS5
    call FS5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call FS5
    call FS5
    call E5
    call E5
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call REST
    call REST
    call REST
    call REST
    call REST
    call REST
    call A4
    call A4
    call B4
    call B4
    call CS5
    call CS5
    call D5
    call D5
    call B4
    call B4
    call REST
    call REST
    call E5
    call E5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call B4
    call D5
    call B4
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call B4
    call D5
    call B4
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call D5
    call D5
    call D5
    call CS5
    call B4
    call B4
    call A4
    call B4
    call D5
    call B4
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call CS5
    call CS5
    call CS5
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call E5
    call E5
    call E5
    call E5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call A4
    call B4
    call D5
    call B4
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call B4
    call D5
    call B4
    call A5
    call A5
    call A5
    call A5
    call CS5
    call CS5
    call D5
    call D5
    call D5
    call CS5
    call B4
    call B4
    call A4
    call B4
    call D5
    call B4
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call CS5
    call CS5
    call CS5
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call E5
    call E5
    call E5
    call E5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call A4
    call B4
    call D5
    call B4
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call B4
    call D5
    call B4
    call A5
    call A5
    call A5
    call A5
    call CS5
    call CS5
    call D5
    call D5
    call D5
    call CS5
    call B4
    call B4
    call A4
    call B4
    call D5
    call B4
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call CS5
    call CS5
    call CS5
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call E5
    call E5
    call E5
    call E5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call A4
    call B4
    call D5
    call B4
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call FS5
    call E5
    call E5
    call E5
    call E5
    call E5
    call E5
    call A4
    call B4
    call D5
    call B4
    call A5
    call A5
    call A5
    call A5
    call CS5
    call CS5
    call D5
    call D5
    call D5
    call CS5
    call B4
    call B4
    call A4
    call B4
    call D5
    call B4
    call D5
    call D5
    call D5
    call D5
    call E5
    call E5
    call CS5
    call CS5
    call CS5
    call B4
    call A4
    call A4
    call A4
    call A4
    call A4
    call A4
    call E5
    call E5
    call E5
    call E5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call D5
    call REST
    call REST
    call REST
    call REST
    ret

forever: rjmp forever

A4:

    ldi r18, 44
    ldi r19, 9

    loopanjeA4:

        ldi r17, 142
        ldi r16, 8
        sbi DDRB, 5

        delayonA4:
            dec r17
            brne delayonA4
            ldi r17, 142
            dec r16
            brne delayonA4

        ldi r17, 142
        ldi r16, 8
        cbi DDRB, 5

        delayoffA4:
            dec r17
            brne delayoffA4
            ldi r17, 142
            dec r16
            brne delayoffA4

    dec r18
    brne loopanjeA4
    ldi r18, 44
    dec r19
    brne loopanjeA4

    ldi r18, 44

    loopanje2A4:

        ldi r17, 142
        ldi r16, 8
        sbi DDRB, 5

        delayon2A4:
            dec r17
            brne delayon2A4
            ldi r17, 142
            dec r16
            brne delayon2A4

        ldi r17, 142
        ldi r16, 8
        cbi DDRB, 5

        delayoff2A4:
            dec r17
            brne delayoff2A4
            ldi r17, 142
            dec r16
            brne delayoff2A4

    dec r18
    brne loopanje2A4
    ret

B4:

    ldi r18, 49
    ldi r19, 9

    loopanjeB4:

        ldi r17, 253
        ldi r16, 4
        sbi DDRB, 5

        delayonB4:
            dec r17
            brne delayonB4
            ldi r17, 253
            dec r16
            brne delayonB4

        ldi r17, 253
        ldi r16, 4
        cbi DDRB, 5

        delayoffB4:
            dec r17
            brne delayoffB4
            ldi r17, 253
            dec r16
            brne delayoffB4

    dec r18
    brne loopanjeB4
    ldi r18, 49
    dec r19
    brne loopanjeB4

    ldi r18, 49

    loopanje2B4:

        ldi r17, 253
        ldi r16, 4
        sbi DDRB, 5

        delayon2B4:
            dec r17
            brne delayon2B4
            ldi r17, 253
            dec r16
            brne delayon2B4

        ldi r17, 253
        ldi r16, 4
        cbi DDRB, 5

        delayoff2B4:
            dec r17
            brne delayoff2B4
            ldi r17, 253
            dec r16
            brne delayoff2B4

    dec r18
    brne loopanje2B4
    ret

C4:

    ldi r18, 26
    ldi r19, 9

    loopanjeC4:

        ldi r17, 238
        ldi r16, 8
        sbi DDRB, 5

        delayonC4:
            dec r17
            brne delayonC4
            ldi r17, 238
            dec r16
            brne delayonC4

        ldi r17, 238
        ldi r16, 8
        cbi DDRB, 5

        delayoffC4:
            dec r17
            brne delayoffC4
            ldi r17, 238
            dec r16
            brne delayoffC4

    dec r18
    brne loopanjeC4
    ldi r18, 26
    dec r19
    brne loopanjeC4

    ldi r18, 26

    loopanje2C4:

        ldi r17, 238
        ldi r16, 8
        sbi DDRB, 5

        delayon2C4:
            dec r17
            brne delayon2C4
            ldi r17, 238
            dec r16
            brne delayon2C4

        ldi r17, 238
        ldi r16, 8
        cbi DDRB, 5

        delayoff2C4:
            dec r17
            brne delayoff2C4
            ldi r17, 238
            dec r16
            brne delayoff2C4

    dec r18
    brne loopanje2C4
    ret

D4:

    ldi r18, 29
    ldi r19, 9

    loopanjeD4:

        ldi r17, 212
        ldi r16, 8
        sbi DDRB, 5

        delayonD4:
            dec r17
            brne delayonD4
            ldi r17, 212
            dec r16
            brne delayonD4

        ldi r17, 212
        ldi r16, 8
        cbi DDRB, 5

        delayoffD4:
            dec r17
            brne delayoffD4
            ldi r17, 212
            dec r16
            brne delayoffD4

    dec r18
    brne loopanjeD4
    ldi r18, 29
    dec r19
    brne loopanjeD4

    ldi r18, 29

    loopanje2D4:

        ldi r17, 212
        ldi r16, 8
        sbi DDRB, 5

        delayon2D4:
            dec r17
            brne delayon2D4
            ldi r17, 212
            dec r16
            brne delayon2D4

        ldi r17, 212
        ldi r16, 8
        cbi DDRB, 5

        delayoff2D4:
            dec r17
            brne delayoff2D4
            ldi r17, 212
            dec r16
            brne delayoff2D4

    dec r18
    brne loopanje2D4
    ret

E4:

    ldi r18, 33
    ldi r19, 9

    loopanjeE4:

        ldi r17, 189
        ldi r16, 8
        sbi DDRB, 5

        delayonE4:
            dec r17
            brne delayonE4
            ldi r17, 189
            dec r16
            brne delayonE4

        ldi r17, 189
        ldi r16, 8
        cbi DDRB, 5

        delayoffE4:
            dec r17
            brne delayoffE4
            ldi r17, 189
            dec r16
            brne delayoffE4

    dec r18
    brne loopanjeE4
    ldi r18, 33
    dec r19
    brne loopanjeE4

    ldi r18, 33

    loopanje2E4:

        ldi r17, 189
        ldi r16, 8
        sbi DDRB, 5

        delayon2E4:
            dec r17
            brne delayon2E4
            ldi r17, 189
            dec r16
            brne delayon2E4

        ldi r17, 189
        ldi r16, 8
        cbi DDRB, 5

        delayoff2E4:
            dec r17
            brne delayoff2E4
            ldi r17, 189
            dec r16
            brne delayoff2E4

    dec r18
    brne loopanje2E4
    ret

F4:

    ldi r18, 34
    ldi r19, 9

    loopanjeF4:

        ldi r17, 179
        ldi r16, 8
        sbi DDRB, 5

        delayonF4:
            dec r17
            brne delayonF4
            ldi r17, 179
            dec r16
            brne delayonF4

        ldi r17, 179
        ldi r16, 8
        cbi DDRB, 5

        delayoffF4:
            dec r17
            brne delayoffF4
            ldi r17, 179
            dec r16
            brne delayoffF4

    dec r18
    brne loopanjeF4
    ldi r18, 34
    dec r19
    brne loopanjeF4

    ldi r18, 34

    loopanje2F4:

        ldi r17, 179
        ldi r16, 8
        sbi DDRB, 5

        delayon2F4:
            dec r17
            brne delayon2F4
            ldi r17, 179
            dec r16
            brne delayon2F4

        ldi r17, 179
        ldi r16, 8
        cbi DDRB, 5

        delayoff2F4:
            dec r17
            brne delayoff2F4
            ldi r17, 179
            dec r16
            brne delayoff2F4

    dec r18
    brne loopanje2F4
    ret

G4:

    ldi r18, 39
    ldi r19, 9

    loopanjeG4:

        ldi r17, 159
        ldi r16, 8
        sbi DDRB, 5

        delayonG4:
            dec r17
            brne delayonG4
            ldi r17, 159
            dec r16
            brne delayonG4

        ldi r17, 159
        ldi r16, 8
        cbi DDRB, 5

        delayoffG4:
            dec r17
            brne delayoffG4
            ldi r17, 159
            dec r16
            brne delayoffG4

    dec r18
    brne loopanjeG4
    ldi r18, 39
    dec r19
    brne loopanjeG4

    ldi r18, 39

    loopanje2G4:

        ldi r17, 159
        ldi r16, 8
        sbi DDRB, 5

        delayon2G4:
            dec r17
            brne delayon2G4
            ldi r17, 159
            dec r16
            brne delayon2G4

        ldi r17, 159
        ldi r16, 8
        cbi DDRB, 5

        delayoff2G4:
            dec r17
            brne delayoff2G4
            ldi r17, 159
            dec r16
            brne delayoff2G4

    dec r18
    brne loopanje2G4
    ret

CS4:

    ldi r18, 27
    ldi r19, 9

    loopanjeCS4:

        ldi r17, 225
        ldi r16, 8
        sbi DDRB, 5

        delayonCS4:
            dec r17
            brne delayonCS4
            ldi r17, 225
            dec r16
            brne delayonCS4

        ldi r17, 225
        ldi r16, 8
        cbi DDRB, 5

        delayoffCS4:
            dec r17
            brne delayoffCS4
            ldi r17, 225
            dec r16
            brne delayoffCS4

    dec r18
    brne loopanjeCS4
    ldi r18, 27
    dec r19
    brne loopanjeCS4

    ldi r18, 27

    loopanje2CS4:

        ldi r17, 225
        ldi r16, 8
        sbi DDRB, 5

        delayon2CS4:
            dec r17
            brne delayon2CS4
            ldi r17, 225
            dec r16
            brne delayon2CS4

        ldi r17, 225
        ldi r16, 8
        cbi DDRB, 5

        delayoff2CS4:
            dec r17
            brne delayoff2CS4
            ldi r17, 225
            dec r16
            brne delayoff2CS4

    dec r18
    brne loopanje2CS4
    ret

FS4:

    ldi r18, 37
    ldi r19, 9

    loopanjeFS4:

        ldi r17, 168
        ldi r16, 8
        sbi DDRB, 5

        delayonFS4:
            dec r17
            brne delayonFS4
            ldi r17, 168
            dec r16
            brne delayonFS4

        ldi r17, 168
        ldi r16, 8
        cbi DDRB, 5

        delayoffFS4:
            dec r17
            brne delayoffFS4
            ldi r17, 168
            dec r16
            brne delayoffFS4

    dec r18
    brne loopanjeFS4
    ldi r18, 37
    dec r19
    brne loopanjeFS4

    ldi r18, 37

    loopanje2FS4:

        ldi r17, 168
        ldi r16, 8
        sbi DDRB, 5

        delayon2FS4:
            dec r17
            brne delayon2FS4
            ldi r17, 168
            dec r16
            brne delayon2FS4

        ldi r17, 168
        ldi r16, 8
        cbi DDRB, 5

        delayoff2FS4:
            dec r17
            brne delayoff2FS4
            ldi r17, 168
            dec r16
            brne delayoff2FS4

    dec r18
    brne loopanje2FS4
    ret

A5:

    ldi r18, 88
    ldi r19, 9

    loopanjeA5:

        ldi r17, 142
        ldi r16, 4
        sbi DDRB, 5

        delayonA5:
            dec r17
            brne delayonA5
            ldi r17, 142
            dec r16
            brne delayonA5

        ldi r17, 142
        ldi r16, 4
        cbi DDRB, 5

        delayoffA5:
            dec r17
            brne delayoffA5
            ldi r17, 142
            dec r16
            brne delayoffA5

    dec r18
    brne loopanjeA5
    ldi r18, 88
    dec r19
    brne loopanjeA5

    ldi r18, 88

    loopanje2A5:

        ldi r17, 142
        ldi r16, 4
        sbi DDRB, 5

        delayon2A5:
            dec r17
            brne delayon2A5
            ldi r17, 142
            dec r16
            brne delayon2A5

        ldi r17, 142
        ldi r16, 4
        cbi DDRB, 5

        delayoff2A5:
            dec r17
            brne delayoff2A5
            ldi r17, 142
            dec r16
            brne delayoff2A5

    dec r18
    brne loopanje2A5
    ret

B5:

    ldi r18, 98
    ldi r19, 9

    loopanjeB5:

        ldi r17, 126
        ldi r16, 4
        sbi DDRB, 5

        delayonB5:
            dec r17
            brne delayonB5
            ldi r17, 126
            dec r16
            brne delayonB5

        ldi r17, 126
        ldi r16, 4
        cbi DDRB, 5

        delayoffB5:
            dec r17
            brne delayoffB5
            ldi r17, 126
            dec r16
            brne delayoffB5

    dec r18
    brne loopanjeB5
    ldi r18, 98
    dec r19
    brne loopanjeB5

    ldi r18, 98

    loopanje2B5:

        ldi r17, 126
        ldi r16, 4
        sbi DDRB, 5

        delayon2B5:
            dec r17
            brne delayon2B5
            ldi r17, 126
            dec r16
            brne delayon2B5

        ldi r17, 126
        ldi r16, 4
        cbi DDRB, 5

        delayoff2B5:
            dec r17
            brne delayoff2B5
            ldi r17, 126
            dec r16
            brne delayoff2B5

    dec r18
    brne loopanje2B5
    ret

C5:

    ldi r18, 52
    ldi r19, 9

    loopanjeC5:

        ldi r17, 239
        ldi r16, 4
        sbi DDRB, 5

        delayonC5:
            dec r17
            brne delayonC5
            ldi r17, 239
            dec r16
            brne delayonC5

        ldi r17, 239
        ldi r16, 4
        cbi DDRB, 5

        delayoffC5:
            dec r17
            brne delayoffC5
            ldi r17, 239
            dec r16
            brne delayoffC5

    dec r18
    brne loopanjeC5
    ldi r18, 52
    dec r19
    brne loopanjeC5

    ldi r18, 52

    loopanje2C5:

        ldi r17, 239
        ldi r16, 4
        sbi DDRB, 5

        delayon2C5:
            dec r17
            brne delayon2C5
            ldi r17, 239
            dec r16
            brne delayon2C5

        ldi r17, 239
        ldi r16, 4
        cbi DDRB, 5

        delayoff2C5:
            dec r17
            brne delayoff2C5
            ldi r17, 239
            dec r16
            brne delayoff2C5

    dec r18
    brne loopanje2C5
    ret

D5:

    ldi r18, 58
    ldi r19, 9

    loopanjeD5:

        ldi r17, 212
        ldi r16, 4
        sbi DDRB, 5

        delayonD5:
            dec r17
            brne delayonD5
            ldi r17, 212
            dec r16
            brne delayonD5

        ldi r17, 212
        ldi r16, 4
        cbi DDRB, 5

        delayoffD5:
            dec r17
            brne delayoffD5
            ldi r17, 212
            dec r16
            brne delayoffD5

    dec r18
    brne loopanjeD5
    ldi r18, 58
    dec r19
    brne loopanjeD5

    ldi r18, 58

    loopanje2D5:

        ldi r17, 212
        ldi r16, 4
        sbi DDRB, 5

        delayon2D5:
            dec r17
            brne delayon2D5
            ldi r17, 212
            dec r16
            brne delayon2D5

        ldi r17, 212
        ldi r16, 4
        cbi DDRB, 5

        delayoff2D5:
            dec r17
            brne delayoff2D5
            ldi r17, 212
            dec r16
            brne delayoff2D5

    dec r18
    brne loopanje2D5
    ret

E5:

    ldi r18, 65
    ldi r19, 9

    loopanjeE5:

        ldi r17, 189
        ldi r16, 4
        sbi DDRB, 5

        delayonE5:
            dec r17
            brne delayonE5
            ldi r17, 189
            dec r16
            brne delayonE5

        ldi r17, 189
        ldi r16, 4
        cbi DDRB, 5

        delayoffE5:
            dec r17
            brne delayoffE5
            ldi r17, 189
            dec r16
            brne delayoffE5

    dec r18
    brne loopanjeE5
    ldi r18, 65
    dec r19
    brne loopanjeE5

    ldi r18, 65

    loopanje2E5:

        ldi r17, 189
        ldi r16, 4
        sbi DDRB, 5

        delayon2E5:
            dec r17
            brne delayon2E5
            ldi r17, 189
            dec r16
            brne delayon2E5

        ldi r17, 189
        ldi r16, 4
        cbi DDRB, 5

        delayoff2E5:
            dec r17
            brne delayoff2E5
            ldi r17, 189
            dec r16
            brne delayoff2E5

    dec r18
    brne loopanje2E5
    ret

F5:

    ldi r18, 69
    ldi r19, 9

    loopanjeF5:

        ldi r17, 179
        ldi r16, 4
        sbi DDRB, 5

        delayonF5:
            dec r17
            brne delayonF5
            ldi r17, 179
            dec r16
            brne delayonF5

        ldi r17, 179
        ldi r16, 4
        cbi DDRB, 5

        delayoffF5:
            dec r17
            brne delayoffF5
            ldi r17, 179
            dec r16
            brne delayoffF5

    dec r18
    brne loopanjeF5
    ldi r18, 69
    dec r19
    brne loopanjeF5

    ldi r18, 69

    loopanje2F5:

        ldi r17, 179
        ldi r16, 4
        sbi DDRB, 5

        delayon2F5:
            dec r17
            brne delayon2F5
            ldi r17, 179
            dec r16
            brne delayon2F5

        ldi r17, 179
        ldi r16, 4
        cbi DDRB, 5

        delayoff2F5:
            dec r17
            brne delayoff2F5
            ldi r17, 179
            dec r16
            brne delayoff2F5

    dec r18
    brne loopanje2F5
    ret

G5:

    ldi r18, 78
    ldi r19, 9

    loopanjeG5:

        ldi r17, 159
        ldi r16, 4
        sbi DDRB, 5

        delayonG5:
            dec r17
            brne delayonG5
            ldi r17, 159
            dec r16
            brne delayonG5

        ldi r17, 159
        ldi r16, 4
        cbi DDRB, 5

        delayoffG5:
            dec r17
            brne delayoffG5
            ldi r17, 159
            dec r16
            brne delayoffG5

    dec r18
    brne loopanjeG5
    ldi r18, 78
    dec r19
    brne loopanjeG5

    ldi r18, 78

    loopanje2G5:

        ldi r17, 159
        ldi r16, 4
        sbi DDRB, 5

        delayon2G5:
            dec r17
            brne delayon2G5
            ldi r17, 159
            dec r16
            brne delayon2G5

        ldi r17, 159
        ldi r16, 4
        cbi DDRB, 5

        delayoff2G5:
            dec r17
            brne delayoff2G5
            ldi r17, 159
            dec r16
            brne delayoff2G5

    dec r18
    brne loopanje2G5
    ret

CS5:

    ldi r18, 55
    ldi r19, 9

    loopanjeCS5:

        ldi r17, 225
        ldi r16, 4
        sbi DDRB, 5

        delayonCS5:
            dec r17
            brne delayonCS5
            ldi r17, 225
            dec r16
            brne delayonCS5

        ldi r17, 225
        ldi r16, 4
        cbi DDRB, 5

        delayoffCS5:
            dec r17
            brne delayoffCS5
            ldi r17, 225
            dec r16
            brne delayoffCS5

    dec r18
    brne loopanjeCS5
    ldi r18, 55
    dec r19
    brne loopanjeCS5

    ldi r18, 55

    loopanje2CS5:

        ldi r17, 225
        ldi r16, 4
        sbi DDRB, 5

        delayon2CS5:
            dec r17
            brne delayon2CS5
            ldi r17, 225
            dec r16
            brne delayon2CS5

        ldi r17, 225
        ldi r16, 4
        cbi DDRB, 5

        delayoff2CS5:
            dec r17
            brne delayoff2CS5
            ldi r17, 225
            dec r16
            brne delayoff2CS5

    dec r18
    brne loopanje2CS5
    ret

FS5:

    ldi r18, 74
    ldi r19, 9

    loopanjeFS5:

        ldi r17, 168
        ldi r16, 4
        sbi DDRB, 5

        delayonFS5:
            dec r17
            brne delayonFS5
            ldi r17, 168
            dec r16
            brne delayonFS5

        ldi r17, 168
        ldi r16, 4
        cbi DDRB, 5

        delayoffFS5:
            dec r17
            brne delayoffFS5
            ldi r17, 168
            dec r16
            brne delayoffFS5

    dec r18
    brne loopanjeFS5
    ldi r18, 74
    dec r19
    brne loopanjeFS5

    ldi r18, 74

    loopanje2FS5:

        ldi r17, 168
        ldi r16, 4
        sbi DDRB, 5

        delayon2FS5:
            dec r17
            brne delayon2FS5
            ldi r17, 168
            dec r16
            brne delayon2FS5

        ldi r17, 168
        ldi r16, 4
        cbi DDRB, 5

        delayoff2FS5:
            dec r17
            brne delayoff2FS5
            ldi r17, 168
            dec r16
            brne delayoff2FS5

    dec r18
    brne loopanje2FS5
    ret

REST:
	ldi r21, 200
	ldi r22, 200
	
	delay1:
		delay2:
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
			dec r21
			brne delay2
		dec r22
		brne delay1
	ret
