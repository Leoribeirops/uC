
_main:

;Ex_06.c,15 :: 		void main() {
;Ex_06.c,16 :: 		trisd = 0; // Configura os pinos da porta D como saída para o LCD
	CLRF       TRISD+0
;Ex_06.c,17 :: 		trise = 0; // Configura os pinos da porta E como saída para o LCD
	CLRF       TRISE+0
;Ex_06.c,19 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_06.c,21 :: 		while(1) { // Loop infinito
L_main0:
;Ex_06.c,22 :: 		lcd_out(1, 5, "IFSUL-PELOTAS"); // Exibe a mensagem no centro da primeira linha
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Ex_06+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_06.c,23 :: 		delay_ms(1000); // Espera 1 segundo (mensagem visível)
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Ex_06.c,25 :: 		lcd_cmd(_lcd_clear); // Limpa o display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_06.c,26 :: 		delay_ms(1000); // Espera 1 segundo (mensagem oculta)
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
;Ex_06.c,27 :: 		}
	GOTO       L_main0
;Ex_06.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
