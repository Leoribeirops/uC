
_main:

;EX17.c,5 :: 		void main() {
;EX17.c,6 :: 		trisb.f0 = 0;  // Configura o pino RB0 como saída
	BCF         TRISB+0, 0 
;EX17.c,8 :: 		while (1) {  // Loop infinito para repetir o sinal SOS
L_main0:
;EX17.c,10 :: 		for (i = 0; i < 3; i++) {
	CLRF        _i+0 
L_main2:
	MOVLW       3
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;EX17.c,11 :: 		portb.f0 = 1;  // Liga o buzzer
	BSF         PORTB+0, 0 
;EX17.c,12 :: 		delay_ms(Bip_curto);  // Bip curto
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
;EX17.c,13 :: 		portb.f0 = 0;  // Desliga o buzzer
	BCF         PORTB+0, 0 
;EX17.c,14 :: 		delay_ms(Bip_curto);  // Espera antes do próximo bip
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
;EX17.c,10 :: 		for (i = 0; i < 3; i++) {
	INCF        _i+0, 1 
;EX17.c,15 :: 		}
	GOTO        L_main2
L_main3:
;EX17.c,17 :: 		delay_ms(400);  // Espera entre bips curtos e longos
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
;EX17.c,20 :: 		for (i = 0; i < 3; i++) {
	CLRF        _i+0 
L_main8:
	MOVLW       3
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main9
;EX17.c,21 :: 		portb.f0 = 1;  // Liga o buzzer
	BSF         PORTB+0, 0 
;EX17.c,22 :: 		delay_ms(Bip_longo);  // Bip longo
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main11:
	DECFSZ      R13, 1, 1
	BRA         L_main11
	DECFSZ      R12, 1, 1
	BRA         L_main11
	DECFSZ      R11, 1, 1
	BRA         L_main11
;EX17.c,23 :: 		portb.f0 = 0;  // Desliga o buzzer
	BCF         PORTB+0, 0 
;EX17.c,24 :: 		delay_ms(Bip_longo);  // Espera antes do próximo bip
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main12:
	DECFSZ      R13, 1, 1
	BRA         L_main12
	DECFSZ      R12, 1, 1
	BRA         L_main12
	DECFSZ      R11, 1, 1
	BRA         L_main12
;EX17.c,20 :: 		for (i = 0; i < 3; i++) {
	INCF        _i+0, 1 
;EX17.c,25 :: 		}
	GOTO        L_main8
L_main9:
;EX17.c,27 :: 		delay_ms(400);  // Espera entre bips longos e curtos
	MOVLW       5
	MOVWF       R11, 0
	MOVLW       15
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main13:
	DECFSZ      R13, 1, 1
	BRA         L_main13
	DECFSZ      R12, 1, 1
	BRA         L_main13
	DECFSZ      R11, 1, 1
	BRA         L_main13
;EX17.c,30 :: 		for (i = 0; i < 3; i++) {
	CLRF        _i+0 
L_main14:
	MOVLW       3
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main15
;EX17.c,31 :: 		portb.f0 = 1;  // Liga o buzzer
	BSF         PORTB+0, 0 
;EX17.c,32 :: 		delay_ms(Bip_curto);  // Bip curto
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	DECFSZ      R11, 1, 1
	BRA         L_main17
	NOP
;EX17.c,33 :: 		portb.f0 = 0;  // Desliga o buzzer
	BCF         PORTB+0, 0 
;EX17.c,34 :: 		delay_ms(Bip_curto);  // Espera antes do próximo bip
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main18:
	DECFSZ      R13, 1, 1
	BRA         L_main18
	DECFSZ      R12, 1, 1
	BRA         L_main18
	DECFSZ      R11, 1, 1
	BRA         L_main18
	NOP
;EX17.c,30 :: 		for (i = 0; i < 3; i++) {
	INCF        _i+0, 1 
;EX17.c,35 :: 		}
	GOTO        L_main14
L_main15:
;EX17.c,37 :: 		delay_ms(1500);  // Espera 1,5 segundos antes de repetir o sinal SOS
	MOVLW       16
	MOVWF       R11, 0
	MOVLW       57
	MOVWF       R12, 0
	MOVLW       13
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
;EX17.c,38 :: 		}
	GOTO        L_main0
;EX17.c,39 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
