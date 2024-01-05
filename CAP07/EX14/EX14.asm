
_main:

;EX14.c,6 :: 		void main() {
;EX14.c,7 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;EX14.c,8 :: 		trisa = 0;  // Configura PORTA como saída
	CLRF        TRISA+0 
;EX14.c,9 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;EX14.c,10 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;EX14.c,11 :: 		portb.f0 = 1;
	BSF         PORTB+0, 0 
;EX14.c,12 :: 		portb.f1 = 1;
	BSF         PORTB+0, 1 
;EX14.c,13 :: 		portb.f2 = 1;
	BSF         PORTB+0, 2 
;EX14.c,14 :: 		peopleCount = 0;
	CLRF        _peopleCount+0 
;EX14.c,16 :: 		while (1) {
L_main0:
;EX14.c,17 :: 		switch(peopleCount) {
	GOTO        L_main2
;EX14.c,18 :: 		case 0: portd=0b00111111; break;  // 0
L_main4:
	MOVLW       63
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,19 :: 		case 1: portd=0b00000110; break;  // 1
L_main5:
	MOVLW       6
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,20 :: 		case 2: portd=0b01011011; break;  // 2
L_main6:
	MOVLW       91
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,21 :: 		case 3: portd=0b01001111; break;  // 3
L_main7:
	MOVLW       79
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,22 :: 		case 4: portd=0b01100110; break;  // 4
L_main8:
	MOVLW       102
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,23 :: 		case 5: portd=0b01101101; break;  // 5
L_main9:
	MOVLW       109
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,24 :: 		case 6: portd=0b01111101; break;  // 6
L_main10:
	MOVLW       125
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,25 :: 		case 7: portd=0b00000111; break;  // 7
L_main11:
	MOVLW       7
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,26 :: 		case 8: portd=0b01111111; break;  // 8
L_main12:
	MOVLW       127
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,27 :: 		case 9: portd=0b01101111; break;  // 9
L_main13:
	MOVLW       111
	MOVWF       PORTD+0 
	GOTO        L_main3
;EX14.c,28 :: 		}
L_main2:
	MOVF        _peopleCount+0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_main4
	MOVF        _peopleCount+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main5
	MOVF        _peopleCount+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main6
	MOVF        _peopleCount+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main7
	MOVF        _peopleCount+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main8
	MOVF        _peopleCount+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_main9
	MOVF        _peopleCount+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_main10
	MOVF        _peopleCount+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_main11
	MOVF        _peopleCount+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_main12
	MOVF        _peopleCount+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_main13
L_main3:
;EX14.c,30 :: 		if (portb.f0 == 0 && lastStateF0 == 1) {  // Se a chave 0 é pressionada (entrada de pessoa)
	BTFSC       PORTB+0, 0 
	GOTO        L_main16
	MOVF        _lastStateF0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main16
L__main29:
;EX14.c,31 :: 		if (peopleCount < 9) {  // Verifica se o número de pessoas é menor que 9
	MOVLW       9
	SUBWF       _peopleCount+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main17
;EX14.c,32 :: 		peopleCount++;  // Incrementa o contador de pessoas
	INCF        _peopleCount+0, 1 
;EX14.c,33 :: 		}
L_main17:
;EX14.c,35 :: 		delay_ms(1000);  // Aguarda 100 ms para evitar contagem múltipla de uma única pessoa
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main18:
	DECFSZ      R13, 1, 1
	BRA         L_main18
	DECFSZ      R12, 1, 1
	BRA         L_main18
	DECFSZ      R11, 1, 1
	BRA         L_main18
	NOP
	NOP
;EX14.c,36 :: 		}
L_main16:
;EX14.c,38 :: 		if (portb.f1 == 0 && lastStateF1 == 1) {  // Se a chave 1 é pressionada (saída de pessoa)
	BTFSC       PORTB+0, 1 
	GOTO        L_main21
	MOVF        _lastStateF1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main21
L__main28:
;EX14.c,39 :: 		if (peopleCount > 0) {  // Verifica se o número de pessoas é maior que 0
	MOVF        _peopleCount+0, 0 
	SUBLW       0
	BTFSC       STATUS+0, 0 
	GOTO        L_main22
;EX14.c,40 :: 		peopleCount--;  // Decrementa o contador de pessoas
	DECF        _peopleCount+0, 1 
;EX14.c,41 :: 		}
L_main22:
;EX14.c,43 :: 		delay_ms(1000);  // Aguarda 100 ms para evitar contagem múltipla de uma única pessoa
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main23:
	DECFSZ      R13, 1, 1
	BRA         L_main23
	DECFSZ      R12, 1, 1
	BRA         L_main23
	DECFSZ      R11, 1, 1
	BRA         L_main23
	NOP
	NOP
;EX14.c,44 :: 		}
L_main21:
;EX14.c,46 :: 		if (portb.f2 == 0 && lastStateF2 == 1) {
	BTFSC       PORTB+0, 2 
	GOTO        L_main26
	MOVF        _lastStateF2+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main26
L__main27:
;EX14.c,47 :: 		peopleCount = 0;
	CLRF        _peopleCount+0 
;EX14.c,48 :: 		}
L_main26:
;EX14.c,50 :: 		porta=0b00001000;  // Exibe o número de pessoas no display ativado por RA3
	MOVLW       8
	MOVWF       PORTA+0 
;EX14.c,51 :: 		}
	GOTO        L_main0
;EX14.c,52 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
