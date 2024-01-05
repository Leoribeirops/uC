
_main:

;Ex27.c,3 :: 		void main() {
;Ex27.c,4 :: 		trisd.rd0 = 0;  // Configura RD0 como saída
	BCF         TRISD+0, 0 
;Ex27.c,5 :: 		trisb = 0xFF;   // Configura PORTB como entrada
	MOVLW       255
	MOVWF       TRISB+0 
;Ex27.c,6 :: 		adcon0=0;
	CLRF        ADCON0+0 
;Ex27.c,7 :: 		adcon1=15;
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex27.c,9 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;Ex27.c,11 :: 		if (portb.rb0 == 0) {  // Se a chave 1 é pressionada
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Ex27.c,12 :: 		temporizador = 10000;  // Reinicia a temporização para 10 segundos
	MOVLW       16
	MOVWF       _temporizador+0 
	MOVLW       39
	MOVWF       _temporizador+1 
;Ex27.c,13 :: 		}
L_main2:
;Ex27.c,15 :: 		if (portb.rb1 == 0 && temporizador > 0) {  // Se a chave 2 é pressionada enquanto o LED 0 está ligado
	BTFSC       PORTB+0, 1 
	GOTO        L_main5
	MOVLW       0
	MOVWF       R0 
	MOVF        _temporizador+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main11
	MOVF        _temporizador+0, 0 
	SUBLW       0
L__main11:
	BTFSC       STATUS+0, 0 
	GOTO        L_main5
L__main9:
;Ex27.c,16 :: 		temporizador = 0;  // Finaliza a temporização
	CLRF        _temporizador+0 
	CLRF        _temporizador+1 
;Ex27.c,17 :: 		}
L_main5:
;Ex27.c,19 :: 		if (temporizador > 0) {  // Se ainda há tempo restante
	MOVLW       0
	MOVWF       R0 
	MOVF        _temporizador+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main12
	MOVF        _temporizador+0, 0 
	SUBLW       0
L__main12:
	BTFSC       STATUS+0, 0 
	GOTO        L_main6
;Ex27.c,20 :: 		portd.rd0 = 1;  // Liga o LED 0
	BSF         PORTD+0, 0 
;Ex27.c,21 :: 		delay_ms(100);  // Aguarda 100 ms
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	NOP
;Ex27.c,22 :: 		temporizador -= 100;  // Atualiza o tempo restante
	MOVLW       100
	SUBWF       _temporizador+0, 1 
	MOVLW       0
	SUBWFB      _temporizador+1, 1 
;Ex27.c,23 :: 		} else {
	GOTO        L_main8
L_main6:
;Ex27.c,24 :: 		portd.rd0 = 0;  // Desliga o LED 0
	BCF         PORTD+0, 0 
;Ex27.c,25 :: 		}
L_main8:
;Ex27.c,26 :: 		}
	GOTO        L_main0
;Ex27.c,27 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
