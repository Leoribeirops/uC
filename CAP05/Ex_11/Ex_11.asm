
_main:

;Ex_11.c,8 :: 		void main() {
;Ex_11.c,11 :: 		TRISB=0;
	CLRF        TRISB+0 
;Ex_11.c,13 :: 		trisd=0;
	CLRF        TRISD+0 
;Ex_11.c,14 :: 		adcon0 = 0;
	CLRF        ADCON0+0 
;Ex_11.c,15 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex_11.c,18 :: 		while(1){
L_main0:
;Ex_11.c,19 :: 		portd.f1=0;
	BCF         PORTD+0, 1 
;Ex_11.c,20 :: 		portd.f2=0;
	BCF         PORTD+0, 2 
;Ex_11.c,21 :: 		portd.f3=0;
	BCF         PORTD+0, 3 
;Ex_11.c,22 :: 		portd.f4=0;
	BCF         PORTD+0, 4 
;Ex_11.c,23 :: 		portd.f5=0;
	BCF         PORTD+0, 5 
;Ex_11.c,24 :: 		portd.f6=0;
	BCF         PORTD+0, 6 
;Ex_11.c,25 :: 		portd.f7=0;
	BCF         PORTD+0, 7 
;Ex_11.c,26 :: 		PORTB=15;
	MOVLW       15
	MOVWF       PORTB+0 
;Ex_11.c,30 :: 		if ( portb ==  15)
	MOVF        PORTB+0, 0 
	XORLW       15
	BTFSS       STATUS+0, 2 
	GOTO        L_main2
;Ex_11.c,32 :: 		LED=1;
	BSF         RD0_bit+0, BitPos(RD0_bit+0) 
;Ex_11.c,33 :: 		}
	GOTO        L_main3
L_main2:
;Ex_11.c,36 :: 		LED=0;
	BCF         RD0_bit+0, BitPos(RD0_bit+0) 
;Ex_11.c,37 :: 		}
L_main3:
;Ex_11.c,38 :: 		}
	GOTO        L_main0
;Ex_11.c,39 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
