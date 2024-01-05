#line 1 "E:/microC/CAP07/EX7/Ex7.c"
const unsigned int tempo02Hz = 2500;
const unsigned int tempo1Hz = 1000;
const unsigned int tempo05Hz = 2000;
const unsigned int espera5s = 5000;
int i;

void main() {

 trisb = 1;
 trisd = 0;
 adcon0 = 0;
 adcon1 = 15;


 while (1) {
 if (portb.f0 == 1) {
 for (i = 0; i < 2; i++) {
 portd = 0x0F;
 delay_ms(tempo02Hz);
 portd = 0;
 delay_ms(tempo02Hz);
 }
 delay_ms(espera5s);
 } else {
 for (i = 0; i < 2; i++) {
 portd.f0 = 1;
 portd.f3 = 1;
 delay_ms(tempo1Hz);
 portd.f0 = 0;
 portd.f3 = 0;
 delay_ms(tempo1Hz);
 }
 for (i = 0; i < 3; i++) {
 portd.f1 = 1;
 portd.f2 = 0;
 delay_ms(tempo05Hz);
 portd.f1 = 0;
 portd.f2 = 1;
 delay_ms(tempo05Hz);
 }
 }
 }
}
