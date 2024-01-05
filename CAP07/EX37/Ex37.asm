
_main:

;Ex37.c,2 :: 		void main() {
;Ex37.c,3 :: 		TRISD = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex37.c,4 :: 		TRISA.RA5 = 0;  // Configura RA5 como saída
	BCF         TRISA+0, 5 
;Ex37.c,5 :: 		ADCON0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex37.c,6 :: 		ADCON1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex37.c,8 :: 		count = 2;  // Inicia a contagem em 2
	MOVLW       2
	MOVWF       _count+0 
;Ex37.c,10 :: 		while (1) {  // Loop infinito
L_main0:
;Ex37.c,11 :: 		while (count <= 8) {  // Loop de contagem de 2 a 8
L_main2:
	MOVF        _count+0, 0 
	SUBLW       8
	BTFSS       STATUS+0, 0 
	GOTO        L_main3
;Ex37.c,12 :: 		switch(count) {
	GOTO        L_main4
;Ex37.c,13 :: 		case 2: PORTD = 0b01011011; break;  // 2
L_main6:
	MOVLW       91
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex37.c,14 :: 		case 4: PORTD = 0b01100110; break;  // 4
L_main7:
	MOVLW       102
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex37.c,15 :: 		case 6: PORTD = 0b01111101; break;  // 6
L_main8:
	MOVLW       125
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex37.c,16 :: 		case 8: PORTD = 0b01111111; break;  // 8
L_main9:
	MOVLW       127
	MOVWF       PORTD+0 
	GOTO        L_main5
;Ex37.c,17 :: 		}
L_main4:
	MOVF        _count+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main6
	MOVF        _count+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main7
	MOVF        _count+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_main8
	MOVF        _count+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_main9
L_main5:
;Ex37.c,18 :: 		PORTA.RA5 = 1;  // Ativa o display
	BSF         PORTA+0, 5 
;Ex37.c,19 :: 		Delay_ms(1000);  // Aguarda 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	DECFSZ      R11, 1, 1
	BRA         L_main10
	NOP
	NOP
;Ex37.c,20 :: 		PORTA.RA5 = 0;  // Desativa o display
	BCF         PORTA+0, 5 
;Ex37.c,21 :: 		count += 2;  // Incrementa a contagem em 2 para obter o próximo número par
	MOVLW       2
	ADDWF       _count+0, 1 
;Ex37.c,22 :: 		}
	GOTO        L_main2
L_main3:
;Ex37.c,23 :: 		count = 2;  // Reinicia a contagem em 2
	MOVLW       2
	MOVWF       _count+0 
;Ex37.c,24 :: 		}
	GOTO        L_main0
;Ex37.c,25 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
