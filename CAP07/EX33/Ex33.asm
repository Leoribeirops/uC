
_main:

;Ex33.c,1 :: 		void main() {
;Ex33.c,2 :: 		trisd.rd0 = 0;  // Configura RD0 como sa�da
	BCF         TRISD+0, 0 
;Ex33.c,3 :: 		trisb.rb0 = 1;  // Configura RB0 como entrada
	BSF         TRISB+0, 0 
;Ex33.c,4 :: 		trisb.rb1 = 1;  // Configura RB1 como entrada
	BSF         TRISB+0, 1 
;Ex33.c,5 :: 		adcon0 = 0;     // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex33.c,6 :: 		adcon1 = 15;    // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex33.c,8 :: 		while (1) {  // Loop infinito para manter a sequ�ncia rodando enquanto o circuito estiver energizado
L_main0:
;Ex33.c,9 :: 		while (((portb.rb0 == 0) && (portb.rb1 != 0)) || ((portb.rb0 != 0) && (portb.rb1 == 0))) {  // Enquanto somente uma chave estiver pressionada
L_main2:
	BTFSC       PORTB+0, 0 
	GOTO        L__main12
	BTFSS       PORTB+0, 1 
	GOTO        L__main12
	GOTO        L__main10
L__main12:
	BTFSS       PORTB+0, 0 
	GOTO        L__main11
	BTFSC       PORTB+0, 1 
	GOTO        L__main11
	GOTO        L__main10
L__main11:
	GOTO        L_main3
L__main10:
;Ex33.c,10 :: 		portd.rd0 = 1;  // Liga o LED 0
	BSF         PORTD+0, 0 
;Ex33.c,11 :: 		}
	GOTO        L_main2
L_main3:
;Ex33.c,12 :: 		portd.rd0 = 0;  // Desliga o LED 0 quando ambas as chaves forem liberadas ou ambas estiverem pressionadas
	BCF         PORTD+0, 0 
;Ex33.c,13 :: 		}
	GOTO        L_main0
;Ex33.c,14 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
