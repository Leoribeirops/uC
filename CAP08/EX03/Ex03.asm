
_decodificador:

;Ex03.c,5 :: 		int decodificador(int digito) {
;Ex03.c,6 :: 		switch(digito) {
	GOTO        L_decodificador0
;Ex03.c,7 :: 		case 0: return 0b0111111;
L_decodificador2:
	MOVLW       63
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,8 :: 		case 1: return 0b0000110;
L_decodificador3:
	MOVLW       6
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,9 :: 		case 2: return 0b1011011;
L_decodificador4:
	MOVLW       91
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,10 :: 		case 3: return 0b1001111;
L_decodificador5:
	MOVLW       79
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,11 :: 		case 4: return 0b1100110;
L_decodificador6:
	MOVLW       102
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,12 :: 		case 5: return 0b1101101;
L_decodificador7:
	MOVLW       109
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,13 :: 		case 6: return 0b1111101;
L_decodificador8:
	MOVLW       125
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,14 :: 		case 7: return 0b0000111;
L_decodificador9:
	MOVLW       7
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,15 :: 		case 8: return 0b1111111;
L_decodificador10:
	MOVLW       127
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,16 :: 		case 9: return 0b1101111;
L_decodificador11:
	MOVLW       111
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;Ex03.c,17 :: 		default: return 0;  // Retorna 0 para valores inválidos
L_decodificador12:
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_decodificador
;Ex03.c,18 :: 		}
L_decodificador0:
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador19
	MOVLW       0
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador19:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador2
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador20
	MOVLW       1
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador20:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador3
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador21
	MOVLW       2
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador21:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador4
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador22
	MOVLW       3
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador22:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador5
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador23
	MOVLW       4
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador23:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador6
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador24
	MOVLW       5
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador24:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador7
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador25
	MOVLW       6
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador25:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador8
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador26
	MOVLW       7
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador26:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador9
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador27
	MOVLW       8
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador27:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador10
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador28
	MOVLW       9
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador28:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador11
	GOTO        L_decodificador12
;Ex03.c,19 :: 		}
L_end_decodificador:
	RETURN      0
; end of _decodificador

_main:

;Ex03.c,22 :: 		void main() {
;Ex03.c,23 :: 		trisa = 0b11000111;  // Configura RA3, RA4 e RA5 como saída
	MOVLW       199
	MOVWF       TRISA+0 
;Ex03.c,24 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex03.c,25 :: 		numero = 123;  // Valor inicial (altere conforme necessário)
	MOVLW       123
	MOVWF       _numero+0 
	MOVLW       0
	MOVWF       _numero+1 
;Ex03.c,26 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex03.c,27 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex03.c,30 :: 		while(1) {
L_main13:
;Ex03.c,32 :: 		int centenas = numero / 100;
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _numero+0, 0 
	MOVWF       R0 
	MOVF        _numero+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+0 
	MOVF        R1, 0 
	MOVWF       FLOC__main+1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _numero+0, 0 
	MOVWF       R0 
	MOVF        _numero+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
;Ex03.c,33 :: 		int dezenas = (numero / 10) % 10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_dezenas_L1+0 
	MOVF        R1, 0 
	MOVWF       main_dezenas_L1+1 
;Ex03.c,34 :: 		int unidades = numero % 10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _numero+0, 0 
	MOVWF       R0 
	MOVF        _numero+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_unidades_L1+0 
	MOVF        R1, 0 
	MOVWF       main_unidades_L1+1 
;Ex03.c,37 :: 		porta.f3 = 1;
	BSF         PORTA+0, 3 
;Ex03.c,38 :: 		portd = decodificador(centenas);
	MOVF        FLOC__main+0, 0 
	MOVWF       FARG_decodificador_digito+0 
	MOVF        FLOC__main+1, 0 
	MOVWF       FARG_decodificador_digito+1 
	CALL        _decodificador+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Ex03.c,39 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_main15:
	DECFSZ      R13, 1, 1
	BRA         L_main15
	DECFSZ      R12, 1, 1
	BRA         L_main15
	NOP
	NOP
;Ex03.c,40 :: 		porta.f3 = 0;
	BCF         PORTA+0, 3 
;Ex03.c,43 :: 		porta.f4 = 1;
	BSF         PORTA+0, 4 
;Ex03.c,44 :: 		portd = decodificador(dezenas);
	MOVF        main_dezenas_L1+0, 0 
	MOVWF       FARG_decodificador_digito+0 
	MOVF        main_dezenas_L1+1, 0 
	MOVWF       FARG_decodificador_digito+1 
	CALL        _decodificador+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Ex03.c,45 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_main16:
	DECFSZ      R13, 1, 1
	BRA         L_main16
	DECFSZ      R12, 1, 1
	BRA         L_main16
	NOP
	NOP
;Ex03.c,46 :: 		porta.f4 = 0;
	BCF         PORTA+0, 4 
;Ex03.c,49 :: 		porta.f5 = 1;
	BSF         PORTA+0, 5 
;Ex03.c,50 :: 		portd = decodificador(unidades);
	MOVF        main_unidades_L1+0, 0 
	MOVWF       FARG_decodificador_digito+0 
	MOVF        main_unidades_L1+1, 0 
	MOVWF       FARG_decodificador_digito+1 
	CALL        _decodificador+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;Ex03.c,51 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	NOP
	NOP
;Ex03.c,52 :: 		porta.f5 = 0;
	BCF         PORTA+0, 5 
;Ex03.c,53 :: 		}
	GOTO        L_main13
;Ex03.c,54 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
