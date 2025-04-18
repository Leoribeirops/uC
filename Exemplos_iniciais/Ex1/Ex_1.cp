#line 1 "E:/Users/Leo/Documents/micropicC/Ex1/Ex_1.c"

void main () {

 trisb = 0;
 while(1)
 {
 portb= 1;
 delay_ms(1000);
 portb=0;
 delay_ms(1000);
 }

}
