#line 1 "G:/Meu Drive/micropicC/Cap_05_06/Exemplo_1/MyProject.c"
const unsigned int delay = 500;





void main()
{

 TRISB = 0;
 LATB = 0;





 while (1)
 {

 LATB = 0;
 delay_ms(delay);
 LATB = 1;
 delay_ms(delay);
 LATB = 2;
 delay_ms(delay);



 }
}
