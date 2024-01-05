
_main:

;Ex36.c,2 :: 		void main() {
;Ex36.c,3 :: 		TRISD = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex36.c,4 :: 		TRISA.RA5 = 0;  // Configura RA5 como saída
	BCF         TRISA+0, 5 
;Ex36.c,5 :: 		ADCON0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex36.c,6 :: 		ADCON1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex36.c,8 :: 		count = 0;  // Variável de contagem
	CLRF        _count+0 
;Ex36.c,10 :: 		while (1) {  // Loop infinito
L_main0:
;Ex36.c,11 :: 		while (count <= 15) {  // Loop de contagem de 0 a F
L_main2:
	MOVF        _count+0, 0 
	SUBLW       15
	BTFSS       STATUS+0, 0 
	GOTO        L_main3
;Ex36.c,12 :: 		switch(count) {
	GOTO        L_main4
;Ex36.c,13 :: 		case 0: PORTD = 0b00111111; break;  // 0
L_main6:
	MOVLW       63
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,14 :: 		case 1: PORTD = 0b00000110; break;  // 1
L_main7:
	MOVLW       6
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,15 :: 		case 2: PORTD = 0b01011011; break;  // 2
L_main8:
	MOVLW       91
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,16 :: 		case 3: PORTD = 0b01001111; break;  // 3
L_main9:
	MOVLW       79
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,17 :: 		case 4: PORTD = 0b01100110; break;  // 4
L_main10:
	MOVLW       102
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,18 :: 		case 5: PORTD = 0b01101101; break;  // 5
L_main11:
	MOVLW       109
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,19 :: 		case 6: PORTD = 0b01111101; break;  // 6
L_main12:
	MOVLW       125
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,20 :: 		case 7: PORTD = 0b00000111; break;  // 7
L_main13:
	MOVLW       7
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,21 :: 		case 8: PORTD = 0b01111111; break;  // 8
L_main14:
	MOVLW       127
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,22 :: 		case 9: PORTD = 0b01101111; break;  // 9
L_main15:
	MOVLW       111
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,23 :: 		case 10: PORTD = 0b01110111; break;  // A
L_main16:
	MOVLW       119
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,24 :: 		case 11: PORTD = 0b01111100; break;  // B
L_main17:
	MOVLW       124
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,25 :: 		case 12: PORTD = 0b00111001; break;  // C
L_main18:
	MOVLW       57
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,26 :: 		case 13: PORTD = 0b01011110; break;  // D
L_main19:
	MOVLW       94
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,27 :: 		case 14: PORTD = 0b01111001; break;  // E
L_main20:
	MOVLW       121
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,28 :: 		case 15: PORTD = 0b01110001; break;  // F
L_main21:
	MOVLW       113
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex36.c,29 :: 		}
L_main4:
	MOVF        _count+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main6
	MOVF        _count+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main7
	MOVF        _count+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main8
	MOVF        _count+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main9
	MOVF        _count+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main10
	MOVF        _count+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_main11
	MOVF        _count+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_main12
	MOVF        _count+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_main13
	MOVF        _count+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_main14
	MOVF        _count+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_main15
	MOVF        _count+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_main16
	MOVF        _count+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_main17
	MOVF        _count+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_main18
	MOVF        _count+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_main19
	MOVF        _count+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_main20
	MOVF        _count+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_main21
L_main5:
;Ex36.c,30 :: 		PORTA.RA5 = 1;  // Ativa o display
	BSF         PORTA+0, 5 
;Ex36.c,31 :: 		Delay_ms(1000);  // Aguarda 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main22:
	DECFSZ      R13, 1, 1
	BRA         L_main22
	DECFSZ      R12, 1, 1
	BRA         L_main22
	DECFSZ      R11, 1, 1
	BRA         L_main22
	NOP
	NOP
;Ex36.c,32 :: 		PORTA.RA5 = 0;  // Desativa o display
	BCF         PORTA+0, 5 
;Ex36.c,33 :: 		count++;  // Incrementa a contagem
	INCF        _count+0, 1 
;Ex36.c,34 :: 		}
	GOTO        L_main2
L_main3:
;Ex36.c,35 :: 		count = 0;  // Reinicia a contagem
	CLRF        _count+0 
;Ex36.c,36 :: 		}
	GOTO        L_main0
;Ex36.c,37 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
