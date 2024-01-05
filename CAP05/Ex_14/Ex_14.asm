
_main:

;Ex_14.c,5 :: 		void main() // inï¿½cio do programa principal
;Ex_14.c,8 :: 		TRISB = 0;   // Configura PORTB como saída
	CLRF        TRISB+0 
;Ex_14.c,9 :: 		TRISD = 0;   // Configura os pinos RD0 e RD1 como saída e mantém o restante como entrada
	CLRF        TRISD+0 
;Ex_14.c,13 :: 		i = 1596;
	MOVLW       60
	MOVWF       _i+0 
	MOVLW       6
	MOVWF       _i+1 
;Ex_14.c,15 :: 		while(1)   // Loop infinito
L_main0:
;Ex_14.c,18 :: 		PORTD = (i >> 8) & 255; // Desloca 8 posições à direita e pega os 8 bits mais significativos
	MOVF        _i+1, 0 
	MOVWF       R0 
	MOVLW       0
	BTFSC       _i+1, 7 
	MOVLW       255
	MOVWF       R1 
	MOVLW       255
	ANDWF       R0, 0 
	MOVWF       PORTD+0 
;Ex_14.c,19 :: 		PORTB = i & 255;       // Pega os 8 bits menos significativos
	MOVLW       255
	ANDWF       _i+0, 0 
	MOVWF       PORTB+0 
;Ex_14.c,20 :: 		}
	GOTO        L_main0
;Ex_14.c,21 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
