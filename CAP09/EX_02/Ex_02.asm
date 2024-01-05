
_main:

;Ex_02.c,1 :: 		void main() {
;Ex_02.c,2 :: 		int dutyCycle = 255; // Inicia com 100% de razão cíclica (em uma escala de 0-255)
	MOVLW      255
	MOVWF      main_dutyCycle_L0+0
	MOVLW      0
	MOVWF      main_dutyCycle_L0+1
;Ex_02.c,4 :: 		trisc = 0; // Configura todos os pinos da porta C como saída
	CLRF       TRISC+0
;Ex_02.c,5 :: 		pwm1_init(2000); // Inicializa o módulo PWM com uma frequência de 2 kHz
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Ex_02.c,6 :: 		pwm1_start(); // Ativa a geração de PWM no pino 2 da porta C
	CALL       _PWM1_Start+0
;Ex_02.c,8 :: 		while(dutyCycle >= 0) {
L_main0:
	MOVLW      128
	XORWF      main_dutyCycle_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main4
	MOVLW      0
	SUBWF      main_dutyCycle_L0+0, 0
L__main4:
	BTFSS      STATUS+0, 0
	GOTO       L_main1
;Ex_02.c,9 :: 		pwm1_set_duty(dutyCycle); // Configura a razão cíclica atual
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_02.c,13 :: 		dutyCycle -= 1;
	MOVLW      1
	SUBWF      main_dutyCycle_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_dutyCycle_L0+1, 1
;Ex_02.c,14 :: 		delay_ms(100); // Espera 0,1 segundo antes da próxima redução
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;Ex_02.c,15 :: 		}
	GOTO       L_main0
L_main1:
;Ex_02.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
