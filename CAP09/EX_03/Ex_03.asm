
_main:

;Ex_03.c,4 :: 		void main() {
;Ex_03.c,5 :: 		trisc = 0;   // Configura os pinos da porta C como saída
	CLRF       TRISC+0
;Ex_03.c,6 :: 		trisb = 0b11; // Configura os pinos RB0 e RB1 como entrada
	MOVLW      3
	MOVWF      TRISB+0
;Ex_03.c,7 :: 		uart1_init(9600); // Inicializa a biblioteca uart1 em 9600 bps
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;Ex_03.c,9 :: 		pwm1_init(2500); // Inicializa o módulo PWM com frequência de 2,5 kHz
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      199
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Ex_03.c,11 :: 		while(1) {
L_main0:
;Ex_03.c,12 :: 		if(portb.f0 == 0) { // Se a chave S0 for pressionada
	BTFSC      PORTB+0, 0
	GOTO       L_main2
;Ex_03.c,13 :: 		pwm1_set_duty(191); // Ajusta a razão cíclica para 75% (191 em escala de 0 a 255)
	MOVLW      191
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_03.c,14 :: 		pwm1_start(); // Liga o PWM no pino 2 da porta C
	CALL       _PWM1_Start+0
;Ex_03.c,15 :: 		uart1_write_text("MOTOR LIGADO\n"); // Envia a mensagem para o terminal serial
	MOVLW      ?lstr1_Ex_03+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Ex_03.c,16 :: 		}
L_main2:
;Ex_03.c,18 :: 		if(portb.f1 == 0) { // Se a chave S1 for pressionada
	BTFSC      PORTB+0, 1
	GOTO       L_main3
;Ex_03.c,19 :: 		pwm1_set_duty(0); // Ajusta a razão cíclica para 0%
	CLRF       FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_03.c,20 :: 		pwm1_start(); // Liga o PWM no pino 2 da porta C
	CALL       _PWM1_Start+0
;Ex_03.c,21 :: 		uart1_write_text("MOTOR DESLIGADO\n"); // Envia a mensagem para o terminal serial
	MOVLW      ?lstr2_Ex_03+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Ex_03.c,22 :: 		}
L_main3:
;Ex_03.c,23 :: 		}
	GOTO       L_main0
;Ex_03.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
