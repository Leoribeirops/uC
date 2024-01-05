
_main:

;Ex_08.c,15 :: 		void main() {
;Ex_08.c,16 :: 		trisd = 0; // Configura os pinos da porta D como saída para o LCD
	CLRF       TRISD+0
;Ex_08.c,17 :: 		trise = 0; // Configura os pinos da porta E como saída para o LCD
	CLRF       TRISE+0
;Ex_08.c,18 :: 		trisb = 1; // Configura o pino RB0 como entrada
	MOVLW      1
	MOVWF      TRISB+0
;Ex_08.c,20 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_08.c,22 :: 		while(1) { // Loop infinito
L_main0:
;Ex_08.c,23 :: 		if (portb.f0 == 1) { // Verifica se a chave 0 está pressionada
	BTFSS      PORTB+0, 0
	GOTO       L_main2
;Ex_08.c,24 :: 		lcd_out(1, 1, "TEC_"); // Escreve "TEC_" na posição atual do cursor
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Ex_08+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_08.c,25 :: 		delay_ms(1000); // Espera 1 segundo
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Ex_08.c,26 :: 		}
L_main2:
;Ex_08.c,27 :: 		}
	GOTO       L_main0
;Ex_08.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
