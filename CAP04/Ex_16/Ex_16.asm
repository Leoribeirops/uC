
_main:

;Ex_16.c,1 :: 		void main() {
;Ex_16.c,2 :: 		trisb=0;
	CLRF       TRISB+0
;Ex_16.c,3 :: 		while (1)
L_main0:
;Ex_16.c,5 :: 		portb=0b00010100;
	MOVLW      20
	MOVWF      PORTB+0
;Ex_16.c,6 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Ex_16.c,7 :: 		portb=0b00010010;
	MOVLW      18
	MOVWF      PORTB+0
;Ex_16.c,8 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Ex_16.c,9 :: 		portb=0b01000001;
	MOVLW      65
	MOVWF      PORTB+0
;Ex_16.c,10 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Ex_16.c,11 :: 		portb=0b00100001;
	MOVLW      33
	MOVWF      PORTB+0
;Ex_16.c,12 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Ex_16.c,13 :: 		}
	GOTO       L_main0
;Ex_16.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
