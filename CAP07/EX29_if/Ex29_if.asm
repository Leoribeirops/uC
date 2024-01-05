
_main:

;Ex29_if.c,1 :: 		void main() {
;Ex29_if.c,2 :: 		trisd = 0;  // Configura todos os pinos da PORTD como saída
	CLRF        TRISD+0 
;Ex29_if.c,3 :: 		trisb.rb0 = 1;  // Configura RB0 como entrada
	BSF         TRISB+0, 0 
;Ex29_if.c,4 :: 		adcon0 = 0;     // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex29_if.c,5 :: 		adcon1 = 15;    // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex29_if.c,7 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;Ex29_if.c,9 :: 		if (portb.rb0 == 0) {  // Se a chave for pressionada
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex29_if.c,11 :: 		portd.rd0 = 1;  // Liga o LED 0
	BSF         PORTD+0, 0 
;Ex29_if.c,12 :: 		portd.rd1 = 0;  // Desliga o LED 1
	BCF         PORTD+0, 1 
;Ex29_if.c,13 :: 		delay_ms(1000);  // Aguarda 1 segundo (0.5 Hz = 2 segundos período, 1 segundo meio período)
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;Ex29_if.c,14 :: 		portd.rd0 = 0;  // Desliga o LED 0
	BCF         PORTD+0, 0 
;Ex29_if.c,15 :: 		portd.rd1 = 1;  // Liga o LED 1
	BSF         PORTD+0, 1 
;Ex29_if.c,16 :: 		delay_ms(1000);  // Aguarda 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;Ex29_if.c,17 :: 		} else {  // Se a chave for liberada
	GOTO        L_main5
L_main2:
;Ex29_if.c,18 :: 		portd.rd2 = 1;  // Liga o LED 2
	BSF         PORTD+0, 2 
;Ex29_if.c,19 :: 		delay_ms(1000);  // Aguarda 1 segundo
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
;Ex29_if.c,20 :: 		portd.rd2 = 0;  // Desliga o LED 2
	BCF         PORTD+0, 2 
;Ex29_if.c,22 :: 		portd.rd3 = 1;  // Liga o LED 3
	BSF         PORTD+0, 3 
;Ex29_if.c,23 :: 		delay_ms(1000);  // Aguarda 1 segundo
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
;Ex29_if.c,24 :: 		portd.rd3 = 0;  // Desliga o LED 3
	BCF         PORTD+0, 3 
;Ex29_if.c,25 :: 		}
L_main5:
;Ex29_if.c,26 :: 		}
	GOTO        L_main0
;Ex29_if.c,27 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
