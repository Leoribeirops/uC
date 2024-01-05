
_main:

;Ex2.c,1 :: 		void main() {
;Ex2.c,3 :: 		trisb=1;
	MOVLW       1
	MOVWF       TRISB+0 
;Ex2.c,4 :: 		trisd=0;
	CLRF        TRISD+0 
;Ex2.c,5 :: 		adcon0=0;
	CLRF        ADCON0+0 
;Ex2.c,6 :: 		adcon1=15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex2.c,8 :: 		while(1){
L_main0:
;Ex2.c,10 :: 		if (portb.f0 == 1)
	BTFSS       PORTB+0, 0 
	GOTO        L_main2
;Ex2.c,11 :: 		portd.f0 = 0;
	BCF         PORTD+0, 0 
	GOTO        L_main3
L_main2:
;Ex2.c,13 :: 		portd.f0 = 1;
	BSF         PORTD+0, 0 
L_main3:
;Ex2.c,14 :: 		}
	GOTO        L_main0
;Ex2.c,15 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
