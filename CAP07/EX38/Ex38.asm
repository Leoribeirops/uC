
_main:

;Ex38.c,2 :: 		void main() {
;Ex38.c,3 :: 		TRISD = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex38.c,4 :: 		ADCON0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex38.c,5 :: 		ADCON1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex38.c,7 :: 		ledPosition = 1;  // Inicializa a posição do LED
	MOVLW       1
	MOVWF       _ledPosition+0 
;Ex38.c,9 :: 		while (1) {  // Loop infinito
L_main0:
;Ex38.c,10 :: 		unsigned char count = 0;  // Inicializa o contador
	CLRF        main_count_L1+0 
;Ex38.c,11 :: 		while (count < 8) {  // Loop para percorrer todos os LEDs
L_main2:
	MOVLW       8
	SUBWF       main_count_L1+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;Ex38.c,12 :: 		PORTD = ledPosition << count;  // Desloca a posição do LED
	MOVF        main_count_L1+0, 0 
	MOVWF       R1 
	MOVF        _ledPosition+0, 0 
	MOVWF       R0 
	MOVF        R1, 0 
L__main6:
	BZ          L__main7
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__main6
L__main7:
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Ex38.c,13 :: 		Delay_ms(500);  // Espera 0,5 segundos
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
;Ex38.c,14 :: 		PORTD = 0;  // Desliga o LED atual
	CLRF        PORTD+0 
;Ex38.c,15 :: 		count++;  // Incrementa o contador
	INCF        main_count_L1+0, 1 
;Ex38.c,16 :: 		}
	GOTO        L_main2
L_main3:
;Ex38.c,17 :: 		}
	GOTO        L_main0
;Ex38.c,18 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
