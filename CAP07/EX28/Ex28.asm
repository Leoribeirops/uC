
_main:

;Ex28.c,1 :: 		void main() {
;Ex28.c,2 :: 		trisd.rd0 = 0;  // Configura RD0 como saída
	BCF         TRISD+0, 0 
;Ex28.c,3 :: 		trisb.rb0 = 1;  // Configura RB0 como entrada
	BSF         TRISB+0, 0 
;Ex28.c,4 :: 		adcon0 = 0;     // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex28.c,5 :: 		adcon1 = 15;    // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex28.c,7 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;Ex28.c,9 :: 		while (portb.rb0 == 1) {  // Enquanto a chave não estiver pressionada
L_main2:
	BTFSS       PORTB+0, 0 
	GOTO        L_main3
;Ex28.c,10 :: 		portd.rd0 = 1;  // Liga o LED 0
	BSF         PORTD+0, 0 
;Ex28.c,11 :: 		delay_ms(250);  // Aguarda por 250 ms (2 Hz = 0.5 s período, 0.25 s meio período)
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
;Ex28.c,12 :: 		portd.rd0 = 0;  // Desliga o LED 0
	BCF         PORTD+0, 0 
;Ex28.c,13 :: 		delay_ms(250);  // Aguarda por 250 ms
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
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
;Ex28.c,14 :: 		}
	GOTO        L_main2
L_main3:
;Ex28.c,17 :: 		portd.rd0 = 1;  // Liga o LED 0
	BSF         PORTD+0, 0 
;Ex28.c,18 :: 		delay_ms(125);  // Aguarda por 125 ms (4 Hz = 0.25 s período, 0.125 s meio período)
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       69
	MOVWF       R12, 0
	MOVLW       169
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
;Ex28.c,19 :: 		portd.rd0 = 0;  // Desliga o LED 0
	BCF         PORTD+0, 0 
;Ex28.c,20 :: 		delay_ms(125);  // Aguarda por 125 ms
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       69
	MOVWF       R12, 0
	MOVLW       169
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
;Ex28.c,21 :: 		}
	GOTO        L_main0
;Ex28.c,22 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
