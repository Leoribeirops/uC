
_main:

;ADC_9.c,2 :: 		void main ()
;ADC_9.c,4 :: 		adcon1 = 0;
	CLRF       ADCON1+0
;ADC_9.c,5 :: 		trisa = 1;
	MOVLW      1
	MOVWF      TRISA+0
;ADC_9.c,6 :: 		trisd = 0;
	CLRF       TRISD+0
;ADC_9.c,7 :: 		portd = 0;
	CLRF       PORTD+0
;ADC_9.c,8 :: 		while(1)
L_main0:
;ADC_9.c,10 :: 		adc = adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adc+0
	MOVF       R0+1, 0
	MOVWF      _adc+1
;ADC_9.c,11 :: 		portd = adc >> 8;
	MOVF       R0+1, 0
	MOVWF      R2+0
	MOVLW      0
	BTFSC      R0+1, 7
	MOVLW      255
	MOVWF      R2+1
	MOVF       R2+0, 0
	MOVWF      PORTD+0
;ADC_9.c,12 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;ADC_9.c,13 :: 		portd = adc;
	MOVF       _adc+0, 0
	MOVWF      PORTD+0
;ADC_9.c,14 :: 		delay_ms(5000);
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;ADC_9.c,15 :: 		}
	GOTO       L_main0
;ADC_9.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
