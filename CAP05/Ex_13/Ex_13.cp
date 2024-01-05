#line 1 "E:/microC/CAP05/Ex_13/Ex_13.c"
const unsigned int d1=500;

void main()
{

 trisb = 0;
 trisd= 0;
 adcon0=0;
 adcon1=15;


 while (1)
 {
 portb=1;
 delay_ms(d1);
 portb= portb << 1;
 delay_ms(d1);
 portb= portb << 1;
 delay_ms(d1);
 portb= portb << 1;
 delay_ms(d1);
 portb= portb << 1;
 delay_ms(d1);
 portb= portb << 1;
 delay_ms(d1);
 portb= portb << 1;
 delay_ms(d1);
 portb= portb << 1;
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
 portb= portb >> 1;
 portd=255;
 delay_ms(d1);
 portd=0;

 }
}
