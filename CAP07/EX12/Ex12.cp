#line 1 "E:/microC/CAP07/EX12/Ex12.c"
void main() {

 trisb = 0b00001111;
 trisd = 0;
 trisa.f5 = 0;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {


 porta.f5 = 1;

 if (portb.f0 == 0) {

 portd = 0b00111111;
 }
 else if (portb.f1 == 0) {
 portd = 0b00000110;
 }
 else if (portb.f2 == 0) {

 portd = 0b01011011;
 }
 else if (portb.f3 == 0) {
 portd = 0b01111001;
 }
 else {

 porta.f5 = 0;
 }
 }
}
