
_main:

;Ex30.c,1 :: 		void main() {
;Ex30.c,2 :: 		trisd.rd0 = 0;  // Configura RD0 como saída
	BCF         TRISD+0, 0 
;Ex30.c,3 :: 		trisb.rb0 = 1;  // Configura RB0 como entrada
	BSF         TRISB+0, 0 
;Ex30.c,4 :: 		adcon0 = 0;     // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex30.c,5 :: 		adcon1 = 15;    // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex30.c,7 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;Ex30.c,9 :: 		while (portb.rb0 == 0) {  // Enquanto a chave 0 estiver fechada
L_main2:
	BTFSC       PORTB+0, 0 
	GOTO        L_main3
;Ex30.c,10 :: 		portd.rd0 = ~portd.rd0;  // Inverte o estado do LED 0
	BTG         PORTD+0, 0 
;Ex30.c,11 :: 		delay_ms(1000);  // Aguarda por 1 segundo
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
;Ex30.c,12 :: 		}
	GOTO        L_main2
L_main3:
;Ex30.c,13 :: 		}
	GOTO        L_main0
;Ex30.c,14 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
