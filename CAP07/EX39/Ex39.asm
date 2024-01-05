
_main:

;Ex39.c,4 :: 		void main() {
;Ex39.c,5 :: 		TRISD = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex39.c,6 :: 		PORTD = 0;  // Inicialmente, todos os LEDs estão desligados
	CLRF        PORTD+0 
;Ex39.c,7 :: 		ADCON0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex39.c,8 :: 		ADCON1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex39.c,10 :: 		while (1) {  // Loop infinito
L_main0:
;Ex39.c,11 :: 		if (PORTD.F0 == 0 && lastState == 1) {  // Se a chave S0 for pressionada e estava liberada anteriormente
	BTFSC       PORTD+0, 0 
	GOTO        L_main4
	MOVF        _lastState+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main4
L__main10:
;Ex39.c,12 :: 		lastState = 0;  // Atualiza o último estado da chave
	CLRF        _lastState+0 
;Ex39.c,13 :: 		} else if (PORTD.F0 == 1 && lastState == 0) {  // Se a chave S0 for liberada e estava pressionada anteriormente
	GOTO        L_main5
L_main4:
	BTFSS       PORTD+0, 0 
	GOTO        L_main8
	MOVF        _lastState+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
L__main9:
;Ex39.c,14 :: 		lastState = 1;  // Atualiza o último estado da chave
	MOVLW       1
	MOVWF       _lastState+0 
;Ex39.c,15 :: 		PORTD = 0;  // Desliga todos os LEDs
	CLRF        PORTD+0 
;Ex39.c,16 :: 		count = (count + 1) % 4;  // Incrementa a contagem e reinicia se alcançar 4
	MOVF        _count+0, 0 
	ADDLW       1
	MOVWF       R0 
	CLRF        R1 
	MOVLW       0
	ADDWFC      R1, 1 
	MOVLW       4
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _count+0 
;Ex39.c,17 :: 		PORTD = 1 << count;  // Liga o próximo LED
	MOVF        R0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__main12:
	BZ          L__main13
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main12
L__main13:
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Ex39.c,18 :: 		}
L_main8:
L_main5:
;Ex39.c,19 :: 		}
	GOTO        L_main0
;Ex39.c,20 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
