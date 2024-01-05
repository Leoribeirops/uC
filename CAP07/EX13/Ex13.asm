
_displayDigit:

;Ex13.c,16 :: 		void displayDigit(unsigned char digit, unsigned char displaySelect) {
;Ex13.c,17 :: 		portd = segmentPatterns[digit];  // Coloca o padrão do dígito no PORTD
	MOVLW       _segmentPatterns+0
	ADDWF       FARG_displayDigit_digit+0, 0 
	MOVWF       TBLPTR+0 
	MOVLW       hi_addr(_segmentPatterns+0)
	MOVWF       TBLPTR+1 
	MOVLW       0
	ADDWFC      TBLPTR+1, 1 
	MOVLW       higher_addr(_segmentPatterns+0)
	MOVWF       TBLPTR+2 
	MOVLW       0
	ADDWFC      TBLPTR+2, 1 
	TBLRD*+
	MOVFF       TABLAT+0, PORTD+0
;Ex13.c,18 :: 		porta = displaySelect;  // Ativa o display correspondente
	MOVF        FARG_displayDigit_displaySelect+0, 0 
	MOVWF       PORTA+0 
;Ex13.c,19 :: 		delay_ms(1);  // Mantém o display ligado por 1 ms
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_displayDigit0:
	DECFSZ      R13, 1, 1
	BRA         L_displayDigit0
	DECFSZ      R12, 1, 1
	BRA         L_displayDigit0
	NOP
	NOP
;Ex13.c,20 :: 		porta = 0;  // Desativa o display
	CLRF        PORTA+0 
;Ex13.c,21 :: 		}
L_end_displayDigit:
	RETURN      0
; end of _displayDigit

_main:

;Ex13.c,23 :: 		void main() {
;Ex13.c,24 :: 		unsigned int number = 123;  // Variável que contém o número a ser exibido
	MOVLW       123
	MOVWF       main_number_L0+0 
	MOVLW       0
	MOVWF       main_number_L0+1 
;Ex13.c,27 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex13.c,28 :: 		trisa = 0;  // Configura PORTA como saída
	CLRF        TRISA+0 
;Ex13.c,29 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex13.c,30 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex13.c,32 :: 		while (1) {  // Loop infinito para manter o programa rodando
L_main1:
;Ex13.c,34 :: 		hundreds = number / 100;
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        main_number_L0+0, 0 
	MOVWF       R0 
	MOVF        main_number_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16X16_U+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+0 
	MOVF        R1, 0 
	MOVWF       FLOC__main+1 
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        main_number_L0+0, 0 
	MOVWF       R0 
	MOVF        main_number_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16X16_U+0, 0
;Ex13.c,35 :: 		tens = (number / 10) % 10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16X16_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_tens_L0+0 
;Ex13.c,36 :: 		units = number % 10;
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        main_number_L0+0, 0 
	MOVWF       R0 
	MOVF        main_number_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16X16_U+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_units_L0+0 
;Ex13.c,39 :: 		displayDigit(hundreds, 0b00001000);  // Exibe centenas no display ativado por RA3
	MOVF        FLOC__main+0, 0 
	MOVWF       FARG_displayDigit_digit+0 
	MOVLW       8
	MOVWF       FARG_displayDigit_displaySelect+0 
	CALL        _displayDigit+0, 0
;Ex13.c,40 :: 		displayDigit(tens, 0b00010000);  // Exibe dezenas no display ativado por RA4
	MOVF        main_tens_L0+0, 0 
	MOVWF       FARG_displayDigit_digit+0 
	MOVLW       16
	MOVWF       FARG_displayDigit_displaySelect+0 
	CALL        _displayDigit+0, 0
;Ex13.c,41 :: 		displayDigit(units, 0b00100000);  // Exibe unidades no display ativado por RA5
	MOVF        main_units_L0+0, 0 
	MOVWF       FARG_displayDigit_digit+0 
	MOVLW       32
	MOVWF       FARG_displayDigit_displaySelect+0 
	CALL        _displayDigit+0, 0
;Ex13.c,42 :: 		}
	GOTO        L_main1
;Ex13.c,43 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
