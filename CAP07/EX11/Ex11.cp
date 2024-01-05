#line 1 "E:/microC/CAP07/EX11/Ex11.c"
void main() {

 trisb = 0b00001111;
 trisd = 0;
 adcon0 = 0;
 adcon1 = 15;

 portd = 0;

 while (1) {

 if (portb.f0 == 0) {
 portd = 0b0001;
 }
 else {
 portd = 0b0000;
 }
 if (portb.f1 == 0) {
 portd = 0b0010;
 }
 else {
 portd = 0b0000;
 }
 if (portb.f2 == 0) {
 portd = 0b0011;
 }
 else {
 portd = 0b0000;
 }
 if (portb.f3 == 0) {
 portd = 0b0100;
 }
 else {
 portd = 0b0000;
 }


 }
}
