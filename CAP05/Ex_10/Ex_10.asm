
_main:

;Ex_10.c,4 :: 		void main() {
;Ex_10.c,6 :: 		trisb.f0=1;
	BSF         TRISB+0, 0 
;Ex_10.c,7 :: 		trisb.f1=1;
	BSF         TRISB+0, 1 
;Ex_10.c,9 :: 		trisd=0;
	CLRF        TRISD+0 
;Ex_10.c,11 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex_10.c,14 :: 		while(1){
L_main0:
;Ex_10.c,15 :: 		portd.f1=0;
	BCF         PORTD+0, 1 
;Ex_10.c,16 :: 		portd.f2=0;
	BCF         PORTD+0, 2 
;Ex_10.c,17 :: 		portd.f3=0;
	BCF         PORTD+0, 3 
;Ex_10.c,18 :: 		portd.f4=0;
	BCF         PORTD+0, 4 
;Ex_10.c,19 :: 		portd.f5=0;
	BCF         PORTD+0, 5 
;Ex_10.c,20 :: 		portd.f6=0;
	BCF         PORTD+0, 6 
;Ex_10.c,21 :: 		portd.f7=0;
	BCF         PORTD+0, 7 
;Ex_10.c,23 :: 		LED = 1;
	BSF         RD0_bit+0, BitPos(RD0_bit+0) 
;Ex_10.c,24 :: 		delay_ms(d1);
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
;Ex_10.c,25 :: 		LED = ~LED;
	BTG         RD0_bit+0, BitPos(RD0_bit+0) 
;Ex_10.c,26 :: 		delay_ms(d1);
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
;Ex_10.c,28 :: 		}
	GOTO        L_main0
;Ex_10.c,29 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
