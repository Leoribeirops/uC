
_main:

;Ex3.c,2 :: 		void main() {
;Ex3.c,4 :: 		trisb=1;
	MOVLW       1
	MOVWF       TRISB+0 
;Ex3.c,5 :: 		trisd=0;
	CLRF        TRISD+0 
;Ex3.c,6 :: 		adcon0=0;
	CLRF        ADCON0+0 
;Ex3.c,7 :: 		adcon1=15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex3.c,9 :: 		while(1){
L_main0:
;Ex3.c,11 :: 		if (portb.f0 == 0) {
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex3.c,12 :: 		portd.f0 = 1;
	BSF         PORTD+0, 0 
;Ex3.c,13 :: 		delay_ms(d1);
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
;Ex3.c,14 :: 		portd.f0 = 0;
	BCF         PORTD+0, 0 
;Ex3.c,15 :: 		}
L_main2:
;Ex3.c,18 :: 		portd.f1 = 1;
	BSF         PORTD+0, 1 
;Ex3.c,19 :: 		delay_ms(d1);
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
;Ex3.c,20 :: 		portd.f1 = 0;
	BCF         PORTD+0, 1 
;Ex3.c,21 :: 		delay_ms(d1);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
	NOP
;Ex3.c,23 :: 		portd.f2 = 1;
	BSF         PORTD+0, 2 
;Ex3.c,24 :: 		delay_ms(d1);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
	NOP
;Ex3.c,25 :: 		portd.f2 = 0;
	BCF         PORTD+0, 2 
;Ex3.c,26 :: 		delay_ms(d1);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
	NOP
;Ex3.c,28 :: 		portd.f3 = 1;
	BSF         PORTD+0, 3 
;Ex3.c,29 :: 		delay_ms(d1);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	NOP
	NOP
;Ex3.c,30 :: 		portd.f3 = 0;
	BCF         PORTD+0, 3 
;Ex3.c,31 :: 		delay_ms(d1);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	DECFSZ      R11, 1, 1
	BRA         L_main9
	NOP
	NOP
;Ex3.c,32 :: 		}
	GOTO        L_main0
;Ex3.c,33 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
