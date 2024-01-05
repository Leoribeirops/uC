
_main:

;EX18.c,3 :: 		void main() {
;EX18.c,4 :: 		trisd = 0;  // Configura todos os pinos da PORTD como saída
	CLRF        TRISD+0 
;EX18.c,6 :: 		while (1) {  // Loop infinito
L_main0:
;EX18.c,8 :: 		for (i = 0; i < 20; i++) {
	CLRF        _i+0 
L_main2:
	MOVLW       20
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;EX18.c,9 :: 		portd = 0b00001001;  // Liga os LEDs 0 e 3
	MOVLW       9
	MOVWF       PORTD+0 
;EX18.c,10 :: 		delay_ms(500);        // Espera 0,5 segundo
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
	NOP
;EX18.c,11 :: 		portd = 0b00000000;   // Desliga os LEDs 0 e 3
	CLRF        PORTD+0 
;EX18.c,12 :: 		delay_ms(500);        // Espera 0,5 segundo
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
;EX18.c,8 :: 		for (i = 0; i < 20; i++) {
	INCF        _i+0, 1 
;EX18.c,13 :: 		}
	GOTO        L_main2
L_main3:
;EX18.c,16 :: 		delay_ms(2000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
;EX18.c,19 :: 		for (i = 0; i < 30; i++) {
	CLRF        _i+0 
L_main8:
	MOVLW       30
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main9
;EX18.c,20 :: 		portd = 0b00000110;  // Liga os LEDs 1 e 2
	MOVLW       6
	MOVWF       PORTD+0 
;EX18.c,21 :: 		delay_ms(250);        // Espera 0,25 segundo
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main11:
	DECFSZ      R13, 1, 1
	BRA         L_main11
	DECFSZ      R12, 1, 1
	BRA         L_main11
	DECFSZ      R11, 1, 1
	BRA         L_main11
	NOP
	NOP
;EX18.c,22 :: 		portd = 0b00000000;   // Desliga os LEDs 1 e 2
	CLRF        PORTD+0 
;EX18.c,23 :: 		delay_ms(250);        // Espera 0,25 segundo
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main12:
	DECFSZ      R13, 1, 1
	BRA         L_main12
	DECFSZ      R12, 1, 1
	BRA         L_main12
	DECFSZ      R11, 1, 1
	BRA         L_main12
	NOP
	NOP
;EX18.c,19 :: 		for (i = 0; i < 30; i++) {
	INCF        _i+0, 1 
;EX18.c,24 :: 		}
	GOTO        L_main8
L_main9:
;EX18.c,27 :: 		delay_ms(5000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main13:
	DECFSZ      R13, 1, 1
	BRA         L_main13
	DECFSZ      R12, 1, 1
	BRA         L_main13
	DECFSZ      R11, 1, 1
	BRA         L_main13
	NOP
	NOP
;EX18.c,30 :: 		}
	GOTO        L_main0
;EX18.c,31 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
