#line 1 "E:/microC/CAP07/EX37/Ex37.c"
unsigned char count;
void main() {
 TRISD = 0;
 TRISA.RA5 = 0;
 ADCON0 = 0;
 ADCON1 = 15;

 count = 2;

 while (1) {
 while (count <= 8) {
 switch(count) {
 case 2: PORTD = 0b01011011; break;
 case 4: PORTD = 0b01100110; break;
 case 6: PORTD = 0b01111101; break;
 case 8: PORTD = 0b01111111; break;
 }
 PORTA.RA5 = 1;
 Delay_ms(1000);
 PORTA.RA5 = 0;
 count += 2;
 }
 count = 2;
 }
}
