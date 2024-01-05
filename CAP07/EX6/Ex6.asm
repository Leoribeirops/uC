
_main:

;Ex6.c,4 :: 		void main() {
;Ex6.c,6 :: 		trisb = 1;
	MOVLW       1
	MOVWF       TRISB+0 
;Ex6.c,7 :: 		trisd = 0;
	CLRF        TRISD+0 
;Ex6.c,8 :: 		adcon0 = 0;
	CLRF        ADCON0+0 
;Ex6.c,9 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex6.c,11 :: 		while (1) {
L_main0:
;Ex6.c,12 :: 		if (portb.f0 == 0) {
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex6.c,14 :: 		portd = 0b00000101;  // Liga os LEDs 0 e 2
	MOVLW       5
	MOVWF       PORTD+0 
;Ex6.c,15 :: 		delay_ms(tempo2Hz);  // Espera 250 ms
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;Ex6.c,16 :: 		portd = 0;  // Desliga todos os LEDs
	CLRF        PORTD+0 
;Ex6.c,17 :: 		delay_ms(tempo2Hz);  // Espera 250 ms
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
	NOP
;Ex6.c,18 :: 		} else {
	GOTO        L_main5
L_main2:
;Ex6.c,20 :: 		portd = 0b00001000;  // Liga o LED 3, desliga o LED 1
	MOVLW       8
	MOVWF       PORTD+0 
;Ex6.c,21 :: 		delay_ms(tempo1Hz);  // Espera 500 ms
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
	NOP
;Ex6.c,22 :: 		portd = 0b00000010;  // Liga o LED 1, desliga o LED 3
	MOVLW       2
	MOVWF       PORTD+0 
;Ex6.c,23 :: 		delay_ms(tempo1Hz);  // Espera 500 ms
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
	NOP
;Ex6.c,24 :: 		}
L_main5:
;Ex6.c,25 :: 		}
	GOTO        L_main0
;Ex6.c,26 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
