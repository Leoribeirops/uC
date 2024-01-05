
_main:

;Ex_05.c,1 :: 		void main() {
;Ex_05.c,2 :: 		int dutyCycle = 153; // Inicialmente 60% de razão cíclica (60% de 255 ˜ 153)
	MOVLW      153
	MOVWF      main_dutyCycle_L0+0
	MOVLW      0
	MOVWF      main_dutyCycle_L0+1
;Ex_05.c,4 :: 		trisc = 0; // Configura os pinos da porta C como saída
	CLRF       TRISC+0
;Ex_05.c,5 :: 		trisb = 0b11; // Configura os pinos 0 (RB0) e 1 (RB1) da porta B como entrada
	MOVLW      3
	MOVWF      TRISB+0
;Ex_05.c,6 :: 		pwm1_init(500); // Inicializa o módulo PWM com frequência de 500 Hz
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Ex_05.c,7 :: 		pwm1_set_duty(dutyCycle); // Define a razão cíclica inicial
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_05.c,8 :: 		pwm1_start(); // Inicia o PWM
	CALL       _PWM1_Start+0
;Ex_05.c,10 :: 		while(1) {
L_main0:
;Ex_05.c,11 :: 		if (portb.f0 == 0) { // Se a chave S0 estiver pressionada
	BTFSC      PORTB+0, 0
	GOTO       L_main2
;Ex_05.c,12 :: 		if (dutyCycle < 255) { // Verifica se a razão cíclica é menor que 100%
	MOVLW      128
	XORWF      main_dutyCycle_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVLW      255
	SUBWF      main_dutyCycle_L0+0, 0
L__main9:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;Ex_05.c,13 :: 		dutyCycle++; // Incrementa a razão cíclica em 0,4%
	INCF       main_dutyCycle_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_dutyCycle_L0+1, 1
;Ex_05.c,14 :: 		pwm1_set_duty(dutyCycle);
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_05.c,15 :: 		}
L_main3:
;Ex_05.c,16 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;Ex_05.c,17 :: 		}
L_main2:
;Ex_05.c,19 :: 		if (portb.f1 == 0) { // Se a chave S1 estiver pressionada
	BTFSC      PORTB+0, 1
	GOTO       L_main5
;Ex_05.c,20 :: 		if (dutyCycle > 51) { // Verifica se a razão cíclica é maior que 20%
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_dutyCycle_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVF       main_dutyCycle_L0+0, 0
	SUBLW      51
L__main10:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;Ex_05.c,21 :: 		dutyCycle--; // Decrementa a razão cíclica em 0,4%
	MOVLW      1
	SUBWF      main_dutyCycle_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_dutyCycle_L0+1, 1
;Ex_05.c,22 :: 		pwm1_set_duty(dutyCycle);
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_05.c,23 :: 		}
L_main6:
;Ex_05.c,24 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;Ex_05.c,25 :: 		}
L_main5:
;Ex_05.c,26 :: 		}
	GOTO       L_main0
;Ex_05.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
