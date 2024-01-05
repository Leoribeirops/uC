#line 1 "E:/microC/CAP07/EX38/Ex38.c"
unsigned char ledPosition;
void main() {
 TRISD = 0;
 ADCON0 = 0;
 ADCON1 = 15;

 ledPosition = 1;

 while (1) {
 unsigned char count = 0;
 while (count < 8) {
 PORTD = ledPosition << count;
 Delay_ms(500);
 PORTD = 0;
 count++;
 }
 }
}
