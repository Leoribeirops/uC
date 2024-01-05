
_main:

;EX26.c,3 :: 		void main() {
;EX26.c,4 :: 		trisd = 0x00;  // Configura todos os pinos da PORTD como saída
	CLRF        TRISD+0 
;EX26.c,6 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;EX26.c,8 :: 		for (i = 0; i < 8; i++) {
	CLRF        _i+0 
L_main2:
	MOVLW       8
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;EX26.c,9 :: 		portd = (1 << i);  // Aciona o LED atual, todos os outros LEDs permanecem desligados
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main11:
	BZ          L__main12
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main11
L__main12:
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;EX26.c,10 :: 		delay_ms(500);     // Espera por 0,5 segundo
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
;EX26.c,8 :: 		for (i = 0; i < 8; i++) {
	INCF        _i+0, 1 
;EX26.c,11 :: 		}
	GOTO        L_main2
L_main3:
;EX26.c,14 :: 		for (i = 6; i > 0; i--) {
	MOVLW       6
	MOVWF       _i+0 
L_main6:
	MOVF        _i+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main7
;EX26.c,15 :: 		portd = (1 << i);  // Aciona o LED atual, todos os outros LEDs permanecem desligados
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main13:
	BZ          L__main14
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main13
L__main14:
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;EX26.c,16 :: 		delay_ms(500);     // Espera por 0,5 segundo
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	DECFSZ      R11, 1, 1
	BRA         L_main9
	NOP
	NOP
;EX26.c,14 :: 		for (i = 6; i > 0; i--) {
	DECF        _i+0, 1 
;EX26.c,17 :: 		}
	GOTO        L_main6
L_main7:
;EX26.c,18 :: 		}
	GOTO        L_main0
;EX26.c,19 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
