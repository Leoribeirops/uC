
_main:

;Exemplo_2.c,7 :: 		void main()
;Exemplo_2.c,10 :: 		TRISB = 0;
	CLRF        TRISB+0 
;Exemplo_2.c,11 :: 		PORTB = 0;
	CLRF        PORTB+0 
;Exemplo_2.c,17 :: 		while (1)
L_main0:
;Exemplo_2.c,20 :: 		LED = 0;
	BCF         RB0_bit+0, BitPos(RB0_bit+0) 
;Exemplo_2.c,21 :: 		delay_ms(delay);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;Exemplo_2.c,22 :: 		LED = 1;
	BSF         RB0_bit+0, BitPos(RB0_bit+0) 
;Exemplo_2.c,23 :: 		delay_ms(delay);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;Exemplo_2.c,27 :: 		}
	GOTO        L_main0
;Exemplo_2.c,28 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
