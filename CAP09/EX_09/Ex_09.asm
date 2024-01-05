
_main:

;Ex_09.c,15 :: 		void main() {
;Ex_09.c,16 :: 		trisd = 0; // Configura os pinos da porta D como saída para o LCD
	CLRF       TRISD+0
;Ex_09.c,17 :: 		trise = 0; // Configura os pinos da porta E como saída para o LCD
	CLRF       TRISE+0
;Ex_09.c,19 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_09.c,21 :: 		lcd_out(1, 3, "R"); // Escreve o caractere 'R' na terceira coluna da primeira linha
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Ex_09+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_09.c,22 :: 		delay_ms(2000); // Espera 2 segundos
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;Ex_09.c,24 :: 		lcd_cmd(_lcd_clear); // Limpa o display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_09.c,26 :: 		lcd_chr(1, 3, 82); // Escreve o caractere 'R' usando o código ASCII 82 na mesma posição
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      82
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Ex_09.c,27 :: 		delay_ms(2000); // Espera 2 segundos
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
;Ex_09.c,29 :: 		lcd_cmd(_lcd_clear); // Limpa o display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_09.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
