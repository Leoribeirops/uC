
_main:

;EX16.c,3 :: 		void main() {
;EX16.c,4 :: 		trisd = 0;  // Configura RD0 como saída
	CLRF        TRISD+0 
;EX16.c,5 :: 		portd =0;
	CLRF        PORTD+0 
;EX16.c,7 :: 		while (1) {  // Loop infinito
L_main0:
;EX16.c,9 :: 		for (i = 0; i < 12; i++) {
	CLRF        _i+0 
L_main2:
	MOVLW       12
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;EX16.c,10 :: 		portd.rd0 = 1;  // Liga o LED
	BSF         PORTD+0, 0 
;EX16.c,11 :: 		delay_ms(1000);  // Espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;EX16.c,12 :: 		portd.rd0 = 0;  // Desliga o LED
	BCF         PORTD+0, 0 
;EX16.c,13 :: 		delay_ms(1000);  // Espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;EX16.c,9 :: 		for (i = 0; i < 12; i++) {
	INCF        _i+0, 1 
;EX16.c,14 :: 		}
	GOTO        L_main2
L_main3:
;EX16.c,17 :: 		delay_ms(3000);
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
;EX16.c,20 :: 		}
	GOTO        L_main0
;EX16.c,21 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
