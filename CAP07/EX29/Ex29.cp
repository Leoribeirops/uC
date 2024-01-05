#line 1 "E:/microC/CAP07/EX29/Ex29.c"
void main() {
 trisd = 0x00;
 trisb.rb0 = 1;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {

 while (portb.rb0 == 0) {
 portd.rd0 = 1;
 portd.rd1 = 0;
 delay_ms(1000);
 portd.rd0 = 0;
 portd.rd1 = 1;
 delay_ms(1000);
 }


 portd.rd2 = 1;
 delay_ms(1000);
 portd.rd2 = 0;

 portd.rd3 = 1;
 delay_ms(1000);
 portd.rd3 = 0;
 }
}
