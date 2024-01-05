
_UpdateLCD:

;Ex_12.c,17 :: 		void UpdateLCD() {
;Ex_12.c,20 :: 		txt[0] = 'P';
	MOVLW      80
	MOVWF      UpdateLCD_txt_L0+0
;Ex_12.c,21 :: 		txt[1] = 'e';
	MOVLW      101
	MOVWF      UpdateLCD_txt_L0+1
;Ex_12.c,22 :: 		txt[2] = 's';
	MOVLW      115
	MOVWF      UpdateLCD_txt_L0+2
;Ex_12.c,23 :: 		txt[3] = 's';
	MOVLW      115
	MOVWF      UpdateLCD_txt_L0+3
;Ex_12.c,24 :: 		txt[4] = 'o';
	MOVLW      111
	MOVWF      UpdateLCD_txt_L0+4
;Ex_12.c,25 :: 		txt[5] = 'a';
	MOVLW      97
	MOVWF      UpdateLCD_txt_L0+5
;Ex_12.c,26 :: 		txt[6] = 's';
	MOVLW      115
	MOVWF      UpdateLCD_txt_L0+6
;Ex_12.c,27 :: 		txt[7] = ':';
	MOVLW      58
	MOVWF      UpdateLCD_txt_L0+7
;Ex_12.c,28 :: 		txt[8] = ' ';
	MOVLW      32
	MOVWF      UpdateLCD_txt_L0+8
;Ex_12.c,29 :: 		txt[9] = (count / 10) % 10 + '0'; // Dígito das dezenas
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _count+0, 0
	MOVWF      R0+0
	MOVF       _count+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      UpdateLCD_txt_L0+9
;Ex_12.c,30 :: 		txt[10] = count % 10 + '0';       // Dígito das unidades
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _count+0, 0
	MOVWF      R0+0
	MOVF       _count+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      UpdateLCD_txt_L0+10
;Ex_12.c,31 :: 		txt[11] = '\0'; // Finaliza a string
	CLRF       UpdateLCD_txt_L0+11
;Ex_12.c,33 :: 		lcd_out(1, 1, txt); // Escreve o texto no LCD
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      UpdateLCD_txt_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_12.c,34 :: 		}
L_end_UpdateLCD:
	RETURN
; end of _UpdateLCD

_main:

;Ex_12.c,36 :: 		void main() {
;Ex_12.c,37 :: 		trisd = 0; // Configura os pinos da porta D como saída para o LCD
	CLRF       TRISD+0
;Ex_12.c,38 :: 		trise = 0; // Configura os pinos da porta E como saída para o LCD
	CLRF       TRISE+0
;Ex_12.c,39 :: 		trisb = 3; // Configura os pinos RB0 e RB1 como entrada
	MOVLW      3
	MOVWF      TRISB+0
;Ex_12.c,41 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_12.c,42 :: 		UpdateLCD(); // Atualiza o display com o contador inicial
	CALL       _UpdateLCD+0
;Ex_12.c,44 :: 		while(1) { // Loop infinito
L_main0:
;Ex_12.c,45 :: 		if (portb.f0 == 1) { // Se a chave S0 for pressionada
	BTFSS      PORTB+0, 0
	GOTO       L_main2
;Ex_12.c,46 :: 		while(portb.f0 == 1); // Aguarda a liberação da chave
L_main3:
	BTFSS      PORTB+0, 0
	GOTO       L_main4
	GOTO       L_main3
L_main4:
;Ex_12.c,47 :: 		if (count < 99) count++; // Incrementa o contador
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      99
	SUBWF      _count+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
L_main5:
;Ex_12.c,48 :: 		UpdateLCD(); // Atualiza o display
	CALL       _UpdateLCD+0
;Ex_12.c,49 :: 		}
L_main2:
;Ex_12.c,50 :: 		if (portb.f1 == 1) { // Se a chave S1 for pressionada
	BTFSS      PORTB+0, 1
	GOTO       L_main6
;Ex_12.c,51 :: 		while(portb.f1 == 1); // Aguarda a liberação da chave
L_main7:
	BTFSS      PORTB+0, 1
	GOTO       L_main8
	GOTO       L_main7
L_main8:
;Ex_12.c,52 :: 		if (count > 0) count--; // Decrementa o contador
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       _count+0, 0
	SUBLW      0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
	MOVLW      1
	SUBWF      _count+0, 1
	BTFSS      STATUS+0, 0
	DECF       _count+1, 1
L_main9:
;Ex_12.c,53 :: 		UpdateLCD(); // Atualiza o display
	CALL       _UpdateLCD+0
;Ex_12.c,54 :: 		}
L_main6:
;Ex_12.c,55 :: 		}
	GOTO       L_main0
;Ex_12.c,56 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
