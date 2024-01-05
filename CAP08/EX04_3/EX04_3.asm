
_decodificador:

;EX04_3.c,6 :: 		int decodificador(int digito) {
;EX04_3.c,7 :: 		switch(digito) {
	GOTO        L_decodificador0
;EX04_3.c,8 :: 		case 0: return 0b0111111;
L_decodificador2:
	MOVLW       63
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,9 :: 		case 1: return 0b0000110;
L_decodificador3:
	MOVLW       6
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,10 :: 		case 2: return 0b1011011;
L_decodificador4:
	MOVLW       91
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,11 :: 		case 3: return 0b1001111;
L_decodificador5:
	MOVLW       79
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,12 :: 		case 4: return 0b1100110;
L_decodificador6:
	MOVLW       102
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,13 :: 		case 5: return 0b1101101;
L_decodificador7:
	MOVLW       109
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,14 :: 		case 6: return 0b1111101;
L_decodificador8:
	MOVLW       125
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,15 :: 		case 7: return 0b0000111;
L_decodificador9:
	MOVLW       7
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,16 :: 		case 8: return 0b1111111;
L_decodificador10:
	MOVLW       127
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,17 :: 		case 9: return 0b1101111;
L_decodificador11:
	MOVLW       111
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_decodificador
;EX04_3.c,18 :: 		default: return 0;  // Retorna 0 para valores inválidos
L_decodificador12:
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_decodificador
;EX04_3.c,19 :: 		}
L_decodificador0:
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador23
	MOVLW       0
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador23:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador2
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador24
	MOVLW       1
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador24:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador3
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador25
	MOVLW       2
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador25:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador4
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador26
	MOVLW       3
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador26:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador5
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador27
	MOVLW       4
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador27:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador6
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador28
	MOVLW       5
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador28:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador7
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador29
	MOVLW       6
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador29:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador8
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador30
	MOVLW       7
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador30:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador9
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador31
	MOVLW       8
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador31:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador10
	MOVLW       0
	XORWF       FARG_decodificador_digito+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decodificador32
	MOVLW       9
	XORWF       FARG_decodificador_digito+0, 0 
L__decodificador32:
	BTFSC       STATUS+0, 2 
	GOTO        L_decodificador11
	GOTO        L_decodificador12
;EX04_3.c,20 :: 		}
L_end_decodificador:
	RETURN      0
; end of _decodificador

_exibir_numero:

;EX04_3.c,26 :: 		void exibir_numero() {
;EX04_3.c,28 :: 		int centenas = numero / 100;
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
	MOVWF       exibir_numero_centenas_L0+0 
	MOVF        R1, 0 
	MOVWF       exibir_numero_centenas_L0+1 
;EX04_3.c,29 :: 		int dezenas = (numero / 10) % 10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _numero+0, 0 
	MOVWF       R0 
	MOVF        _numero+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
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
	MOVWF       exibir_numero_dezenas_L0+0 
	MOVF        R1, 0 
	MOVWF       exibir_numero_dezenas_L0+1 
;EX04_3.c,30 :: 		int unidades = numero % 10;
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
	MOVWF       exibir_numero_unidades_L0+0 
	MOVF        R1, 0 
	MOVWF       exibir_numero_unidades_L0+1 
;EX04_3.c,32 :: 		for(i = 0; i < 333; i++) {  // Repete a exibição por aproximadamente 1 segundo
	CLRF        _i+0 
	CLRF        _i+1 
L_exibir_numero13:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       1
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__exibir_numero34
	MOVLW       77
	SUBWF       _i+0, 0 
L__exibir_numero34:
	BTFSC       STATUS+0, 0 
	GOTO        L_exibir_numero14
;EX04_3.c,34 :: 		porta.f3 = 1;
	BSF         PORTA+0, 3 
;EX04_3.c,35 :: 		portd = decodificador(centenas);
	MOVF        exibir_numero_centenas_L0+0, 0 
	MOVWF       FARG_decodificador_digito+0 
	MOVF        exibir_numero_centenas_L0+1, 0 
	MOVWF       FARG_decodificador_digito+1 
	CALL        _decodificador+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;EX04_3.c,36 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_exibir_numero16:
	DECFSZ      R13, 1, 1
	BRA         L_exibir_numero16
	DECFSZ      R12, 1, 1
	BRA         L_exibir_numero16
	NOP
	NOP
;EX04_3.c,37 :: 		porta.f3 = 0;
	BCF         PORTA+0, 3 
;EX04_3.c,40 :: 		porta.f4 = 1;
	BSF         PORTA+0, 4 
;EX04_3.c,41 :: 		portd = decodificador(dezenas);
	MOVF        exibir_numero_dezenas_L0+0, 0 
	MOVWF       FARG_decodificador_digito+0 
	MOVF        exibir_numero_dezenas_L0+1, 0 
	MOVWF       FARG_decodificador_digito+1 
	CALL        _decodificador+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;EX04_3.c,42 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_exibir_numero17:
	DECFSZ      R13, 1, 1
	BRA         L_exibir_numero17
	DECFSZ      R12, 1, 1
	BRA         L_exibir_numero17
	NOP
	NOP
;EX04_3.c,43 :: 		porta.f4 = 0;
	BCF         PORTA+0, 4 
;EX04_3.c,46 :: 		porta.f5 = 1;
	BSF         PORTA+0, 5 
;EX04_3.c,47 :: 		portd = decodificador(unidades);
	MOVF        exibir_numero_unidades_L0+0, 0 
	MOVWF       FARG_decodificador_digito+0 
	MOVF        exibir_numero_unidades_L0+1, 0 
	MOVWF       FARG_decodificador_digito+1 
	CALL        _decodificador+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;EX04_3.c,48 :: 		delay_ms(1);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_exibir_numero18:
	DECFSZ      R13, 1, 1
	BRA         L_exibir_numero18
	DECFSZ      R12, 1, 1
	BRA         L_exibir_numero18
	NOP
	NOP
;EX04_3.c,49 :: 		porta.f5 = 0;
	BCF         PORTA+0, 5 
;EX04_3.c,32 :: 		for(i = 0; i < 333; i++) {  // Repete a exibição por aproximadamente 1 segundo
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;EX04_3.c,50 :: 		}
	GOTO        L_exibir_numero13
L_exibir_numero14:
;EX04_3.c,51 :: 		}
L_end_exibir_numero:
	RETURN      0
; end of _exibir_numero

_incrementar_numero:

;EX04_3.c,54 :: 		void incrementar_numero() {
;EX04_3.c,55 :: 		numero++;
	INFSNZ      _numero+0, 1 
	INCF        _numero+1, 1 
;EX04_3.c,56 :: 		if (numero > 999) {
	MOVLW       128
	XORLW       3
	MOVWF       R0 
	MOVLW       128
	XORWF       _numero+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__incrementar_numero36
	MOVF        _numero+0, 0 
	SUBLW       231
L__incrementar_numero36:
	BTFSC       STATUS+0, 0 
	GOTO        L_incrementar_numero19
;EX04_3.c,57 :: 		numero = 0;  // Reinicia a contagem quando atinge 1000
	CLRF        _numero+0 
	CLRF        _numero+1 
;EX04_3.c,58 :: 		}
L_incrementar_numero19:
;EX04_3.c,59 :: 		}
L_end_incrementar_numero:
	RETURN      0
; end of _incrementar_numero

_main:

;EX04_3.c,62 :: 		void main() {
;EX04_3.c,63 :: 		trisa = 0b11000111;  // Configura RA3, RA4 e RA5 como saída
	MOVLW       199
	MOVWF       TRISA+0 
;EX04_3.c,64 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;EX04_3.c,65 :: 		numero = 0;  // Valor inicial é 0 para começar a contagem
	CLRF        _numero+0 
	CLRF        _numero+1 
;EX04_3.c,66 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;EX04_3.c,67 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;EX04_3.c,69 :: 		while(1) {
L_main20:
;EX04_3.c,70 :: 		exibir_numero();  // Chama a função para exibir o número
	CALL        _exibir_numero+0, 0
;EX04_3.c,71 :: 		incrementar_numero();  // Chama a função para incrementar o número
	CALL        _incrementar_numero+0, 0
;EX04_3.c,72 :: 		}
	GOTO        L_main20
;EX04_3.c,73 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
