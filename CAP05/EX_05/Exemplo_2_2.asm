
_main:

;Exemplo_2_2.c,7 :: 		void main() {
;Exemplo_2_2.c,11 :: 		contador = 0;
	CLRF        R0 
	CLRF        R1 
;Exemplo_2_2.c,15 :: 		trisb.f0=1;
	BSF         TRISB+0, 0 
;Exemplo_2_2.c,16 :: 		trisb.f1=1;
	BSF         TRISB+0, 1 
;Exemplo_2_2.c,17 :: 		trisc.f0=0;
	BCF         TRISC+0, 0 
;Exemplo_2_2.c,18 :: 		trisd = 0;
	CLRF        TRISD+0 
;Exemplo_2_2.c,19 :: 		adcon0 = 0;
	CLRF        ADCON0+0 
;Exemplo_2_2.c,20 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Exemplo_2_2.c,22 :: 		while(1){
L_main0:
;Exemplo_2_2.c,25 :: 		portd=contador;
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Exemplo_2_2.c,26 :: 		contador++;
	INFSNZ      R0, 1 
	INCF        R1, 1 
;Exemplo_2_2.c,27 :: 		delay_ms(d1);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;Exemplo_2_2.c,29 :: 		OUT_S = ~IN_A | ~IN_B;
	BTFSC       RB0_bit+0, BitPos(RB0_bit+0) 
	GOTO        L__main4
	BSF         RC0_bit+0, BitPos(RC0_bit+0) 
	GOTO        L__main5
L__main4:
	BCF         RC0_bit+0, BitPos(RC0_bit+0) 
L__main5:
	BTFSC       RB1_bit+0, BitPos(RB1_bit+0) 
	GOTO        L__main6
	BSF         STATUS+0, 0 
	GOTO        L__main7
L__main6:
	BCF         STATUS+0, 0 
L__main7:
	BTFSC       RC0_bit+0, BitPos(RC0_bit+0) 
	GOTO        L__main8
	BTFSC       STATUS+0, 0 
	GOTO        L__main8
	BCF         RC0_bit+0, BitPos(RC0_bit+0) 
	GOTO        L__main9
L__main8:
	BSF         RC0_bit+0, BitPos(RC0_bit+0) 
L__main9:
;Exemplo_2_2.c,32 :: 		}
	GOTO        L_main0
;Exemplo_2_2.c,33 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
