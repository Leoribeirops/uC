#line 1 "E:/microC/CAP07/EX10/Ex10.c"
void main() {

 trisb = 0b00001111;
 trisd = 0;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {


 if (portb.f0 == 0 && portd.f1 == 1) {
 portd.f0 = 1;
 }


 if (portb.f2 == 0) {
 portd.f1 = 1;
 }


 if (portb.f1 == 0) {
 portd.f0 = 0;
 }


 if (portb.f3 == 0) {
 portd.f0 = 0;
 portd.f1 = 0;
 }




 }
}
