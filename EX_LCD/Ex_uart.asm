
_main:

;Ex_uart.c,1 :: 		void main() {
;Ex_uart.c,3 :: 		uart1_init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;Ex_uart.c,4 :: 		uart1_write_text("CURSO DE ELETROTECNICA");
	MOVLW      ?lstr1_Ex_uart+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Ex_uart.c,5 :: 		uart1_write_text(" ");
	MOVLW      ?lstr2_Ex_uart+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Ex_uart.c,6 :: 		uart1_write_text("IFSUL");
	MOVLW      ?lstr3_Ex_uart+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Ex_uart.c,7 :: 		uart1_write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;Ex_uart.c,8 :: 		uart1_write_text("FUNDADO EM 1957");
	MOVLW      ?lstr4_Ex_uart+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Ex_uart.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
