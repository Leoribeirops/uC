
_main:

;Ex_09.c,1 :: 		void main() {
;Ex_09.c,3 :: 		trisb.f0=1;
	BSF         TRISB+0, 0 
;Ex_09.c,4 :: 		trisb.f1=1;
	BSF         TRISB+0, 1 
;Ex_09.c,6 :: 		trisd=0;
	CLRF        TRISD+0 
;Ex_09.c,8 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex_09.c,11 :: 		while(1){
L_main0:
;Ex_09.c,12 :: 		portd.f1=0;
	BCF         PORTD+0, 1 
;Ex_09.c,13 :: 		portd.f2=0;
	BCF         PORTD+0, 2 
;Ex_09.c,14 :: 		portd.f3=0;
	BCF         PORTD+0, 3 
;Ex_09.c,15 :: 		portd.f4=0;
	BCF         PORTD+0, 4 
;Ex_09.c,16 :: 		portd.f5=0;
	BCF         PORTD+0, 5 
;Ex_09.c,17 :: 		portd.f6=0;
	BCF         PORTD+0, 6 
;Ex_09.c,18 :: 		portd.f7=0;
	BCF         PORTD+0, 7 
;Ex_09.c,20 :: 		if(portb.f0 ^ portb.f1 == 0)
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
;Ex_09.c,21 :: 		portd.f0=1;
	BSF         PORTD+0, 0 
	GOTO        L_main3
L_main2:
;Ex_09.c,23 :: 		portd.f0=0;
	BCF         PORTD+0, 0 
L_main3:
;Ex_09.c,25 :: 		}
	GOTO        L_main0
;Ex_09.c,26 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
