
_main:

;Ex_07.c,15 :: 		void main() {
;Ex_07.c,16 :: 		trisd = 0; // Configura os pinos da porta D como saída para o LCD
	CLRF       TRISD+0
;Ex_07.c,17 :: 		trise = 0; // Configura os pinos da porta E como saída para o LCD
	CLRF       TRISE+0
;Ex_07.c,19 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_07.c,21 :: 		while(1) { // Loop infinito
L_main0:
;Ex_07.c,23 :: 		lcd_out(1, (16 - strlen("ELETROTECNICA")) / 2, "ELETROTECNICA"); // Centraliza e exibe na primeira linha
	MOVLW      ?lstr1_Ex_07+0
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
	GOTO       L__main5
	BTFSS      STATUS+0, 0
	GOTO       L__main5
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
L__main5:
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      ?lstr2_Ex_07+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_07.c,24 :: 		lcd_out(2, (16 - strlen("IFSUL")) / 2, "IFSUL"); // Centraliza e exibe na segunda linha
	MOVLW      ?lstr3_Ex_07+0
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
	GOTO       L__main6
	BTFSS      STATUS+0, 0
	GOTO       L__main6
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
L__main6:
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      ?lstr4_Ex_07+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_07.c,25 :: 		delay_ms(1000); // Espera 1 segundo
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
;Ex_07.c,27 :: 		lcd_cmd(_lcd_clear); // Limpa o display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_07.c,30 :: 		lcd_out(1, (16 - strlen("ESTUDO DO")) / 2, "ESTUDO DO"); // Centraliza e exibe na primeira linha
	MOVLW      ?lstr5_Ex_07+0
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
	GOTO       L__main7
	BTFSS      STATUS+0, 0
	GOTO       L__main7
	INCF       R0+0, 1
	BTFSC      STATUS+0, 2
	INCF       R0+1, 1
L__main7:
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      ?lstr6_Ex_07+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_07.c,31 :: 		lcd_out(2, (16 - strlen("PIC 16F877A")) / 2, "PIC 16F877A"); // Centraliza e exibe na segunda linha
	MOVLW      ?lstr7_Ex_07+0
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
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      ?lstr8_Ex_07+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_07.c,32 :: 		delay_ms(1000); // Espera 1 segundo
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
;Ex_07.c,34 :: 		lcd_cmd(_lcd_clear); // Limpa o display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Ex_07.c,35 :: 		}
	GOTO       L_main0
;Ex_07.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
