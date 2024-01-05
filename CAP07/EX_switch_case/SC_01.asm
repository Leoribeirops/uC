
_main:

;SC_01.c,4 :: 		void main() {
;SC_01.c,5 :: 		trisb = 0b1111;  // Configura RB0, RB1, RB2 e RB3 como entrada
	MOVLW       15
	MOVWF       TRISB+0 
;SC_01.c,6 :: 		trisd = 0;  // Configura PORTD como saída
	CLRF        TRISD+0 
;SC_01.c,7 :: 		adcon0 = 0;  // Configura ADCON0 para modo digital
	CLRF        ADCON0+0 
;SC_01.c,8 :: 		adcon1 = 15;  // Configura ADCON1 para modo digital
	MOVLW       15
	MOVWF       ADCON1+0 
;SC_01.c,9 :: 		portd = 0;  // Reseta PORTD para garantir que não haja estado residual dos LEDs
	CLRF        PORTD+0 
;SC_01.c,11 :: 		while (1) {  // Loop infinito para manter o programa rodando
L_main0:
;SC_01.c,15 :: 		buttonPressed = portb;
	MOVF        PORTB+0, 0 
	MOVWF       _buttonPressed+0 
;SC_01.c,18 :: 		switch (buttonPressed) {
	GOTO        L_main2
;SC_01.c,19 :: 		case 0b1110:  // Se o botão em RB0 foi pressionado
L_main4:
;SC_01.c,20 :: 		portd = 0b0001;  // Liga o LED 0
	MOVLW       1
	MOVWF       PORTD+0 
;SC_01.c,23 :: 		break;
	GOTO        L_main3
;SC_01.c,24 :: 		case 0b1101:  // Se o botão em RB1 foi pressionado
L_main5:
;SC_01.c,25 :: 		portd = 0b0010;  // Liga o LED 1
	MOVLW       2
	MOVWF       PORTD+0 
;SC_01.c,26 :: 		break;
	GOTO        L_main3
;SC_01.c,27 :: 		case 0b1011:  // Se o botão em RB2 foi pressionado
L_main6:
;SC_01.c,28 :: 		portd = 0b0100;  // Liga o LED 2
	MOVLW       4
	MOVWF       PORTD+0 
;SC_01.c,29 :: 		break;
	GOTO        L_main3
;SC_01.c,30 :: 		case 0b0111:  // Se o botão em RB3 foi pressionado
L_main7:
;SC_01.c,31 :: 		portd = 0b1000;  // Liga o LED 3
	MOVLW       8
	MOVWF       PORTD+0 
;SC_01.c,32 :: 		break;
	GOTO        L_main3
;SC_01.c,33 :: 		default:
L_main8:
;SC_01.c,35 :: 		portd=0;  // Todos os LEDs apresentam i
	CLRF        PORTD+0 
;SC_01.c,36 :: 		break;
	GOTO        L_main3
;SC_01.c,37 :: 		}
L_main2:
	MOVF        _buttonPressed+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_main4
	MOVF        _buttonPressed+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_main5
	MOVF        _buttonPressed+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_main6
	MOVF        _buttonPressed+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_main7
	GOTO        L_main8
L_main3:
;SC_01.c,39 :: 		}
	GOTO        L_main0
;SC_01.c,40 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
