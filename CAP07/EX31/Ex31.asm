
_main:

;Ex31.c,1 :: 		void main() {
;Ex31.c,2 :: 		trisd.rd0 = 0;  // Configura RD0 como saída
	BCF         TRISD+0, 0 
;Ex31.c,3 :: 		trisb.rb0 = 1;  // Configura RB0 como entrada
	BSF         TRISB+0, 0 
;Ex31.c,4 :: 		trisb.rb1 = 1;  // Configura RB1 como entrada
	BSF         TRISB+0, 1 
;Ex31.c,5 :: 		adcon0 = 0;     // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex31.c,6 :: 		adcon1 = 15;    // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex31.c,8 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;Ex31.c,9 :: 		while ((portb.rb0 == 0) && (portb.rb1 == 0)) {  // Enquanto ambas as chaves estiverem pressionadas
L_main2:
	BTFSC       PORTB+0, 0 
	GOTO        L_main3
	BTFSC       PORTB+0, 1 
	GOTO        L_main3
L__main6:
;Ex31.c,10 :: 		portd.rd0 = 1;  // Liga o LED 0
	BSF         PORTD+0, 0 
;Ex31.c,11 :: 		}
	GOTO        L_main2
L_main3:
;Ex31.c,12 :: 		portd.rd0 = 0;  // Desliga o LED 0 quando uma ou ambas as chaves forem liberadas
	BCF         PORTD+0, 0 
;Ex31.c,13 :: 		}
	GOTO        L_main0
;Ex31.c,14 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
