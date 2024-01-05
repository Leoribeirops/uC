
_pisca_led0:

;Ex02.c,3 :: 		void pisca_led0(int num_piscadas) {
;Ex02.c,4 :: 		for (i = 0; i < num_piscadas; i++) {
	CLRF        _i+0 
L_pisca_led00:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_pisca_led0_num_piscadas+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__pisca_led021
	MOVF        FARG_pisca_led0_num_piscadas+0, 0 
	SUBWF       _i+0, 0 
L__pisca_led021:
	BTFSC       STATUS+0, 0 
	GOTO        L_pisca_led01
;Ex02.c,5 :: 		portd = (1 << 0);  // liga o LED 0
	MOVLW       1
	MOVWF       PORTD+0 
;Ex02.c,6 :: 		delay_ms(1000);  // espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_pisca_led03:
	DECFSZ      R13, 1, 1
	BRA         L_pisca_led03
	DECFSZ      R12, 1, 1
	BRA         L_pisca_led03
	DECFSZ      R11, 1, 1
	BRA         L_pisca_led03
	NOP
	NOP
;Ex02.c,7 :: 		portd = 0;  // desliga o LED 0
	CLRF        PORTD+0 
;Ex02.c,8 :: 		delay_ms(1000);  // espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_pisca_led04:
	DECFSZ      R13, 1, 1
	BRA         L_pisca_led04
	DECFSZ      R12, 1, 1
	BRA         L_pisca_led04
	DECFSZ      R11, 1, 1
	BRA         L_pisca_led04
	NOP
	NOP
;Ex02.c,4 :: 		for (i = 0; i < num_piscadas; i++) {
	INCF        _i+0, 1 
;Ex02.c,9 :: 		}
	GOTO        L_pisca_led00
L_pisca_led01:
;Ex02.c,10 :: 		}
L_end_pisca_led0:
	RETURN      0
; end of _pisca_led0

_pisca_led1:

;Ex02.c,12 :: 		void pisca_led1(int num_piscadas) {
;Ex02.c,13 :: 		for (i = 0; i < num_piscadas; i++) {
	CLRF        _i+0 
L_pisca_led15:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_pisca_led1_num_piscadas+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__pisca_led123
	MOVF        FARG_pisca_led1_num_piscadas+0, 0 
	SUBWF       _i+0, 0 
L__pisca_led123:
	BTFSC       STATUS+0, 0 
	GOTO        L_pisca_led16
;Ex02.c,14 :: 		portd = (1 << 1);  // liga o LED 1
	MOVLW       2
	MOVWF       PORTD+0 
;Ex02.c,15 :: 		delay_ms(1000);  // espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_pisca_led18:
	DECFSZ      R13, 1, 1
	BRA         L_pisca_led18
	DECFSZ      R12, 1, 1
	BRA         L_pisca_led18
	DECFSZ      R11, 1, 1
	BRA         L_pisca_led18
	NOP
	NOP
;Ex02.c,16 :: 		portd = 0;  // desliga o LED 1
	CLRF        PORTD+0 
;Ex02.c,17 :: 		delay_ms(1000);  // espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_pisca_led19:
	DECFSZ      R13, 1, 1
	BRA         L_pisca_led19
	DECFSZ      R12, 1, 1
	BRA         L_pisca_led19
	DECFSZ      R11, 1, 1
	BRA         L_pisca_led19
	NOP
	NOP
;Ex02.c,13 :: 		for (i = 0; i < num_piscadas; i++) {
	INCF        _i+0, 1 
;Ex02.c,18 :: 		}
	GOTO        L_pisca_led15
L_pisca_led16:
;Ex02.c,19 :: 		}
L_end_pisca_led1:
	RETURN      0
; end of _pisca_led1

_pisca_led2_e_led3:

;Ex02.c,21 :: 		void pisca_led2_e_led3(int num_piscadas) {
;Ex02.c,22 :: 		for (i = 0; i < num_piscadas; i++) {
	CLRF        _i+0 
L_pisca_led2_e_led310:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_pisca_led2_e_led3_num_piscadas+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__pisca_led2_e_led325
	MOVF        FARG_pisca_led2_e_led3_num_piscadas+0, 0 
	SUBWF       _i+0, 0 
L__pisca_led2_e_led325:
	BTFSC       STATUS+0, 0 
	GOTO        L_pisca_led2_e_led311
;Ex02.c,23 :: 		portd = (1 << 2) | (1 << 3);  // liga os LEDs 2 e 3
	MOVLW       12
	MOVWF       PORTD+0 
;Ex02.c,24 :: 		delay_ms(1000);  // espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_pisca_led2_e_led313:
	DECFSZ      R13, 1, 1
	BRA         L_pisca_led2_e_led313
	DECFSZ      R12, 1, 1
	BRA         L_pisca_led2_e_led313
	DECFSZ      R11, 1, 1
	BRA         L_pisca_led2_e_led313
	NOP
	NOP
;Ex02.c,25 :: 		portd = 0;  // desliga os LEDs 2 e 3
	CLRF        PORTD+0 
;Ex02.c,26 :: 		delay_ms(1000);  // espera 1 segundo
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_pisca_led2_e_led314:
	DECFSZ      R13, 1, 1
	BRA         L_pisca_led2_e_led314
	DECFSZ      R12, 1, 1
	BRA         L_pisca_led2_e_led314
	DECFSZ      R11, 1, 1
	BRA         L_pisca_led2_e_led314
	NOP
	NOP
;Ex02.c,22 :: 		for (i = 0; i < num_piscadas; i++) {
	INCF        _i+0, 1 
;Ex02.c,27 :: 		}
	GOTO        L_pisca_led2_e_led310
L_pisca_led2_e_led311:
;Ex02.c,28 :: 		}
L_end_pisca_led2_e_led3:
	RETURN      0
; end of _pisca_led2_e_led3

_main:

;Ex02.c,30 :: 		void main() {
;Ex02.c,31 :: 		trisd = 0;  // configura os pinos da porta D como saída
	CLRF        TRISD+0 
;Ex02.c,32 :: 		portd = 0;  // zera os pinos da porta D
	CLRF        PORTD+0 
;Ex02.c,34 :: 		while (1) {  // início de um loop infinito
L_main15:
;Ex02.c,35 :: 		pisca_led0(20);  // pisca o LED 0, 20 vezes
	MOVLW       20
	MOVWF       FARG_pisca_led0_num_piscadas+0 
	MOVLW       0
	MOVWF       FARG_pisca_led0_num_piscadas+1 
	CALL        _pisca_led0+0, 0
;Ex02.c,36 :: 		delay_ms(3000);  // espera 3 segundos
	MOVLW       31
	MOVWF       R11, 0
	MOVLW       113
	MOVWF       R12, 0
	MOVLW       30
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	DECFSZ      R11, 1, 1
	BRA         L_main17
	NOP
;Ex02.c,37 :: 		pisca_led1(10);  // pisca o LED 1, 10 vezes
	MOVLW       10
	MOVWF       FARG_pisca_led1_num_piscadas+0 
	MOVLW       0
	MOVWF       FARG_pisca_led1_num_piscadas+1 
	CALL        _pisca_led1+0, 0
;Ex02.c,38 :: 		delay_ms(5000);  // espera 5 segundos
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main18:
	DECFSZ      R13, 1, 1
	BRA         L_main18
	DECFSZ      R12, 1, 1
	BRA         L_main18
	DECFSZ      R11, 1, 1
	BRA         L_main18
	NOP
	NOP
;Ex02.c,39 :: 		pisca_led2_e_led3(15);  // pisca os LEDs 2 e 3, 15 vezes
	MOVLW       15
	MOVWF       FARG_pisca_led2_e_led3_num_piscadas+0 
	MOVLW       0
	MOVWF       FARG_pisca_led2_e_led3_num_piscadas+1 
	CALL        _pisca_led2_e_led3+0, 0
;Ex02.c,40 :: 		delay_ms(6000);  // espera 6 segundos
	MOVLW       61
	MOVWF       R11, 0
	MOVLW       225
	MOVWF       R12, 0
	MOVLW       63
	MOVWF       R13, 0
L_main19:
	DECFSZ      R13, 1, 1
	BRA         L_main19
	DECFSZ      R12, 1, 1
	BRA         L_main19
	DECFSZ      R11, 1, 1
	BRA         L_main19
	NOP
	NOP
;Ex02.c,41 :: 		}
	GOTO        L_main15
;Ex02.c,42 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
