
_main:

;Ex_04.c,2 :: 		void main() {
;Ex_04.c,4 :: 		TRISB=0;
	CLRF        TRISB+0 
;Ex_04.c,6 :: 		while(1){
L_main0:
;Ex_04.c,7 :: 		portb=745/100;
	MOVLW       7
	MOVWF       PORTB+0 
;Ex_04.c,8 :: 		delay_ms(d1);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;Ex_04.c,9 :: 		portb=45/10;
	MOVLW       4
	MOVWF       PORTB+0 
;Ex_04.c,10 :: 		delay_ms(d1);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;Ex_04.c,11 :: 		portb=45%10;
	MOVLW       5
	MOVWF       PORTB+0 
;Ex_04.c,12 :: 		delay_ms(d1);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;Ex_04.c,13 :: 		}
	GOTO        L_main0
;Ex_04.c,15 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
