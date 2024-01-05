
_main:

;EX22.c,16 :: 		void main() {
;EX22.c,17 :: 		trisd = 0;      // Configura PORTD como saída
	CLRF        TRISD+0 
;EX22.c,18 :: 		trisa.ra5 = 0;  // Configura RA5 como saída
	BCF         TRISA+0, 5 
;EX22.c,20 :: 		while (1) {  // Loop infinito
L_main0:
;EX22.c,21 :: 		for (i = 1; i <= 9; i++) {  // Loop de contagem de 1 a 9
	MOVLW       1
	MOVWF       _i+0 
L_main2:
	MOVF        _i+0, 0 
	SUBLW       9
	BTFSS       STATUS+0, 0 
	GOTO        L_main3
;EX22.c,22 :: 		if (i % 2 == 0) {  // Verifica se o algarismo é par
	MOVLW       1
	ANDWF       _i+0, 0 
	MOVWF       R1 
	MOVF        R1, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main5
;EX22.c,23 :: 		portd = segmentValues[i];  // Atualiza os segmentos do display
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
;EX22.c,24 :: 		porta.ra5 = 1;             // Ativa o display
	BSF         PORTA+0, 5 
;EX22.c,25 :: 		delay_ms(1000);            // Mantém o display ativo por 1 segundo
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
;EX22.c,26 :: 		porta.ra5 = 1;             // Desativa o display antes de atualizar o valor
	BSF         PORTA+0, 5 
;EX22.c,27 :: 		}
L_main5:
;EX22.c,21 :: 		for (i = 1; i <= 9; i++) {  // Loop de contagem de 1 a 9
	INCF        _i+0, 1 
;EX22.c,28 :: 		}
	GOTO        L_main2
L_main3:
;EX22.c,29 :: 		}
	GOTO        L_main0
;EX22.c,30 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
