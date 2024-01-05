
_main:

;Ex_03.c,3 :: 		void main() {
;Ex_03.c,5 :: 		TRISB=0;
	CLRF        TRISB+0 
;Ex_03.c,7 :: 		while(1){
L_main0:
;Ex_03.c,8 :: 		temp=457/10;
	MOVLW       45
	MOVWF       _temp+0 
;Ex_03.c,9 :: 		portb=temp%10;
	MOVLW       5
	MOVWF       PORTB+0 
;Ex_03.c,10 :: 		}
	GOTO        L_main0
;Ex_03.c,11 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
