
_main:

;Ex5.c,4 :: 		void main() {
;Ex5.c,6 :: 		trisb = 1;
	MOVLW       1
	MOVWF       TRISB+0 
;Ex5.c,7 :: 		trisd = 0;
	CLRF        TRISD+0 
;Ex5.c,8 :: 		adcon0 = 0;
	CLRF        ADCON0+0 
;Ex5.c,9 :: 		adcon1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex5.c,11 :: 		while (1) {
L_main0:
;Ex5.c,12 :: 		if (portb.f0 == 0) {
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex5.c,13 :: 		for (i = 0; i < 4; i++) {  // Loop para percorrer os LEDs de 0 a 3
	CLRF        _i+0 
	CLRF        _i+1 
L_main3:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main13
	MOVLW       4
	SUBWF       _i+0, 0 
L__main13:
	BTFSC       STATUS+0, 0 
	GOTO        L_main4
;Ex5.c,14 :: 		portd = (1 << i);  // Liga o LED atual
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main14:
	BZ          L__main15
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main14
L__main15:
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Ex5.c,15 :: 		delay_ms(d1);  // Espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;Ex5.c,16 :: 		portd = 0;  // Desliga o LED atual
	CLRF        PORTD+0 
;Ex5.c,13 :: 		for (i = 0; i < 4; i++) {  // Loop para percorrer os LEDs de 0 a 3
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Ex5.c,17 :: 		}
	GOTO        L_main3
L_main4:
;Ex5.c,18 :: 		} else {
	GOTO        L_main7
L_main2:
;Ex5.c,19 :: 		for (i = 3; i >= 0; i--) {  // Loop para percorrer os LEDs de 3 a 0
	MOVLW       3
	MOVWF       _i+0 
	MOVLW       0
	MOVWF       _i+1 
L_main8:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main16
	MOVLW       0
	SUBWF       _i+0, 0 
L__main16:
	BTFSS       STATUS+0, 0 
	GOTO        L_main9
;Ex5.c,20 :: 		portd = (1 << i);  // Liga o LED atual
	MOVF        _i+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main17:
	BZ          L__main18
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main17
L__main18:
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Ex5.c,21 :: 		delay_ms(d1);  // Espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main11:
	DECFSZ      R13, 1, 1
	BRA         L_main11
	DECFSZ      R12, 1, 1
	BRA         L_main11
	DECFSZ      R11, 1, 1
	BRA         L_main11
	NOP
	NOP
;Ex5.c,22 :: 		portd = 0;  // Desliga o LED atual
	CLRF        PORTD+0 
;Ex5.c,19 :: 		for (i = 3; i >= 0; i--) {  // Loop para percorrer os LEDs de 3 a 0
	MOVLW       1
	SUBWF       _i+0, 1 
	MOVLW       0
	SUBWFB      _i+1, 1 
;Ex5.c,23 :: 		}
	GOTO        L_main8
L_main9:
;Ex5.c,24 :: 		}
L_main7:
;Ex5.c,25 :: 		}
	GOTO        L_main0
;Ex5.c,26 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
