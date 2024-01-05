
_main:

;MyProject.c,7 :: 		void main()
;MyProject.c,10 :: 		TRISB = 0;
	CLRF        TRISB+0 
;MyProject.c,11 :: 		LATB = 0;
	CLRF        LATB+0 
;MyProject.c,17 :: 		while (1)
L_main0:
;MyProject.c,20 :: 		LATB = 0;
	CLRF        LATB+0 
;MyProject.c,21 :: 		delay_ms(delay);
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
;MyProject.c,22 :: 		LATB = 1;
	MOVLW       1
	MOVWF       LATB+0 
;MyProject.c,23 :: 		delay_ms(delay);
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
;MyProject.c,24 :: 		LATB = 2;
	MOVLW       2
	MOVWF       LATB+0 
;MyProject.c,25 :: 		delay_ms(delay);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
	NOP
;MyProject.c,29 :: 		}
	GOTO        L_main0
;MyProject.c,30 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
