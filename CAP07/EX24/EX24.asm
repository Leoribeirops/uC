
_main:

;EX24.c,3 :: 		void main() {
;EX24.c,4 :: 		trisd = 0x00;  // Configura todos os pinos da PORTD como saída
	CLRF        TRISD+0 
;EX24.c,6 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;EX24.c,7 :: 		for (i = 0; i < 8; i++) {  // Loop de 0 a 7 para acionar os LEDs de RD0 a RD7
	CLRF        _i+0 
L_main2:
	MOVLW       8
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;EX24.c,8 :: 		portd = (1 << i);  // Aciona o LED atual, todos os outros LEDs permanecem desligados
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main7:
	BZ          L__main8
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main7
L__main8:
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;EX24.c,9 :: 		delay_ms(500);     // Espera por 0,5 segundo
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
;EX24.c,7 :: 		for (i = 0; i < 8; i++) {  // Loop de 0 a 7 para acionar os LEDs de RD0 a RD7
	INCF        _i+0, 1 
;EX24.c,10 :: 		}
	GOTO        L_main2
L_main3:
;EX24.c,11 :: 		}
	GOTO        L_main0
;EX24.c,12 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
