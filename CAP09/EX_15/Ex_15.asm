
_UpdateDisplayAndSerial:

;Ex_15.c,15 :: 		void UpdateDisplayAndSerial(char *floor) {
;Ex_15.c,16 :: 		lcd_out(1, 5, floor); // Exibe o andar no centro da primeira linha do LCD
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       FARG_UpdateDisplayAndSerial_floor+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Ex_15.c,17 :: 		uart1_write_text(floor); // Envia o andar para o terminal serial
	MOVF       FARG_UpdateDisplayAndSerial_floor+0, 0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Ex_15.c,18 :: 		uart1_write(10); // Nova linha no terminal serial
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;Ex_15.c,19 :: 		uart1_write(13); // Retorno de carro no terminal serial
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;Ex_15.c,20 :: 		}
L_end_UpdateDisplayAndSerial:
	RETURN
; end of _UpdateDisplayAndSerial

_main:

;Ex_15.c,22 :: 		void main() {
;Ex_15.c,23 :: 		trisb = 0xFF; // Configura os pinos da porta B como entrada
	MOVLW      255
	MOVWF      TRISB+0
;Ex_15.c,25 :: 		lcd_init(); // Inicializa o LCD
	CALL       _Lcd_Init+0
;Ex_15.c,26 :: 		uart1_init(9600); // Inicializa a UART em 9600 bps
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;Ex_15.c,28 :: 		while(1) {
L_main0:
;Ex_15.c,29 :: 		if (portb.f0 == 1) {
	BTFSS      PORTB+0, 0
	GOTO       L_main2
;Ex_15.c,30 :: 		UpdateDisplayAndSerial("Terreo");
	MOVLW      ?lstr1_Ex_15+0
	MOVWF      FARG_UpdateDisplayAndSerial_floor+0
	CALL       _UpdateDisplayAndSerial+0
;Ex_15.c,31 :: 		} else if (portb.f1 == 1) {
	GOTO       L_main3
L_main2:
	BTFSS      PORTB+0, 1
	GOTO       L_main4
;Ex_15.c,32 :: 		UpdateDisplayAndSerial("1o Andar");
	MOVLW      ?lstr2_Ex_15+0
	MOVWF      FARG_UpdateDisplayAndSerial_floor+0
	CALL       _UpdateDisplayAndSerial+0
;Ex_15.c,33 :: 		} else if (portb.f2 == 1) {
	GOTO       L_main5
L_main4:
	BTFSS      PORTB+0, 2
	GOTO       L_main6
;Ex_15.c,34 :: 		UpdateDisplayAndSerial("2o Andar");
	MOVLW      ?lstr3_Ex_15+0
	MOVWF      FARG_UpdateDisplayAndSerial_floor+0
	CALL       _UpdateDisplayAndSerial+0
;Ex_15.c,35 :: 		} else if (portb.f3 == 1) {
	GOTO       L_main7
L_main6:
	BTFSS      PORTB+0, 3
	GOTO       L_main8
;Ex_15.c,36 :: 		UpdateDisplayAndSerial("3o Andar");
	MOVLW      ?lstr4_Ex_15+0
	MOVWF      FARG_UpdateDisplayAndSerial_floor+0
	CALL       _UpdateDisplayAndSerial+0
;Ex_15.c,37 :: 		}
L_main8:
L_main7:
L_main5:
L_main3:
;Ex_15.c,38 :: 		delay_ms(200); // Pequeno delay para evitar leituras constantes
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;Ex_15.c,39 :: 		}
	GOTO       L_main0
;Ex_15.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
