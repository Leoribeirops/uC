#line 1 "E:/microC/CAP05/Ex_12/Ex_12.c"
const unsigned int d1=500;

void main()
{

 trisb = 0;
 trisd= 0;
 adcon0=0;
 adcon1=15;


 while (1)
 {
 portd=0;
 portb=128;
 delay_ms(d1);
 portb= portb >> 1;
 delay_ms(d1);
 portb= portb >> 1;
 delay_ms(d1);
 portb= portb >> 1;
 delay_ms(d1);
 portb= portb >> 1;
 delay_ms(d1);
 portb= portb >> 1;
 delay_ms(d1);
 portb= portb >> 1;
 delay_ms(d1);
 }
}
