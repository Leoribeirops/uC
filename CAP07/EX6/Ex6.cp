#line 1 "E:/microC/CAP07/EX6/Ex6.c"
const unsigned tempo2Hz = 250;
const unsigned tempo1Hz = 500;

void main() {

 trisb = 1;
 trisd = 0;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {
 if (portb.f0 == 0) {

 portd = 0b00000101;
 delay_ms(tempo2Hz);
 portd = 0;
 delay_ms(tempo2Hz);
 } else {

 portd = 0b00001000;
 delay_ms(tempo1Hz);
 portd = 0b00000010;
 delay_ms(tempo1Hz);
 }
 }
}
