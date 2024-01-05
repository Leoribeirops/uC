
_main:

;EX_08.c,5 :: 		void main() {
;EX_08.c,7 :: 		trisb.f0=1;
	BSF         TRISB+0, 0 
;EX_08.c,8 :: 		trisb.f1=1;
	BSF         TRISB+0, 1 
;EX_08.c,10 :: 		trisd=0;
	CLRF        TRISD+0 
;EX_08.c,12 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;EX_08.c,15 :: 		while(1){
L_main0:
;EX_08.c,16 :: 		portd.f1=0;
	BCF         PORTD+0, 1 
;EX_08.c,17 :: 		portd.f2=0;
	BCF         PORTD+0, 2 
;EX_08.c,18 :: 		portd.f3=0;
	BCF         PORTD+0, 3 
;EX_08.c,19 :: 		portd.f4=0;
	BCF         PORTD+0, 4 
;EX_08.c,20 :: 		portd.f5=0;
	BCF         PORTD+0, 5 
;EX_08.c,21 :: 		portd.f6=0;
	BCF         PORTD+0, 6 
;EX_08.c,22 :: 		portd.f7=0;
	BCF         PORTD+0, 7 
;EX_08.c,24 :: 		LED = (IN_A & IN_B);
	BTFSS       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L__main3
	BTFSS       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L__main3
	BSF         RD0_bit+0, BitPos(RD0_bit+0) 
	GOTO        L__main4
L__main3:
	BCF         RD0_bit+0, BitPos(RD0_bit+0) 
L__main4:
;EX_08.c,26 :: 		}
	GOTO        L_main0
;EX_08.c,27 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
