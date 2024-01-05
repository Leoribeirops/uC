#line 1 "E:/microC/CAP07/EX32/Ex32.c"
void main() {
 trisd.rd0 = 0;
 trisb.rb0 = 1;
 trisb.rb1 = 1;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {
 while ((portb.rb0 == 0) || (portb.rb1 == 0)) {
 portd.rd0 = 1;
 }
 portd.rd0 = 0;
 }
}
