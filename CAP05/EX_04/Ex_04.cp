#line 1 "E:/microC/CAP05/EX_04/Ex_04.c"
const unsigned int d1=1000;
void main() {

 TRISB=0;

 while(1){
 portb=745/100;
 delay_ms(d1);
 portb=45/10;
 delay_ms(d1);
 portb=45%10;
 delay_ms(d1);
 }

}
