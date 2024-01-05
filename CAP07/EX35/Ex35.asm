
_main:

;Ex35.c,1 :: 		void main() {
;Ex35.c,2 :: 		trisd.rd0 = 0;  // Configura RD0 como saída
	BCF         TRISD+0, 0 
;Ex35.c,3 :: 		trisd.rd1 = 0;  // Configura RD1 como saída
	BCF         TRISD+0, 1 
;Ex35.c,4 :: 		trisb.rb0 = 1;  // Configura RB0 como entrada
	BSF         TRISB+0, 0 
;Ex35.c,5 :: 		trisb.rb1 = 1;  // Configura RB1 como entrada
	BSF         TRISB+0, 1 
;Ex35.c,6 :: 		adcon0 = 0;     // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex35.c,7 :: 		adcon1 = 15;    // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex35.c,9 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;Ex35.c,10 :: 		if (portb.rb0 == 0) {  // Se a chave 0 for pressionada
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex35.c,11 :: 		while (portb.rb0 == 0);  // Aguarda a chave 0 ser liberada
L_main3:
	BTFSC       PORTB+0, 0 
	GOTO        L_main4
	GOTO        L_main3
L_main4:
;Ex35.c,12 :: 		portd.rd0 = ~portd.rd0;  // Inverte o estado do LED 0
	BTG         PORTD+0, 0 
;Ex35.c,13 :: 		}
L_main2:
;Ex35.c,15 :: 		if (portb.rb1 == 0) {  // Se a chave 1 for pressionada
	BTFSC       PORTB+0, 1 
	GOTO        L_main5
;Ex35.c,16 :: 		portd.rd1 = ~portd.rd1;  // Inverte o estado do LED 1
	BTG         PORTD+0, 1 
;Ex35.c,17 :: 		while (portb.rb1 == 0);  // Aguarda a chave 1 ser liberada
L_main6:
	BTFSC       PORTB+0, 1 
	GOTO        L_main7
	GOTO        L_main6
L_main7:
;Ex35.c,18 :: 		}
L_main5:
;Ex35.c,19 :: 		}
	GOTO        L_main0
;Ex35.c,20 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
