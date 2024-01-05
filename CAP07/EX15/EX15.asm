
_getSegmentValue:

;EX15.c,7 :: 		unsigned char getSegmentValue(unsigned char digit) {
;EX15.c,19 :: 		};
	MOVLW       63
	MOVWF       getSegmentValue_segmentValues_L0+0 
	MOVLW       6
	MOVWF       getSegmentValue_segmentValues_L0+1 
	MOVLW       91
	MOVWF       getSegmentValue_segmentValues_L0+2 
	MOVLW       79
	MOVWF       getSegmentValue_segmentValues_L0+3 
	MOVLW       102
	MOVWF       getSegmentValue_segmentValues_L0+4 
	MOVLW       109
	MOVWF       getSegmentValue_segmentValues_L0+5 
	MOVLW       125
	MOVWF       getSegmentValue_segmentValues_L0+6 
	MOVLW       7
	MOVWF       getSegmentValue_segmentValues_L0+7 
	MOVLW       127
	MOVWF       getSegmentValue_segmentValues_L0+8 
	MOVLW       111
	MOVWF       getSegmentValue_segmentValues_L0+9 
;EX15.c,20 :: 		return segmentValues[digit];
	MOVLW       getSegmentValue_segmentValues_L0+0
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(getSegmentValue_segmentValues_L0+0)
	MOVWF       FSR0L+1 
	MOVF        FARG_getSegmentValue_digit+0, 0 
	ADDWF       FSR0L+0, 1 
	BTFSC       STATUS+0, 0 
	INCF        FSR0L+1, 1 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
;EX15.c,21 :: 		}
L_end_getSegmentValue:
	RETURN      0
; end of _getSegmentValue

_main:

;EX15.c,23 :: 		void main() {
;EX15.c,24 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;EX15.c,25 :: 		trisa = 0;  // Configura PORTA como saída
	CLRF        TRISA+0 
;EX15.c,26 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;EX15.c,27 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;EX15.c,28 :: 		portb.f0 = 1;
	BSF         PORTB+0, 0 
;EX15.c,29 :: 		portb.f1 = 1;
	BSF         PORTB+0, 1 
;EX15.c,30 :: 		portb.f2 = 1;
	BSF         PORTB+0, 2 
;EX15.c,31 :: 		peopleCount = 0;
	CLRF        _peopleCount+0 
	CLRF        _peopleCount+1 
;EX15.c,33 :: 		while (1) {
L_main0:
;EX15.c,34 :: 		unsigned char hundreds = peopleCount / 100;
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _peopleCount+0, 0 
	MOVWF       R0 
	MOVF        _peopleCount+1, 0 
	MOVWF       R1 
	CALL        _Div_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+0 
	MOVF        R1, 0 
	MOVWF       FLOC__main+1 
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _peopleCount+0, 0 
	MOVWF       R0 
	MOVF        _peopleCount+1, 0 
	MOVWF       R1 
	CALL        _Div_16X16_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
;EX15.c,35 :: 		unsigned char tens = (peopleCount % 100) / 10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       main_tens_L1+0 
;EX15.c,36 :: 		unsigned char units = peopleCount % 10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        _peopleCount+0, 0 
	MOVWF       R0 
	MOVF        _peopleCount+1, 0 
	MOVWF       R1 
	CALL        _Div_16X16_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_units_L1+0 
;EX15.c,39 :: 		porta = 0b00001000;
	MOVLW       8
	MOVWF       PORTA+0 
;EX15.c,40 :: 		portd = getSegmentValue(hundreds);
	MOVF        FLOC__main+0, 0 
	MOVWF       FARG_getSegmentValue_digit+0 
	CALL        _getSegmentValue+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;EX15.c,41 :: 		delay_ms(10);  // Um pequeno atraso para garantir que o display seja atualizado corretamente
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	NOP
;EX15.c,44 :: 		porta = 0b00010000;
	MOVLW       16
	MOVWF       PORTA+0 
;EX15.c,45 :: 		portd = getSegmentValue(tens);
	MOVF        main_tens_L1+0, 0 
	MOVWF       FARG_getSegmentValue_digit+0 
	CALL        _getSegmentValue+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;EX15.c,46 :: 		delay_ms(10);  // Um pequeno atraso para garantir que o display seja atualizado corretamente
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	NOP
;EX15.c,49 :: 		porta = 0b00100000;
	MOVLW       32
	MOVWF       PORTA+0 
;EX15.c,50 :: 		portd = getSegmentValue(units);
	MOVF        main_units_L1+0, 0 
	MOVWF       FARG_getSegmentValue_digit+0 
	CALL        _getSegmentValue+0, 0
	MOVF        R0, 0 
	MOVWF       PORTD+0 
;EX15.c,51 :: 		delay_ms(10);  // Um pequeno atraso para garantir que o display seja atualizado corretamente
	MOVLW       26
	MOVWF       R12, 0
	MOVLW       248
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	NOP
;EX15.c,53 :: 		if (portb.f0 == 0 && lastStateF0 == 1) {  // Se a chave 0 é pressionada (entrada de pessoa)
	BTFSC       PORTB+0, 0 
	GOTO        L_main7
	MOVF        _lastStateF0+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main7
L__main20:
;EX15.c,54 :: 		if (peopleCount < 1000) {  // Verifica se o número de pessoas é menor que 9
	MOVLW       3
	SUBWF       _peopleCount+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main23
	MOVLW       232
	SUBWF       _peopleCount+0, 0 
L__main23:
	BTFSC       STATUS+0, 0 
	GOTO        L_main8
;EX15.c,55 :: 		peopleCount++;  // Incrementa o contador de pessoas
	INFSNZ      _peopleCount+0, 1 
	INCF        _peopleCount+1, 1 
;EX15.c,56 :: 		}
L_main8:
;EX15.c,58 :: 		delay_ms(1000);  // Aguarda 100 ms para evitar contagem múltipla de uma única pessoa
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	DECFSZ      R11, 1, 1
	BRA         L_main9
	NOP
	NOP
;EX15.c,59 :: 		}
L_main7:
;EX15.c,61 :: 		if (portb.f1 == 0 && lastStateF1 == 1) {  // Se a chave 1 é pressionada (saída de pessoa)
	BTFSC       PORTB+0, 1 
	GOTO        L_main12
	MOVF        _lastStateF1+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main12
L__main19:
;EX15.c,62 :: 		if (peopleCount > 0) {  // Verifica se o número de pessoas é maior que 0
	MOVLW       0
	MOVWF       R0 
	MOVF        _peopleCount+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main24
	MOVF        _peopleCount+0, 0 
	SUBLW       0
L__main24:
	BTFSC       STATUS+0, 0 
	GOTO        L_main13
;EX15.c,63 :: 		peopleCount--;  // Decrementa o contador de pessoas
	MOVLW       1
	SUBWF       _peopleCount+0, 1 
	MOVLW       0
	SUBWFB      _peopleCount+1, 1 
;EX15.c,64 :: 		}
L_main13:
;EX15.c,66 :: 		delay_ms(1000);  // Aguarda 100 ms para evitar contagem múltipla de uma única pessoa
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main14:
	DECFSZ      R13, 1, 1
	BRA         L_main14
	DECFSZ      R12, 1, 1
	BRA         L_main14
	DECFSZ      R11, 1, 1
	BRA         L_main14
	NOP
	NOP
;EX15.c,67 :: 		}
L_main12:
;EX15.c,69 :: 		if (portb.f2 == 0 && lastStateF2 == 1) {     // reseta
	BTFSC       PORTB+0, 2 
	GOTO        L_main17
	MOVF        _lastStateF2+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main17
L__main18:
;EX15.c,70 :: 		peopleCount = 0;
	CLRF        _peopleCount+0 
	CLRF        _peopleCount+1 
;EX15.c,71 :: 		}
L_main17:
;EX15.c,72 :: 		}
	GOTO        L_main0
;EX15.c,73 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
