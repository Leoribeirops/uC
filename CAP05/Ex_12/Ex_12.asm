
_main:

;Ex_12.c,3 :: 		void main() // in�cio do programa principal
;Ex_12.c,6 :: 		trisb = 0; // configure os pinos da porta B como sa�da digital
	CLRF        TRISB+0 
;Ex_12.c,7 :: 		trisd= 0;
	CLRF        TRISD+0 
;Ex_12.c,8 :: 		adcon0=0;
	CLRF        ADCON0+0 
;Ex_12.c,9 :: 		adcon1=15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex_12.c,12 :: 		while (1) // in�cio de um loop infinito
L_main0:
;Ex_12.c,14 :: 		portd=0;
	CLRF        PORTD+0 
;Ex_12.c,15 :: 		portb=128; //255
	MOVLW       128
	MOVWF       PORTB+0 
;Ex_12.c,16 :: 		delay_ms(d1);
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
;Ex_12.c,17 :: 		portb= portb >> 1;
	MOVF        PORTB+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Ex_12.c,18 :: 		delay_ms(d1);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;Ex_12.c,19 :: 		portb= portb >> 1;
	MOVF        PORTB+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Ex_12.c,20 :: 		delay_ms(d1);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
	NOP
;Ex_12.c,21 :: 		portb= portb >> 1;
	MOVF        PORTB+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Ex_12.c,22 :: 		delay_ms(d1);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
	NOP
;Ex_12.c,23 :: 		portb= portb >> 1;
	MOVF        PORTB+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Ex_12.c,24 :: 		delay_ms(d1);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
	NOP
;Ex_12.c,25 :: 		portb= portb >> 1;
	MOVF        PORTB+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Ex_12.c,26 :: 		delay_ms(d1);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
	NOP
;Ex_12.c,27 :: 		portb= portb >> 1;
	MOVF        PORTB+0, 0 
	MOVWF       R0 
	RRCF        R0, 1 
	BCF         R0, 7 
	MOVF        R0, 0 
	MOVWF       PORTB+0 
;Ex_12.c,28 :: 		delay_ms(d1);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	NOP
	NOP
;Ex_12.c,29 :: 		}
	GOTO        L_main0
;Ex_12.c,30 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
