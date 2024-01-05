#line 1 "E:/microC/CAP07/EX34/Ex34.c"
void main() {
 trisd.rd0 = 0;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {
 unsigned char count = 0;
 while (count < 8) {
 portd.rd0 = ~portd.rd0;
 delay_ms(125);
 if (portd.rd0 == 0) {
 count++;
 }
 }
 portd.rd0 = 0;
 delay_ms(5000);

 }
}
