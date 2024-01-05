
_pisca_led:

;Ex01.c,1 :: 		void pisca_led (int led1, int led2, int num_piscadas) // função para piscar LEDs
;Ex01.c,4 :: 		for (i = 0; i < num_piscadas; i++) // para i variando de 0 a num_piscadas, faça:
	CLRF        R3 
	CLRF        R4 
L_pisca_led0:
	MOVLW       128
	XORWF       R4, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_pisca_led_num_piscadas+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__pisca_led10
	MOVF        FARG_pisca_led_num_piscadas+0, 0 
	SUBWF       R3, 0 
L__pisca_led10:
	BTFSC       STATUS+0, 0 
	GOTO        L_pisca_led1
;Ex01.c,6 :: 		portd = (1 << led1) | (1 << led2); // liga os LEDS especificados,
	MOVF        FARG_pisca_led_led1+0, 0 
	MOVWF       R0 
	MOVLW       1
	MOVWF       R2 
	MOVF        R0, 0 
L__pisca_led11:
	BZ          L__pisca_led12
	RLCF        R2, 1 
	BCF         R2, 0 
	ADDLW       255
	GOTO        L__pisca_led11
L__pisca_led12:
	MOVF        FARG_pisca_led_led2+0, 0 
	MOVWF       R1 
	MOVLW       1
	MOVWF       R0 
	MOVF        R1, 0 
L__pisca_led13:
	BZ          L__pisca_led14
	RLCF        R0, 1 
	BCF         R0, 0 
	ADDLW       255
	GOTO        L__pisca_led13
L__pisca_led14:
	MOVF        R0, 0 
	IORWF       R2, 0 
	MOVWF       PORTD+0 
;Ex01.c,7 :: 		delay_ms(500); // espera 500 ms (1 Hz = 1 piscada por segundo, então uma piscada leva 1000 ms. 500 ms ligado e 500 ms desligado),
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_pisca_led3:
	DECFSZ      R13, 1, 1
	BRA         L_pisca_led3
	DECFSZ      R12, 1, 1
	BRA         L_pisca_led3
	DECFSZ      R11, 1, 1
	BRA         L_pisca_led3
	NOP
	NOP
;Ex01.c,8 :: 		portd = 0; // desliga os diodos,
	CLRF        PORTD+0 
;Ex01.c,9 :: 		delay_ms(500); // espera 500 ms.
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_pisca_led4:
	DECFSZ      R13, 1, 1
	BRA         L_pisca_led4
	DECFSZ      R12, 1, 1
	BRA         L_pisca_led4
	DECFSZ      R11, 1, 1
	BRA         L_pisca_led4
	NOP
	NOP
;Ex01.c,4 :: 		for (i = 0; i < num_piscadas; i++) // para i variando de 0 a num_piscadas, faça:
	INFSNZ      R3, 1 
	INCF        R4, 1 
;Ex01.c,10 :: 		}
	GOTO        L_pisca_led0
L_pisca_led1:
;Ex01.c,11 :: 		}
L_end_pisca_led:
	RETURN      0
; end of _pisca_led

_main:

;Ex01.c,13 :: 		void main() // início da função principal
;Ex01.c,15 :: 		trisd = 0; // configura os pinos da porta D como saída,
	CLRF        TRISD+0 
;Ex01.c,16 :: 		portd = 0; // zera os pinos da porta D,
	CLRF        PORTD+0 
;Ex01.c,17 :: 		while(1) // início de um loop infinito
L_main5:
;Ex01.c,19 :: 		pisca_led(0, 3, 20); // pisca os LEDs 0 e 3, 20 vezes,
	CLRF        FARG_pisca_led_led1+0 
	CLRF        FARG_pisca_led_led1+1 
	MOVLW       3
	MOVWF       FARG_pisca_led_led2+0 
	MOVLW       0
	MOVWF       FARG_pisca_led_led2+1 
	MOVLW       20
	MOVWF       FARG_pisca_led_num_piscadas+0 
	MOVLW       0
	MOVWF       FARG_pisca_led_num_piscadas+1 
	CALL        _pisca_led+0, 0
;Ex01.c,20 :: 		delay_ms(5000); // espera 5 segundos,
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
	NOP
;Ex01.c,21 :: 		pisca_led(1, 2, 30); // pisca os LEDs 1 e 2, 30 vezes,
	MOVLW       1
	MOVWF       FARG_pisca_led_led1+0 
	MOVLW       0
	MOVWF       FARG_pisca_led_led1+1 
	MOVLW       2
	MOVWF       FARG_pisca_led_led2+0 
	MOVLW       0
	MOVWF       FARG_pisca_led_led2+1 
	MOVLW       30
	MOVWF       FARG_pisca_led_num_piscadas+0 
	MOVLW       0
	MOVWF       FARG_pisca_led_num_piscadas+1 
	CALL        _pisca_led+0, 0
;Ex01.c,22 :: 		delay_ms(5000); // espera 5 segundos.
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	NOP
	NOP
;Ex01.c,23 :: 		}
	GOTO        L_main5
;Ex01.c,24 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
