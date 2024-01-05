#line 1 "E:/microC/CAP07/EX21/EX21.c"
unsigned char i;

unsigned char segmentValues[] = {
 0b00111001,
 0b01011110,
 0b01111001,
 0b01110001,
 0b00111111,
 0b00000110,
 0b01011011,
 0b01001111,
 0b01100110,
 0b01101101
};

void main() {
 trisd = 0;
 trisa.ra5 = 0;

 while (1) {
 for (i = 0; i < 10; i++) {
 if (i < 4 || i > 8) {
 portd = segmentValues[i];
 porta.ra5 = 1;
 delay_ms(1000);
 porta.ra5 = 1;
 }
 }
 }
}
