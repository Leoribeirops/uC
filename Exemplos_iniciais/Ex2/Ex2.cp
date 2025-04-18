#line 1 "E:/Users/Leo/Documents/micropicC/Ex2/Ex2.c"
void main()
{
 trisa = 0;
 trisb = 0;
 while (1)
 {

 porta = 1;
 portb = 0;
 delay_ms(250);
 porta = 0;
 portb = 1;
 delay_ms(250);
 }
}
