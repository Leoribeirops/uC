#line 1 "E:/microC/CAP07/EX6_2/Ex6_2.c"
const unsigned int tempo2Hz = 500;
const unsigned int tempo1Hz = 1000;

void main() {

 trisb = 1;
 trisd = 0;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {
 if (portb.f0 == 0) {
 portd.f0 = 1;
 portd.f2 = 1;
 delay_ms(tempo2Hz);
 portd.f0 = 0;
 portd.f2 = 0;
 delay_ms(tempo2Hz);
 } else {
 portd.f1 = 1;
 portd.f3 = 0;
 delay_ms(tempo1Hz);
 portd.f1 = 0;
 portd.f3 = 1;
 delay_ms(tempo1Hz);
 }
 }
}
