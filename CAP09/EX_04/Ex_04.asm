
_main:

;Ex_04.c,1 :: 		void main() {
;Ex_04.c,4 :: 		trisc = 0; // Configura os pinos da porta C como saída
	CLRF       TRISC+0
;Ex_04.c,5 :: 		trisb = 0b11; // Configura os pinos 0 (RB0) e 1 (RB1) da porta B como entrada
	MOVLW      3
	MOVWF      TRISB+0
;Ex_04.c,6 :: 		pwm1_init(500); // Inicializa o módulo PWM com frequência de 500 Hz
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Ex_04.c,8 :: 		while(1) {
L_main0:
;Ex_04.c,9 :: 		if (portb.f0 == 0) { // Se a chave S0 for pressionada
	BTFSC      PORTB+0, 0
	GOTO       L_main2
;Ex_04.c,10 :: 		for (dutyCycle = 51; dutyCycle <= 255; dutyCycle++) { // Incrementa de 20% a 100%
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
	GOTO       L__main13
	MOVF       main_dutyCycle_L0+0, 0
	SUBLW      255
L__main13:
	BTFSS      STATUS+0, 0
	GOTO       L_main4
;Ex_04.c,11 :: 		pwm1_set_duty(dutyCycle);
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_04.c,12 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;Ex_04.c,10 :: 		for (dutyCycle = 51; dutyCycle <= 255; dutyCycle++) { // Incrementa de 20% a 100%
	INCF       main_dutyCycle_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_dutyCycle_L0+1, 1
;Ex_04.c,13 :: 		}
	GOTO       L_main3
L_main4:
;Ex_04.c,14 :: 		}
L_main2:
;Ex_04.c,16 :: 		if (portb.f1 == 0) { // Se a chave S1 for pressionada
	BTFSC      PORTB+0, 1
	GOTO       L_main7
;Ex_04.c,17 :: 		for (dutyCycle = 255; dutyCycle >= 0; dutyCycle -= 2) { // Decrementa de 100% a 0%
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
	GOTO       L__main14
	MOVLW      0
	SUBWF      main_dutyCycle_L0+0, 0
L__main14:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;Ex_04.c,18 :: 		pwm1_set_duty(dutyCycle);
	MOVF       main_dutyCycle_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Ex_04.c,19 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;Ex_04.c,17 :: 		for (dutyCycle = 255; dutyCycle >= 0; dutyCycle -= 2) { // Decrementa de 100% a 0%
	MOVLW      2
	SUBWF      main_dutyCycle_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_dutyCycle_L0+1, 1
;Ex_04.c,20 :: 		}
	GOTO       L_main8
L_main9:
;Ex_04.c,21 :: 		}
L_main7:
;Ex_04.c,22 :: 		}
	GOTO       L_main0
;Ex_04.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
