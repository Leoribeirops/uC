
_main:

;Ex10.c,1 :: 		void main() {
;Ex10.c,3 :: 		trisb = 0b00001111;  // Configura RB0, RB1, RB2 e RB3 como entrada
	MOVLW       15
	MOVWF       TRISB+0 
;Ex10.c,4 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;Ex10.c,5 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;Ex10.c,6 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;Ex10.c,8 :: 		while (1) {  // Loop infinito para manter o programa rodando
L_main0:
;Ex10.c,11 :: 		if (portb.f0 == 0 && portd.f1 == 1) {
	BTFSC       PORTB+0, 0 
	GOTO        L_main4
	BTFSS       PORTD+0, 1 
	GOTO        L_main4
L__main8:
;Ex10.c,12 :: 		portd.f0 = 1;
	BSF         PORTD+0, 0 
;Ex10.c,13 :: 		}
L_main4:
;Ex10.c,16 :: 		if (portb.f2 == 0) {
	BTFSC       PORTB+0, 2 
	GOTO        L_main5
;Ex10.c,17 :: 		portd.f1 = 1;
	BSF         PORTD+0, 1 
;Ex10.c,18 :: 		}
L_main5:
;Ex10.c,21 :: 		if (portb.f1 == 0) {
	BTFSC       PORTB+0, 1 
	GOTO        L_main6
;Ex10.c,22 :: 		portd.f0 = 0;
	BCF         PORTD+0, 0 
;Ex10.c,23 :: 		}
L_main6:
;Ex10.c,26 :: 		if (portb.f3 == 0) {
	BTFSC       PORTB+0, 3 
	GOTO        L_main7
;Ex10.c,27 :: 		portd.f0 = 0;
	BCF         PORTD+0, 0 
;Ex10.c,28 :: 		portd.f1 = 0;
	BCF         PORTD+0, 1 
;Ex10.c,29 :: 		}
L_main7:
;Ex10.c,34 :: 		}
	GOTO        L_main0
;Ex10.c,35 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
