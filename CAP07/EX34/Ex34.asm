
_main:

;Ex34.c,1 :: 		void main() {
;Ex34.c,2 :: 		trisd.rd0 = 0;  // Configura RD0 como saída
	BCF         TRISD+0, 0 
;Ex34.c,3 :: 		adcon0 = 0;     // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex34.c,4 :: 		adcon1 = 15;    // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex34.c,6 :: 		while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
L_main0:
;Ex34.c,7 :: 		unsigned char count = 0;  // Variável de contagem para controlar o número de piscadas
	CLRF        main_count_L1+0 
;Ex34.c,8 :: 		while (count < 8) {  // Loop para piscar o LED 0 oito vezes
L_main2:
	MOVLW       8
	SUBWF       main_count_L1+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;Ex34.c,9 :: 		portd.rd0 = ~portd.rd0;  // Inverte o estado do LED 0
	BTG         PORTD+0, 0 
;Ex34.c,10 :: 		delay_ms(125);  // Aguarda 125 ms para obter uma frequência de 4 Hz (1/0.125s = 4 Hz)
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       69
	MOVWF       R12, 0
	MOVLW       169
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
	NOP
	NOP
;Ex34.c,11 :: 		if (portd.rd0 == 0) {  // Incrementa a contagem somente quando o LED 0 estiver desligado (para contar uma piscada completa)
	BTFSC       PORTD+0, 0 
	GOTO        L_main5
;Ex34.c,12 :: 		count++;
	INCF        main_count_L1+0, 1 
;Ex34.c,13 :: 		}
L_main5:
;Ex34.c,14 :: 		}
	GOTO        L_main2
L_main3:
;Ex34.c,15 :: 		portd.rd0 = 0;  // Garante que o LED 0 está desligado antes de entrar no período de espera
	BCF         PORTD+0, 0 
;Ex34.c,16 :: 		delay_ms(5000);  // Aguarda 5 segundos
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
	NOP
;Ex34.c,18 :: 		}
	GOTO        L_main0
;Ex34.c,19 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
