
_main:

;Ex11.c,1 :: 		void main() {
;Ex11.c,3 :: 		trisb = 0b00001111;  // Configura RB0, RB1, RB2 e RB3 como entrada
	MOVLW       15
	MOVWF       TRISB+0 
;Ex11.c,4 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex11.c,5 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex11.c,6 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex11.c,8 :: 		portd = 0;
	CLRF        PORTD+0 
;Ex11.c,10 :: 		while (1) {  // Loop infinito para manter o programa rodando
L_main0:
;Ex11.c,12 :: 		if (portb.f0 == 0) {  // Se a chave S1 em RB0 for pressionada
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex11.c,13 :: 		portd = 0b0001;  // Exibe 1 em binário nos LEDs
	MOVLW       1
	MOVWF       PORTD+0 
;Ex11.c,14 :: 		}
	GOTO        L_main3
L_main2:
;Ex11.c,16 :: 		portd = 0b0000;
	CLRF        PORTD+0 
;Ex11.c,17 :: 		}
L_main3:
;Ex11.c,18 :: 		if (portb.f1 == 0) {  // Se a chave S2 em RB1 for pressionada
	BTFSC       PORTB+0, 1 
	GOTO        L_main4
;Ex11.c,19 :: 		portd = 0b0010;  // Exibe 2 em binário nos LEDs
	MOVLW       2
	MOVWF       PORTD+0 
;Ex11.c,20 :: 		}
	GOTO        L_main5
L_main4:
;Ex11.c,22 :: 		portd = 0b0000;
	CLRF        PORTD+0 
;Ex11.c,23 :: 		}
L_main5:
;Ex11.c,24 :: 		if (portb.f2 == 0) {  // Se a chave S3 em RB2 for pressionada
	BTFSC       PORTB+0, 2 
	GOTO        L_main6
;Ex11.c,25 :: 		portd = 0b0011;  // Exibe 3 em binário nos LEDs
	MOVLW       3
	MOVWF       PORTD+0 
;Ex11.c,26 :: 		}
	GOTO        L_main7
L_main6:
;Ex11.c,28 :: 		portd = 0b0000;
	CLRF        PORTD+0 
;Ex11.c,29 :: 		}
L_main7:
;Ex11.c,30 :: 		if (portb.f3 == 0) {  // Se a chave S4 em RB3 for pressionada
	BTFSC       PORTB+0, 3 
	GOTO        L_main8
;Ex11.c,31 :: 		portd = 0b0100;  // Exibe 4 em binário nos LEDs
	MOVLW       4
	MOVWF       PORTD+0 
;Ex11.c,32 :: 		}
	GOTO        L_main9
L_main8:
;Ex11.c,34 :: 		portd = 0b0000;
	CLRF        PORTD+0 
;Ex11.c,35 :: 		}
L_main9:
;Ex11.c,38 :: 		}
	GOTO        L_main0
;Ex11.c,39 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
