
_main:

;Ex12.c,1 :: 		void main() {
;Ex12.c,3 :: 		trisb = 0b00001111;  // Configura RB0, RB1, RB2 e RB3 como entrada
	MOVLW       15
	MOVWF       TRISB+0 
;Ex12.c,4 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex12.c,5 :: 		trisa.f5 = 0;  // Configura RA5 como saída
	BCF         TRISA+0, 5 
;Ex12.c,6 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex12.c,7 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex12.c,9 :: 		while (1) {  // Loop infinito para manter o programa rodando
L_main0:
;Ex12.c,12 :: 		porta.f5 = 1;
	BSF         PORTA+0, 5 
;Ex12.c,14 :: 		if (portb.f0 == 0) {  // Se a chave S0 em RB0 for pressionada
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex12.c,16 :: 		portd = 0b00111111;  // Exibe 0 no display de 7 segmentos
	MOVLW       63
	MOVWF       PORTD+0 
;Ex12.c,17 :: 		}
	GOTO        L_main3
L_main2:
;Ex12.c,18 :: 		else if (portb.f1 == 0) {  // Se a chave S1 em RB1 for pressionada
	BTFSC       PORTB+0, 1 
	GOTO        L_main4
;Ex12.c,19 :: 		portd = 0b00000110;  // Exibe 1 no display de 7 segmentos
	MOVLW       6
	MOVWF       PORTD+0 
;Ex12.c,20 :: 		}
	GOTO        L_main5
L_main4:
;Ex12.c,21 :: 		else if (portb.f2 == 0) {  // Se a chave S2 em RB2 for pressionada
	BTFSC       PORTB+0, 2 
	GOTO        L_main6
;Ex12.c,23 :: 		portd = 0b01011011;  // Exibe 2 no display de 7 segmentos
	MOVLW       91
	MOVWF       PORTD+0 
;Ex12.c,24 :: 		}
	GOTO        L_main7
L_main6:
;Ex12.c,25 :: 		else if (portb.f3 == 0) {  // Se a chave S3 em RB3 for pressionada
	BTFSC       PORTB+0, 3 
	GOTO        L_main8
;Ex12.c,26 :: 		portd = 0b01111001;  // Exibe 3 no display de 7 segmentos
	MOVLW       121
	MOVWF       PORTD+0 
;Ex12.c,27 :: 		}
	GOTO        L_main9
L_main8:
;Ex12.c,30 :: 		porta.f5 = 0;
	BCF         PORTA+0, 5 
;Ex12.c,31 :: 		}
L_main9:
L_main7:
L_main5:
L_main3:
;Ex12.c,32 :: 		}
	GOTO        L_main0
;Ex12.c,33 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
