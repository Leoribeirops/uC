
_DisplayValueOnLCD:

;Ex_14.c,15 :: 		void DisplayValueOnLCD(int value) {
;Ex_14.c,18 :: 		txt[0] = 'V';
	MOVLW      86
	MOVWF      DisplayValueOnLCD_txt_L0+0
;Ex_14.c,19 :: 		txt[1] = 'a';
	MOVLW      97
	MOVWF      DisplayValueOnLCD_txt_L0+1
;Ex_14.c,20 :: 		txt[2] = 'l';
	MOVLW      108
	MOVWF      DisplayValueOnLCD_txt_L0+2
;Ex_14.c,21 :: 		txt[3] = 'o';
	MOVLW      111
	MOVWF      DisplayValueOnLCD_txt_L0+3
;Ex_14.c,22 :: 		txt[4] = 'r';
	MOVLW      114
	MOVWF      DisplayValueOnLCD_txt_L0+4
;Ex_14.c,23 :: 		txt[5] = ':';
	MOVLW      58
	MOVWF      DisplayValueOnLCD_txt_L0+5
;Ex_14.c,24 :: 		txt[6] = ' ';
	MOVLW      32
	MOVWF      DisplayValueOnLCD_txt_L0+6
;Ex_14.c,25 :: 		txt[7] = ' ';
	MOVLW      32
	MOVWF      DisplayValueOnLCD_txt_L0+7
;Ex_14.c,26 :: 		txt[8] = value / 10 + '0'; // Dígito das dezenas
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_DisplayValueOnLCD_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_DisplayValueOnLCD_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      DisplayValueOnLCD_txt_L0+8
;Ex_14.c,27 :: 		txt[9] = value % 10 + '0'; // Dígito das unidades
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_DisplayValueOnLCD_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_DisplayValueOnLCD_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      DisplayValueOnLCD_txt_L0+9
;Ex_14.c,28 :: 		txt[10] = '\0'; // Finaliza a string
	CLRF       DisplayValueOnLCD_txt_L0+10
;Ex_14.c,31 :: 		lcd_out(1, 5, txt); // 5 para centralizar, ajuste conforme necessário
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      DisplayValueOnLCD_txt_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_14.c,32 :: 		}
L_end_DisplayValueOnLCD:
	RETURN
; end of _DisplayValueOnLCD

_main:

;Ex_14.c,34 :: 		void main() {
;Ex_14.c,37 :: 		trisb = 0xFF; // Configura todos os pinos da porta B como entrada
	MOVLW      255
	MOVWF      TRISB+0
;Ex_14.c,39 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_14.c,41 :: 		while(1) {
L_main0:
;Ex_14.c,42 :: 		value = portb & 0x0F; // Lê os 4 bits menos significativos da porta B
	MOVLW      15
	ANDWF      PORTB+0, 0
	MOVWF      main_value_L0+0
	CLRF       main_value_L0+1
	MOVLW      0
	ANDWF      main_value_L0+1, 1
	MOVLW      0
	MOVWF      main_value_L0+1
;Ex_14.c,43 :: 		DisplayValueOnLCD(value); // Exibe o valor no LCD
	MOVF       main_value_L0+0, 0
	MOVWF      FARG_DisplayValueOnLCD_value+0
	MOVF       main_value_L0+1, 0
	MOVWF      FARG_DisplayValueOnLCD_value+1
	CALL       _DisplayValueOnLCD+0
;Ex_14.c,44 :: 		delay_ms(200); // Pequeno delay para facilitar a leitura
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
;Ex_14.c,45 :: 		}
	GOTO       L_main0
;Ex_14.c,46 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
