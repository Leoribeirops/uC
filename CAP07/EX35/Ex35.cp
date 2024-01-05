#line 1 "E:/microC/CAP07/EX35/Ex35.c"
void main() {
 trisd.rd0 = 0;
 trisd.rd1 = 0;
 trisb.rb0 = 1;
 trisb.rb1 = 1;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {
 if (portb.rb0 == 0) {
 while (portb.rb0 == 0);
 portd.rd0 = ~portd.rd0;
 }

 if (portb.rb1 == 0) {
 portd.rd1 = ~portd.rd1;
 while (portb.rb1 == 0);
 }
 }
}
