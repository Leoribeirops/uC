
_main:

;EX19.c,2 :: 		void main() {
;EX19.c,3 :: 		trisd = 0;  // Configura todos os pinos da PORTD como saída
	CLRF        TRISD+0 
;EX19.c,5 :: 		while (1) {  // Loop infinito
L_main0:
;EX19.c,7 :: 		for (i= 0; i < 20; i++) {
	CLRF        _i+0 
L_main2:
	MOVLW       20
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;EX19.c,8 :: 		portd = 0b00001010;  // Liga os LEDs 1 e 3
	MOVLW       10
	MOVWF       PORTD+0 
;EX19.c,9 :: 		delay_ms(500);        // Espera 0,5 segundo
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
;EX19.c,10 :: 		portd = 0b00000000;   // Desliga os LEDs 1 e 3
	CLRF        PORTD+0 
;EX19.c,11 :: 		delay_ms(500);        // Espera 0,5 segundo
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
;EX19.c,7 :: 		for (i= 0; i < 20; i++) {
	INCF        _i+0, 1 
;EX19.c,12 :: 		}
	GOTO        L_main2
L_main3:
;EX19.c,15 :: 		delay_ms(3000);
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
;EX19.c,18 :: 		for (i = 0; i < 30; i++) {
	CLRF        _i+0 
L_main8:
	MOVLW       30
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main9
;EX19.c,19 :: 		if (i % 2 == 0) {
	MOVLW       1
	ANDWF       _i+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main11
;EX19.c,20 :: 		portd = 0b00000001;  // Liga o LED 0
	MOVLW       1
	MOVWF       PORTD+0 
;EX19.c,21 :: 		} else {
	GOTO        L_main12
L_main11:
;EX19.c,22 :: 		portd = 0b00000100;  // Liga o LED 2
	MOVLW       4
	MOVWF       PORTD+0 
;EX19.c,23 :: 		}
L_main12:
;EX19.c,24 :: 		delay_ms(250);        // Espera 0,25 segundo
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
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
;EX19.c,25 :: 		portd = 0b00000000;   // Desliga os LEDs 0 e 2
	CLRF        PORTD+0 
;EX19.c,26 :: 		delay_ms(250);        // Espera 0,25 segundo
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main14:
	DECFSZ      R13, 1, 1
	BRA         L_main14
	DECFSZ      R12, 1, 1
	BRA         L_main14
	DECFSZ      R11, 1, 1
	BRA         L_main14
	NOP
	NOP
;EX19.c,18 :: 		for (i = 0; i < 30; i++) {
	INCF        _i+0, 1 
;EX19.c,27 :: 		}
	GOTO        L_main8
L_main9:
;EX19.c,30 :: 		delay_ms(5000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main15:
	DECFSZ      R13, 1, 1
	BRA         L_main15
	DECFSZ      R12, 1, 1
	BRA         L_main15
	DECFSZ      R11, 1, 1
	BRA         L_main15
	NOP
	NOP
;EX19.c,33 :: 		}
	GOTO        L_main0
;EX19.c,34 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
