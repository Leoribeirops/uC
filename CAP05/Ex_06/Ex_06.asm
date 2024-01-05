
_main:

;Ex_06.c,1 :: 		void main() {
;Ex_06.c,7 :: 		trisb.f0=1;
	BSF         TRISB+0, 0 
;Ex_06.c,8 :: 		trisd.f0=0;
	BCF         TRISD+0, 0 
;Ex_06.c,10 :: 		trisd = 0;
	CLRF        TRISD+0 
;Ex_06.c,11 :: 		portb=0;
	CLRF        PORTB+0 
;Ex_06.c,12 :: 		adcon0 = 0;
	CLRF        ADCON0+0 
;Ex_06.c,13 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex_06.c,15 :: 		while(1){
L_main0:
;Ex_06.c,16 :: 		if(portb.f0 == 0)
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex_06.c,17 :: 		portd.f0=0;
	BCF         PORTD+0, 0 
	GOTO        L_main3
L_main2:
;Ex_06.c,19 :: 		portd.f0=1;
	BSF         PORTD+0, 0 
L_main3:
;Ex_06.c,21 :: 		}
	GOTO        L_main0
;Ex_06.c,22 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
