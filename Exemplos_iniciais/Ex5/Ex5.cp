#line 1 "E:/Users/Leo/Documents/micropicC/Ex5/Ex5.c"









void beep(int time_ms)
{
 PORTB = 1;
 delay_ms(time_ms);
 PORTB = 0;
 delay_ms(time_ms);
}

void sos_signal()
{
 int i;

 for (i = 0; i < 3; i++)
 {
 beep( 100 );
 }
 delay_ms( 100 );

 for (i = 0; i < 3; i++)
 {
 beep( 200 );
 }
 delay_ms( 100 );

 for (i = 0; i < 3; i++)
 {
 beep( 100 );
 }
 delay_ms( 1500 );
}

void main()
{
 TRISB = 0;

 while (1)
 {
 sos_signal();
 delay_ms( 400 );
 }
}
