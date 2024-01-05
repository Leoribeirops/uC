
_main:

;Ex_16.c,1 :: 		void main() {
;Ex_16.c,6 :: 		trisa = 0xFF; // Configura a porta A como entrada
	MOVLW      255
	MOVWF      TRISA+0
;Ex_16.c,7 :: 		trisc.f2 = 0; // Configura o pino RC2 como saída para o ventilador
	BCF        TRISC+0, 2
;Ex_16.c,8 :: 		portc.f2 = 0; // Inicialmente, o ventilador está desligado
	BCF        PORTC+0, 2
;Ex_16.c,10 :: 		adcon1 = 0x80; // Configura a porta A para entrada analógica
	MOVLW      128
	MOVWF      ADCON1+0
;Ex_16.c,11 :: 		adc_init(); // Inicializa o módulo ADC
	CALL       _ADC_Init+0
;Ex_16.c,13 :: 		while(1) {
L_main0:
;Ex_16.c,14 :: 		adcValue = adc_read(0); // Lê o valor do ADC no canal 0 (RA0)
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      main_adcValue_L0+0
	MOVF       R0+1, 0
	MOVWF      main_adcValue_L0+1
;Ex_16.c,16 :: 		if (adcValue >= thresholdOn) {
	MOVLW      128
	XORWF      R0+1, 0
	MOVWF      R2+0
	MOVLW      128
	XORLW      3
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVLW      50
	SUBWF      R0+0, 0
L__main7:
	BTFSS      STATUS+0, 0
	GOTO       L_main2
;Ex_16.c,17 :: 		portc.f2 = 1; // Liga o ventilador
	BSF        PORTC+0, 2
;Ex_16.c,18 :: 		} else if (adcValue < thresholdOff) {
	GOTO       L_main3
L_main2:
	MOVLW      128
	XORWF      main_adcValue_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVLW      153
	SUBWF      main_adcValue_L0+0, 0
L__main8:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;Ex_16.c,19 :: 		portc.f2 = 0; // Desliga o ventilador
	BCF        PORTC+0, 2
;Ex_16.c,20 :: 		}
L_main4:
L_main3:
;Ex_16.c,22 :: 		delay_ms(100); // Pequena pausa para estabilização
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;Ex_16.c,23 :: 		}
	GOTO       L_main0
;Ex_16.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
