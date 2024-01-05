
_main:

;Ex_07.c,4 :: 		void main() {
;Ex_07.c,6 :: 		trisb.f0=1;
	BSF         TRISB+0, 0 
;Ex_07.c,8 :: 		trisd = 0;
	CLRF        TRISD+0 
;Ex_07.c,9 :: 		adcon0 = 0;
	CLRF        ADCON0+0 
;Ex_07.c,10 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex_07.c,12 :: 		while(1){
L_main0:
;Ex_07.c,13 :: 		LED = ~ Chave;
	BTFSC       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L__main3
	BSF         RD0_bit+0, BitPos(RD0_bit+0) 
	GOTO        L__main4
L__main3:
	BCF         RD0_bit+0, BitPos(RD0_bit+0) 
L__main4:
;Ex_07.c,15 :: 		}
	GOTO        L_main0
;Ex_07.c,16 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
