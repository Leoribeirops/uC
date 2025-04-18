
_main:

;Ex2.c,1 :: 		void main()
;Ex2.c,3 :: 		trisa = 0; // configurar como saida
	CLRF       TRISA+0
;Ex2.c,4 :: 		trisb = 0; // configurar como saida
	CLRF       TRISB+0
;Ex2.c,5 :: 		while (1)  // laco infinito
L_main0:
;Ex2.c,8 :: 		porta = 1;
	MOVLW      1
	MOVWF      PORTA+0
;Ex2.c,9 :: 		portb = 0;
	CLRF       PORTB+0
;Ex2.c,10 :: 		delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Ex2.c,11 :: 		porta = 0;
	CLRF       PORTA+0
;Ex2.c,12 :: 		portb = 1;
	MOVLW      1
	MOVWF      PORTB+0
;Ex2.c,13 :: 		delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;Ex2.c,14 :: 		}
	GOTO       L_main0
;Ex2.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
