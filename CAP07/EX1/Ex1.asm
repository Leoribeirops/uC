
_main:

;Ex1.c,1 :: 		void main() {
;Ex1.c,3 :: 		trisb=1;
	MOVLW       1
	MOVWF       TRISB+0 
;Ex1.c,4 :: 		trisd=0;
	CLRF        TRISD+0 
;Ex1.c,5 :: 		adcon0=0;
	CLRF        ADCON0+0 
;Ex1.c,6 :: 		adcon1=15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex1.c,8 :: 		while(1){
L_main0:
;Ex1.c,10 :: 		if (portb.f0 == 0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex1.c,11 :: 		portd.f0 = 1;
	BSF         PORTD+0, 0 
;Ex1.c,12 :: 		}
	GOTO        L_main3
L_main2:
;Ex1.c,14 :: 		portd.f0 = 0;
	BCF         PORTD+0, 0 
;Ex1.c,15 :: 		}
L_main3:
;Ex1.c,16 :: 		}
	GOTO        L_main0
;Ex1.c,17 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
