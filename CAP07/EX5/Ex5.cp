#line 1 "E:/microC/CAP07/EX5/Ex5.c"
const unsigned d1 = 1000;
int i;

void main() {

 trisb = 1;
 trisd = 0;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {
 if (portb.f0 == 0) {
 for (i = 0; i < 4; i++) {
 portd = (1 << i);
 delay_ms(d1);
 portd = 0;
 }
 } else {
 for (i = 3; i >= 0; i--) {
 portd = (1 << i);
 delay_ms(d1);
 portd = 0;
 }
 }
 }
}
