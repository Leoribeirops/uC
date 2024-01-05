
_main:

;Ex_02.c,1 :: 		void main() {
;Ex_02.c,3 :: 		TRISB=0;
	CLRF        TRISB+0 
;Ex_02.c,5 :: 		while(1){
L_main0:
;Ex_02.c,7 :: 		portb=365%36;
	MOVLW       5
	MOVWF       PORTB+0 
;Ex_02.c,8 :: 		}
	GOTO        L_main0
;Ex_02.c,9 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
