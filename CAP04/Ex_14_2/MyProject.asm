
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		trisa=0;
	CLRF       TRISA+0
;MyProject.c,3 :: 		trisb=0;
	CLRF       TRISB+0
;MyProject.c,4 :: 		while(1)
L_main0:
;MyProject.c,6 :: 		porta.f4 = 0;            //liga o display 4
	BCF        PORTA+0, 4
;MyProject.c,7 :: 		portb=0b0100;            //número para aparecer no display em bcd
	MOVLW      4
	MOVWF      PORTB+0
;MyProject.c,8 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;MyProject.c,9 :: 		porta.f4=1;               //desliga o display 4
	BSF        PORTA+0, 4
;MyProject.c,10 :: 		delay_ms (10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;MyProject.c,12 :: 		porta.f3 = 0;
	BCF        PORTA+0, 3
;MyProject.c,13 :: 		portb=0b0101;
	MOVLW      5
	MOVWF      PORTB+0
;MyProject.c,14 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
;MyProject.c,15 :: 		porta.f3=1;
	BSF        PORTA+0, 3
;MyProject.c,16 :: 		delay_ms (10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;MyProject.c,18 :: 		porta.f2 = 0;
	BCF        PORTA+0, 2
;MyProject.c,19 :: 		portb=0b0111;
	MOVLW      7
	MOVWF      PORTB+0
;MyProject.c,20 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;MyProject.c,21 :: 		porta.f2=1;
	BSF        PORTA+0, 2
;MyProject.c,22 :: 		delay_ms (10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
;MyProject.c,23 :: 		}
	GOTO       L_main0
;MyProject.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
