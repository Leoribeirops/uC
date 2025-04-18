
_main:

;MyProject.c,14 :: 		void main ()
;MyProject.c,16 :: 		adcon1 = 7;
	MOVLW      7
	MOVWF      ADCON1+0
;MyProject.c,17 :: 		lcd_init ();
	CALL       _Lcd_Init+0
;MyProject.c,18 :: 		lcd_out(1,2,"ELETROTECNICA");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,19 :: 		lcd_out (2,6,"IFSUL");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
