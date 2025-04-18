#line 1 "E:/Users/Leo/Documents/micropicC/Ex3/Ex3.c"
void main()
{
 trisa = 0;

 trisb = 0b00000000;
 while (1)
 {

 porta = 1;
 delay_ms(1000);
 porta = 0;
 delay_ms(1000);
 porta = 1;
 delay_ms(1000);
 porta = 0;
 delay_ms(1000);
 porta = 1;
 delay_ms(1000);
 porta = 0;
 delay_ms(1000);
 portb = 1;
 delay_ms(1000);
 portb = 0;
 delay_ms(1000);
 portb = 1;
 delay_ms(1000);
 portb = 0;
 delay_ms(1000);
 portb = 1;
 delay_ms(1000);
 portb = 0;
 delay_ms(1000);

 porta = 1;
 portb = 1;
 delay_ms(250);
 porta = 0;
 portb = 0;
 delay_ms(250);
 porta = 1;
 portb = 1;
 delay_ms(250);
 porta = 0;
 portb = 0;
 delay_ms(250);
 porta = 1;
 portb = 1;
 delay_ms(250);
 porta = 0;
 portb = 0;
 delay_ms(250);
 porta = 1;
 portb = 1;
 delay_ms(250);
 porta = 0;
 portb = 0;
 delay_ms(250);
 porta = 1;
 portb = 1;
 delay_ms(250);
 porta = 0;
 portb = 0;
 delay_ms(250);
 delay_ms(2000);

 portb=0b11111111;
 delay_ms(250);
 portb=0b00000000;

 }
}
