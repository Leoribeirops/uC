
_main:

;Ex7.c,7 :: 		void main() {
;Ex7.c,9 :: 		trisb = 1;  // Configura PORTB como entrada
	MOVLW       1
	MOVWF       TRISB+0 
;Ex7.c,10 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex7.c,11 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex7.c,12 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex7.c,15 :: 		while (1) {
L_main0:
;Ex7.c,16 :: 		if (portb.f0 == 1) {  // Se a chave estiver aberta
	BTFSS       PORTB+0, 0 
	GOTO        L_main2
;Ex7.c,17 :: 		for (i = 0; i < 2; i++) {  // Pisca 2 vezes
	CLRF        _i+0 
	CLRF        _i+1 
L_main3:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main21
	MOVLW       2
	SUBWF       _i+0, 0 
L__main21:
	BTFSC       STATUS+0, 0 
	GOTO        L_main4
;Ex7.c,18 :: 		portd = 0x0F;  // Liga todos os LEDs
	MOVLW       15
	MOVWF       PORTD+0 
;Ex7.c,19 :: 		delay_ms(tempo02Hz);  // Espera 2500 ms
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
;Ex7.c,20 :: 		portd = 0;  // Desliga todos os LEDs
	CLRF        PORTD+0 
;Ex7.c,21 :: 		delay_ms(tempo02Hz);  // Espera 2500 ms
	MOVLW       26
	MOVWF       R11, 0
	MOVLW       94
	MOVWF       R12, 0
	MOVLW       110
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
;Ex7.c,17 :: 		for (i = 0; i < 2; i++) {  // Pisca 2 vezes
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Ex7.c,22 :: 		}
	GOTO        L_main3
L_main4:
;Ex7.c,23 :: 		delay_ms(espera5s);  // Espera 5 segundos
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
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
;Ex7.c,24 :: 		} else {  // Se a chave estiver fechada
	GOTO        L_main9
L_main2:
;Ex7.c,25 :: 		for (i = 0; i < 2; i++) {  // Pisca 2 vezes
	CLRF        _i+0 
	CLRF        _i+1 
L_main10:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main22
	MOVLW       2
	SUBWF       _i+0, 0 
L__main22:
	BTFSC       STATUS+0, 0 
	GOTO        L_main11
;Ex7.c,26 :: 		portd.f0 = 1;  // Liga o LED 0
	BSF         PORTD+0, 0 
;Ex7.c,27 :: 		portd.f3 = 1;  // Liga o LED 3
	BSF         PORTD+0, 3 
;Ex7.c,28 :: 		delay_ms(tempo1Hz);  // Espera 1000 ms
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main13:
	DECFSZ      R13, 1, 1
	BRA         L_main13
	DECFSZ      R12, 1, 1
	BRA         L_main13
	DECFSZ      R11, 1, 1
	BRA         L_main13
	NOP
	NOP
;Ex7.c,29 :: 		portd.f0 = 0;  // Desliga o LED 0
	BCF         PORTD+0, 0 
;Ex7.c,30 :: 		portd.f3 = 0;  // Desliga o LED 3
	BCF         PORTD+0, 3 
;Ex7.c,31 :: 		delay_ms(tempo1Hz);  // Espera 1000 ms
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main14:
	DECFSZ      R13, 1, 1
	BRA         L_main14
	DECFSZ      R12, 1, 1
	BRA         L_main14
	DECFSZ      R11, 1, 1
	BRA         L_main14
	NOP
	NOP
;Ex7.c,25 :: 		for (i = 0; i < 2; i++) {  // Pisca 2 vezes
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Ex7.c,32 :: 		}
	GOTO        L_main10
L_main11:
;Ex7.c,33 :: 		for (i = 0; i < 3; i++) {  // Pisca 3 vezes alternadamente
	CLRF        _i+0 
	CLRF        _i+1 
L_main15:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main23
	MOVLW       3
	SUBWF       _i+0, 0 
L__main23:
	BTFSC       STATUS+0, 0 
	GOTO        L_main16
;Ex7.c,34 :: 		portd.f1 = 1;  // Liga o LED 1
	BSF         PORTD+0, 1 
;Ex7.c,35 :: 		portd.f2 = 0;  // Desliga o LED 2
	BCF         PORTD+0, 2 
;Ex7.c,36 :: 		delay_ms(tempo05Hz);  // Espera 2000 ms
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main18:
	DECFSZ      R13, 1, 1
	BRA         L_main18
	DECFSZ      R12, 1, 1
	BRA         L_main18
	DECFSZ      R11, 1, 1
	BRA         L_main18
	NOP
;Ex7.c,37 :: 		portd.f1 = 0;  // Desliga o LED 1
	BCF         PORTD+0, 1 
;Ex7.c,38 :: 		portd.f2 = 1;  // Liga o LED 2
	BSF         PORTD+0, 2 
;Ex7.c,39 :: 		delay_ms(tempo05Hz);  // Espera 2000 ms
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main19:
	DECFSZ      R13, 1, 1
	BRA         L_main19
	DECFSZ      R12, 1, 1
	BRA         L_main19
	DECFSZ      R11, 1, 1
	BRA         L_main19
	NOP
;Ex7.c,33 :: 		for (i = 0; i < 3; i++) {  // Pisca 3 vezes alternadamente
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;Ex7.c,40 :: 		}
	GOTO        L_main15
L_main16:
;Ex7.c,41 :: 		}
L_main9:
;Ex7.c,42 :: 		}
	GOTO        L_main0
;Ex7.c,43 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
