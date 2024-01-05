
_main:

;Ex_01.c,1 :: 		void main() {
;Ex_01.c,3 :: 		TRISB= 0;
	CLRF        TRISB+0 
;Ex_01.c,5 :: 		while(1){
L_main0:
;Ex_01.c,7 :: 		portb=867/100;
	MOVLW       8
	MOVWF       PORTB+0 
;Ex_01.c,9 :: 		}
	GOTO        L_main0
;Ex_01.c,10 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
