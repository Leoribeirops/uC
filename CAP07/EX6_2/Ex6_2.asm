
_main:

;Ex6_2.c,4 :: 		void main() {
;Ex6_2.c,6 :: 		trisb = 1;  // Configura PORTB como entrada
	MOVLW       1
	MOVWF       TRISB+0 
;Ex6_2.c,7 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex6_2.c,8 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex6_2.c,9 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex6_2.c,11 :: 		while (1) {
L_main0:
;Ex6_2.c,12 :: 		if (portb.f0 == 0) {  // Se a chave estiver fechada
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex6_2.c,13 :: 		portd.f0 = 1;  // Liga o LED 0
	BSF         PORTD+0, 0 
;Ex6_2.c,14 :: 		portd.f2 = 1;  // Liga o LED 2
	BSF         PORTD+0, 2 
;Ex6_2.c,15 :: 		delay_ms(tempo2Hz);  // Espera 500 ms
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
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
;Ex6_2.c,16 :: 		portd.f0 = 0;  // Desliga o LED 0
	BCF         PORTD+0, 0 
;Ex6_2.c,17 :: 		portd.f2 = 0;  // Desliga o LED 2
	BCF         PORTD+0, 2 
;Ex6_2.c,18 :: 		delay_ms(tempo2Hz);  // Espera 500 ms
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
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
;Ex6_2.c,19 :: 		} else {  // Se a chave estiver aberta
	GOTO        L_main5
L_main2:
;Ex6_2.c,20 :: 		portd.f1 = 1;  // Liga o LED 1
	BSF         PORTD+0, 1 
;Ex6_2.c,21 :: 		portd.f3 = 0;  // Desliga o LED 3
	BCF         PORTD+0, 3 
;Ex6_2.c,22 :: 		delay_ms(tempo1Hz);  // Espera 1000 ms
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
;Ex6_2.c,23 :: 		portd.f1 = 0;  // Desliga o LED 1
	BCF         PORTD+0, 1 
;Ex6_2.c,24 :: 		portd.f3 = 1;  // Liga o LED 3
	BSF         PORTD+0, 3 
;Ex6_2.c,25 :: 		delay_ms(tempo1Hz);  // Espera 1000 ms
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;Ex6_2.c,26 :: 		}
L_main5:
;Ex6_2.c,27 :: 		}
	GOTO        L_main0
;Ex6_2.c,28 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
