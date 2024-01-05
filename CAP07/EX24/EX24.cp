#line 1 "E:/microC/CAP07/EX24/EX24.c"
unsigned char i;

void main() {
 trisd = 0x00;

 while (1) {
 for (i = 0; i < 8; i++) {
 portd = (1 << i);
 delay_ms(500);
 }
 }
}
