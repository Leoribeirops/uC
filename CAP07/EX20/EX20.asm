
_main:

;EX20.c,22 :: 		void main() {
;EX20.c,23 :: 		trisd = 0;      // Configura PORTD como saída
	CLRF        TRISD+0 
;EX20.c,24 :: 		trisa.ra5 = 0;  // Configura RA5 como saída
	BCF         TRISA+0, 5 
;EX20.c,26 :: 		while (1) {  // Loop infinito
L_main0:
;EX20.c,27 :: 		for (i = 0; i < 16; i++) {  // Loop de contagem de 0 a F
	CLRF        _i+0 
L_main2:
	MOVLW       16
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;EX20.c,28 :: 		portd = segmentValues[i];  // Atualiza os segmentos do display
	MOVLW       _segmentValues+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_segmentValues+0)
	MOVWF       FSR0L+1 
	MOVF        _i+0, 0 
	ADDWF       FSR0L+0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0L+1, 1 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTD+0 
;EX20.c,29 :: 		porta.ra5 = 1;             // Ativa o display
	BSF         PORTA+0, 5 
;EX20.c,30 :: 		delay_ms(1000);            // Mantém o display ativo por 1 segundo
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
;EX20.c,31 :: 		porta.ra5 = 1;             // Desativa o display antes de atualizar o valor
	BSF         PORTA+0, 5 
;EX20.c,27 :: 		for (i = 0; i < 16; i++) {  // Loop de contagem de 0 a F
	INCF        _i+0, 1 
;EX20.c,32 :: 		}
	GOTO        L_main2
L_main3:
;EX20.c,33 :: 		}
	GOTO        L_main0
;EX20.c,34 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
