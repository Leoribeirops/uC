
_main:

;Ex_1.c,2 :: 		void main () {
;Ex_1.c,4 :: 		trisb = 0; // seta o reg para saída
	CLRF       TRISB+0
;Ex_1.c,5 :: 		while(1)   // laço infinito sem
L_main0:
;Ex_1.c,7 :: 		portb= 1;  // seta saida 0 para 1
	MOVLW      1
	MOVWF      PORTB+0
;Ex_1.c,8 :: 		delay_ms(1000); // atraso em milisec
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Ex_1.c,9 :: 		portb=0;
	CLRF       PORTB+0
;Ex_1.c,10 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Ex_1.c,11 :: 		}
	GOTO       L_main0
;Ex_1.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
