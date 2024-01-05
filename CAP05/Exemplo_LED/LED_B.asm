
_main:

;LED_B.c,1 :: 		void main() {
;LED_B.c,3 :: 		TRISA = 0;           // set direction to be output
	CLRF        TRISA+0 
;LED_B.c,4 :: 		TRISB = 0;           // set direction to be output
	CLRF        TRISB+0 
;LED_B.c,5 :: 		TRISC = 0;           // set direction to be output
	CLRF        TRISC+0 
;LED_B.c,6 :: 		TRISD = 0;           // set direction to be output
	CLRF        TRISD+0 
;LED_B.c,7 :: 		TRISE = 0;           // set direction to be output
	CLRF        TRISE+0 
;LED_B.c,9 :: 		do {
L_main0:
;LED_B.c,10 :: 		LATA = 0x00;       // Turn OFF LEDs on PORTA
	CLRF        LATA+0 
;LED_B.c,11 :: 		LATB = 0x00;       // Turn OFF LEDs on PORTB
	CLRF        LATB+0 
;LED_B.c,12 :: 		LATC = 0x00;       // Turn OFF LEDs on PORTC
	CLRF        LATC+0 
;LED_B.c,13 :: 		LATD = 0x00;       // Turn OFF LEDs on PORTD
	CLRF        LATD+0 
;LED_B.c,14 :: 		LATE = 0x00;       // Turn OFF LEDs on PORTE
	CLRF        LATE+0 
;LED_B.c,15 :: 		Delay_ms(1000);    // 1 second delay
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;LED_B.c,17 :: 		LATA = 0xFF;       // Turn ON LEDs on PORTA
	MOVLW       255
	MOVWF       LATA+0 
;LED_B.c,18 :: 		LATB = 0xFF;       // Turn ON LEDs on PORTB
	MOVLW       255
	MOVWF       LATB+0 
;LED_B.c,19 :: 		LATC = 0xFF;       // Turn ON LEDs on PORTC
	MOVLW       255
	MOVWF       LATC+0 
;LED_B.c,20 :: 		LATD = 0xFF;       // Turn ON LEDs on PORTD
	MOVLW       255
	MOVWF       LATD+0 
;LED_B.c,21 :: 		LATE = 0xFF;       // Turn ON LEDs on PORTE
	MOVLW       255
	MOVWF       LATE+0 
;LED_B.c,22 :: 		Delay_ms(1000);    // 1 second delay
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
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
;LED_B.c,23 :: 		} while(1);          // Endless loop
	GOTO        L_main0
;LED_B.c,24 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
