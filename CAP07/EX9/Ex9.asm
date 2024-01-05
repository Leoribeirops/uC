
_main:

;Ex9.c,1 :: 		void main() {
;Ex9.c,3 :: 		trisb = 0b00000011;  // Configura RB0 e RB1 como entrada e o restante como saída
	MOVLW       3
	MOVWF       TRISB+0 
;Ex9.c,4 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex9.c,5 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex9.c,6 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex9.c,8 :: 		while (1) {  // Loop infinito para manter o programa rodando
L_main0:
;Ex9.c,10 :: 		if (portb.f0 == 0 || portb.f1 == 0) {  // Se pelo menos uma das chaves RB0 ou RB1 estiver fechada
	BTFSS       PORTB+0, 0 
	GOTO        L__main6
	BTFSS       PORTB+0, 1 
	GOTO        L__main6
	GOTO        L_main4
L__main6:
;Ex9.c,11 :: 		portd.f0 = 1;  // Liga o LED RD0
	BSF         PORTD+0, 0 
;Ex9.c,12 :: 		} else {
	GOTO        L_main5
L_main4:
;Ex9.c,13 :: 		portd.f0 = 0;  // Desliga o LED RD0
	BCF         PORTD+0, 0 
;Ex9.c,14 :: 		}
L_main5:
;Ex9.c,16 :: 		}
	GOTO        L_main0
;Ex9.c,17 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
