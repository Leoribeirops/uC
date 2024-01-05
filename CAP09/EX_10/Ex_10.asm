
_main:

;Ex_10.c,15 :: 		void main() {
;Ex_10.c,16 :: 		trisd = 0; // Configura os pinos da porta D como saída para o LCD
	CLRF       TRISD+0
;Ex_10.c,17 :: 		trise = 0; // Configura os pinos da porta E como saída para o LCD
	CLRF       TRISE+0
;Ex_10.c,19 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_10.c,20 :: 		lcd_cmd(_lcd_cursor_off); // Desliga o cursor para uma visualização mais limpa
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_10.c,22 :: 		lcd_out(1, 1, "CURSO ELETROTECNICA"); // Escreve a mensagem na primeira linha do display
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Ex_10+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_10.c,24 :: 		while(1) { // Loop infinito
L_main0:
;Ex_10.c,25 :: 		lcd_cmd(_lcd_shift_right); // Desloca todos os caracteres no display para a direita
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_10.c,26 :: 		delay_ms(200); // Espera 200 ms antes do próximo deslocamento
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;Ex_10.c,27 :: 		}
	GOTO       L_main0
;Ex_10.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
