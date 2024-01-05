
_UpdateLCD:

;Ex_13.c,15 :: 		void UpdateLCD(int dutyCycle) {
;Ex_13.c,17 :: 		int percent = (dutyCycle * 100) / 255;
	MOVF       FARG_UpdateLCD_dutyCycle+0, 0
	MOVWF      R0+0
	MOVF       FARG_UpdateLCD_dutyCycle+1, 0
	MOVWF      R0+1
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVLW      255
	MOVWF      R4+0
	CLRF       R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FLOC__UpdateLCD+0
	MOVF       R0+1, 0
	MOVWF      FLOC__UpdateLCD+1
	MOVLW      86
	MOVWF      UpdateLCD_txt_L0+0
;Ex_13.c,20 :: 		txt[1] = 'a';
	MOVLW      97
	MOVWF      UpdateLCD_txt_L0+1
;Ex_13.c,21 :: 		txt[2] = 'l';
	MOVLW      108
	MOVWF      UpdateLCD_txt_L0+2
;Ex_13.c,22 :: 		txt[3] = 'o';
	MOVLW      111
	MOVWF      UpdateLCD_txt_L0+3
;Ex_13.c,23 :: 		txt[4] = 'r';
	MOVLW      114
	MOVWF      UpdateLCD_txt_L0+4
;Ex_13.c,24 :: 		txt[5] = ':';
	MOVLW      58
	MOVWF      UpdateLCD_txt_L0+5
;Ex_13.c,25 :: 		txt[6] = ' ';
	MOVLW      32
	MOVWF      UpdateLCD_txt_L0+6
;Ex_13.c,26 :: 		txt[7] = percent / 10 + '0'; // Dígito das dezenas
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__UpdateLCD+0, 0
	MOVWF      R0+0
	MOVF       FLOC__UpdateLCD+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      UpdateLCD_txt_L0+7
;Ex_13.c,27 :: 		txt[8] = percent % 10 + '0'; // Dígito das unidades
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FLOC__UpdateLCD+0, 0
	MOVWF      R0+0
	MOVF       FLOC__UpdateLCD+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      UpdateLCD_txt_L0+8
;Ex_13.c,28 :: 		txt[9] = '%';
	MOVLW      37
	MOVWF      UpdateLCD_txt_L0+9
;Ex_13.c,29 :: 		txt[10] = ' ';
	MOVLW      32
	MOVWF      UpdateLCD_txt_L0+10
;Ex_13.c,30 :: 		txt[11] = ' ';
	MOVLW      32
	MOVWF      UpdateLCD_txt_L0+11
;Ex_13.c,31 :: 		txt[12] = ' ';
	MOVLW      32
	MOVWF      UpdateLCD_txt_L0+12
;Ex_13.c,32 :: 		txt[13] = '\0'; // Finaliza a string
	CLRF       UpdateLCD_txt_L0+13
;Ex_13.c,34 :: 		lcd_out(2, 1, txt); // Exibe a string na segunda linha do LCD
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      UpdateLCD_txt_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_13.c,35 :: 		}
L_end_UpdateLCD:
	RETURN
; end of _UpdateLCD

_main:

;Ex_13.c,37 :: 		void main() {
;Ex_13.c,40 :: 		trisc = 0; // Configura os pinos da porta C como saída
	CLRF       TRISC+0
;Ex_13.c,41 :: 		trisb = 0b11; // Configura os pinos 0 (RB0) e 1 (RB1) da porta B como entrada
	MOVLW      3
	MOVWF      TRISB+0
;Ex_13.c,42 :: 		pwm1_init(500); // Inicializa o módulo PWM com frequência de 500 Hz
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Ex_13.c,43 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_13.c,44 :: 		lcd_out(1, 1, "Razao Ciclica"); // Escreve na primeira linha do LCD
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Ex_13+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_13.c,46 :: 		while(1) {
L_main0:
;Ex_13.c,47 :: 		if (portb.f0 == 0) { // Se a chave S0 for pressionada
	BTFSC      PORTB+0, 0
	GOTO       L_main2
;Ex_13.c,48 :: 		for (dutyCycle = 51; dutyCycle <= 255; dutyCycle++) {
	MOVLW      51
	MOVWF      main_dutyCycle_L0+0
	MOVLW      0
	MOVWF      main_dutyCycle_L0+1
L_main3:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_dutyCycle_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVF       main_dutyCycle_L0+0, 0
	SUBLW      255
L__main14:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;Ex_13.c,49 :: 		pwm1_set_duty(dutyCycle);
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_13.c,50 :: 		UpdateLCD(dutyCycle); // Atualiza o LCD
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_UpdateLCD_dutyCycle+0
	MOVF       main_dutyCycle_L0+1, 0
	MOVWF      FARG_UpdateLCD_dutyCycle+1
	CALL       _UpdateLCD+0
;Ex_13.c,51 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;Ex_13.c,48 :: 		for (dutyCycle = 51; dutyCycle <= 255; dutyCycle++) {
	INCF       main_dutyCycle_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_dutyCycle_L0+1, 1
;Ex_13.c,52 :: 		}
	GOTO       L_main3
L_main4:
;Ex_13.c,53 :: 		}
L_main2:
;Ex_13.c,55 :: 		if (portb.f1 == 0) { // Se a chave S1 for pressionada
	BTFSC      PORTB+0, 1
	GOTO       L_main7
;Ex_13.c,56 :: 		for (dutyCycle = 255; dutyCycle >= 0; dutyCycle -= 2) {
	MOVLW      255
	MOVWF      main_dutyCycle_L0+0
	CLRF       main_dutyCycle_L0+1
L_main8:
	MOVLW      128
	XORWF      main_dutyCycle_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVLW      0
	SUBWF      main_dutyCycle_L0+0, 0
L__main15:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;Ex_13.c,57 :: 		pwm1_set_duty(dutyCycle);
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_13.c,58 :: 		UpdateLCD(dutyCycle); // Atualiza o LCD
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_UpdateLCD_dutyCycle+0
	MOVF       main_dutyCycle_L0+1, 0
	MOVWF      FARG_UpdateLCD_dutyCycle+1
	CALL       _UpdateLCD+0
;Ex_13.c,59 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
;Ex_13.c,56 :: 		for (dutyCycle = 255; dutyCycle >= 0; dutyCycle -= 2) {
	MOVLW      2
	SUBWF      main_dutyCycle_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_dutyCycle_L0+1, 1
;Ex_13.c,60 :: 		}
	GOTO       L_main8
L_main9:
;Ex_13.c,61 :: 		}
L_main7:
;Ex_13.c,62 :: 		}
	GOTO       L_main0
;Ex_13.c,63 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
