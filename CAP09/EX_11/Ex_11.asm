
_main:

;Ex_11.c,15 :: 		void main() {
;Ex_11.c,16 :: 		trisd = 0; // Configura os pinos da porta D como saída para o LCD
	CLRF       TRISD+0
;Ex_11.c,17 :: 		trise = 0; // Configura os pinos da porta E como saída para o LCD
	CLRF       TRISE+0
;Ex_11.c,18 :: 		trisb = 3; // Configura os pinos RB0 e RB1 como entrada
	MOVLW      3
	MOVWF      TRISB+0
;Ex_11.c,20 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_11.c,21 :: 		lcd_cmd(_lcd_cursor_off); // Desliga o cursor para uma visualização mais limpa
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_11.c,23 :: 		lcd_out(1, (16 - strlen("Brasil")) / 2, "Brasil"); // Escreve o nome do país no centro da primeira linha
	MOVLW      ?lstr1_Ex_11+0
	MOVWF      FARG_strlen_s+0
	CALL       _strlen+0
	MOVF       R0+0, 0
	SUBLW      16
	MOVWF      R3+0
	MOVF       R0+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R3+1
	SUBWF      R3+1, 1
	MOVF       R3+0, 0
	MOVWF      R0+0
	MOVF       R3+1, 0
	MOVWF      R0+1
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
	BTFSS      R0+1, 7
	GOTO       L__main8
	BTFSS      STATUS+0, 0
	GOTO       L__main8
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
L__main8:
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      ?lstr2_Ex_11+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_11.c,25 :: 		while(1) { // Loop infinito
L_main0:
;Ex_11.c,26 :: 		if (portb.f0 == 1) { // Verifica se a chave S0 está pressionada
	BTFSS      PORTB+0, 0
	GOTO       L_main2
;Ex_11.c,27 :: 		lcd_cmd(_lcd_shift_right); // Desloca a mensagem para a direita
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_11.c,28 :: 		delay_ms(200); // Espera 200 ms
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Ex_11.c,29 :: 		} else if (portb.f1 == 1) { // Verifica se a chave S1 está pressionada
	GOTO       L_main4
L_main2:
	BTFSS      PORTB+0, 1
	GOTO       L_main5
;Ex_11.c,30 :: 		lcd_cmd(_lcd_shift_left); // Desloca a mensagem para a esquerda
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_11.c,31 :: 		delay_ms(200); // Espera 200 ms
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
;Ex_11.c,32 :: 		}
L_main5:
L_main4:
;Ex_11.c,33 :: 		}
	GOTO       L_main0
;Ex_11.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
