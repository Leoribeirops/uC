#line 1 "E:/microC/CAP05/Ex_14/Ex_14.c"
const unsigned int d1=500;

int i;

void main()
{

 TRISB = 0;
 TRISD = 0;



 i = 1596;

 while(1)
 {

 PORTD = (i >> 8) & 255;
 PORTB = i & 255;
 }
}
