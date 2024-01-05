#line 1 "E:/microC/CAP07/EX8/Ex8.c"
void main() {

 trisb = 0b00000011;
 trisd = 0;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {

 if (portb.f0 == 0 && portb.f1 == 0) {
 portd.f0 = 1;
 } else {
 portd.f0 = 0;
 }

 }
}
