	.org 0X0000
	jmp setup

		
						//na tem mestu vkljuèimo knjiznica.asm
						//notri je kopica programov za delo, ki jih bomo potrebovali, a jih nebi pisali sami
	.include "knjiznica.asm"

setup:
	call setupUART		//podobno kot Serial.begin(9600)
	call dump_registers
	print hello
	sbi DDRB, 5
	
	

loop:	
	call get_char
	call setLED



	call upper
	call send_char
	rjmp loop
setLED:
	cpi r16, '0'
	breq LEDoff
	cpi r16, '1'
	breq LEDon
	ret
LEDon:
	sbi PORTB, 5
	ret

LEDoff:
	cbi PORTB, 5
	ret


upper:
	cpi r16, 'a'			//zanima nas ali je znak v r16 manjsi od kode crke mali a					
							//ce je bi bila razlika r16 - 'a' in je potem C=1
	brcs not_lowercase
							//zdaj nas zanima, èe je r16 veèji od 'z'
	cpi r16, 'z' + 1		//ce je razlika negativna, takrat je C=1, obenem pomeni, da pa je to mala èrka
	brcc not_lowercase


	andi r16, 0b11011111

	ret

not_lowercase:
	ret

hello: .db "Hello World!", 0