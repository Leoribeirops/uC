#line 1 "E:/microC/CAP07/EX30/Ex30.c"
void main() {
 trisd.rd0 = 0;
 trisb.rb0 = 1;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {

 while (portb.rb0 == 0) {
 portd.rd0 = ~portd.rd0;
 delay_ms(1000);
 }
 }
}
