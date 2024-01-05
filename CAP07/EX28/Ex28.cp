#line 1 "E:/microC/CAP07/EX28/Ex28.c"
void main() {
 trisd.rd0 = 0;
 trisb.rb0 = 1;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {

 while (portb.rb0 == 1) {
 portd.rd0 = 1;
 delay_ms(250);
 portd.rd0 = 0;
 delay_ms(250);
 }


 portd.rd0 = 1;
 delay_ms(125);
 portd.rd0 = 0;
 delay_ms(125);
 }
}
