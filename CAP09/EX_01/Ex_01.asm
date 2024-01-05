
_main:

;Ex_01.c,1 :: 		void main() {
;Ex_01.c,2 :: 		trisc = 0; // Configura todos os pinos da porta C como saída
	CLRF       TRISC+0
;Ex_01.c,3 :: 		pwm1_init(6000); // Inicializa o módulo PWM com uma frequência de 6 kHz
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      83
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Ex_01.c,7 :: 		pwm1_set_duty(128); // Configura a razão cíclica em 50%
	MOVLW      128
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_01.c,9 :: 		pwm1_start(); // Ativa a geração de PWM no pino 2 da porta C
	CALL       _PWM1_Start+0
;Ex_01.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
