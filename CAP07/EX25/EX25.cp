#line 1 "E:/microC/CAP07/EX25/EX25.c"
unsigned char i;
void main() {
 trisd = 0x00;

 while (1) {
 for (i= 0; i < 8; i++) {
 portd = (0x80 >> i);
 delay_ms(500);
 }
 }
}
