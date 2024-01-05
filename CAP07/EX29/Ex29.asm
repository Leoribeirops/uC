
_main:

;Ex29.c,1 :: 		void main() {
;Ex29.c,2 :: 		trisd = 0x00;  // Configura todos os pinos da PORTD como saída
	CLRF        TRISD+0 
;Ex29.c,3 :: 		trisb.rb0 = 1;  // Configura RB0 como entrada
	BSF         TRISB+0, 0 
;Ex29.c,4 :: 		adcon0 = 0;     // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex29.c,5 :: 		adcon1 = 15;    // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex29.c,7 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;Ex29.c,9 :: 		while (portb.rb0 == 0) {  // Enquanto a chave estiver pressionada
L_main2:
	BTFSC       PORTB+0, 0 
	GOTO        L_main3
;Ex29.c,10 :: 		portd.rd0 = 1;  // Liga o LED 0
	BSF         PORTD+0, 0 
;Ex29.c,11 :: 		portd.rd1 = 0;  // Desliga o LED 1
	BCF         PORTD+0, 1 
;Ex29.c,12 :: 		delay_ms(1000);  // Aguarda por 1 segundo (0.5 Hz = 2 s período, 1 s meio período)
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
;Ex29.c,13 :: 		portd.rd0 = 0;  // Desliga o LED 0
	BCF         PORTD+0, 0 
;Ex29.c,14 :: 		portd.rd1 = 1;  // Liga o LED 1
	BSF         PORTD+0, 1 
;Ex29.c,15 :: 		delay_ms(1000);  // Aguarda por 1 segundo
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
;Ex29.c,16 :: 		}
	GOTO        L_main2
L_main3:
;Ex29.c,19 :: 		portd.rd2 = 1;  // Liga o LED 2
	BSF         PORTD+0, 2 
;Ex29.c,20 :: 		delay_ms(1000);  // Aguarda por 1 segundo
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
;Ex29.c,21 :: 		portd.rd2 = 0;  // Desliga o LED 2
	BCF         PORTD+0, 2 
;Ex29.c,23 :: 		portd.rd3 = 1;  // Liga o LED 3
	BSF         PORTD+0, 3 
;Ex29.c,24 :: 		delay_ms(1000);  // Aguarda por 1 segundo
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
;Ex29.c,25 :: 		portd.rd3 = 0;  // Desliga o LED 3
	BCF         PORTD+0, 3 
;Ex29.c,26 :: 		}
	GOTO        L_main0
;Ex29.c,27 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
