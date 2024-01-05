#line 1 "G:/Meu Drive/micropicC/Cap_05_06/Exemplo_2/Exemplo_2.c"
const unsigned int delay = 500;
sbit LED at RB0_bit;




void main()
{

 TRISB = 0;
 PORTB = 0;





 while (1)
 {

 LED = 0;
 delay_ms(delay);
 LED = 1;
 delay_ms(delay);



 }
}
