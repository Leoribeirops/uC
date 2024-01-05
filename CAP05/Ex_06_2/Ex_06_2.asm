
_main:

;Ex_06_2.c,1 :: 		void main() {
;Ex_06_2.c,7 :: 		trisb.f0=1;
	BSF         TRISB+0, 0 
;Ex_06_2.c,8 :: 		trisd.f0=0;
	BCF         TRISD+0, 0 
;Ex_06_2.c,10 :: 		trisd = 0;
	CLRF        TRISD+0 
;Ex_06_2.c,11 :: 		portb=0;
	CLRF        PORTB+0 
;Ex_06_2.c,12 :: 		adcon0 = 0;
	CLRF        ADCON0+0 
;Ex_06_2.c,13 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex_06_2.c,15 :: 		while(1){
L_main0:
;Ex_06_2.c,16 :: 		if(portb.f0 ^ portb.f1 == 0)
	BTFSC       PORTB+0, 1 
	GOTO        L__main5
	BSF         STATUS+0, 0 
	GOTO        L__main6
L__main5:
	BCF         STATUS+0, 0 
L__main6:
	BTFSC       PORTB+0, 0 
	GOTO        L__main7
	BTFSC       STATUS+0, 0 
	GOTO        L__main9
	BCF         R0, 0 
	GOTO        L__main8
L__main9:
	BSF         R0, 0 
	GOTO        L__main8
L__main7:
	BTFSC       STATUS+0, 0 
	GOTO        L__main10
	BSF         R0, 0 
	GOTO        L__main8
L__main10:
	BCF         R0, 0 
L__main8:
	BTFSS       R0, 0 
	GOTO        L_main2
;Ex_06_2.c,17 :: 		portd.f0=0;
	BCF         PORTD+0, 0 
	GOTO        L_main3
L_main2:
;Ex_06_2.c,19 :: 		portd.f0=1;
	BSF         PORTD+0, 0 
L_main3:
;Ex_06_2.c,21 :: 		}
	GOTO        L_main0
;Ex_06_2.c,22 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
