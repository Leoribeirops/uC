#line 1 "E:/microC/CAP07/EX39/Ex39.c"
unsigned char count = 0;
unsigned char lastState = 1;

void main() {
 TRISD = 0;
 PORTD = 0;
 ADCON0 = 0;
 ADCON1 = 15;

 while (1) {
 if (PORTD.F0 == 0 && lastState == 1) {
 lastState = 0;
 } else if (PORTD.F0 == 1 && lastState == 0) {
 lastState = 1;
 PORTD = 0;
 count = (count + 1) % 4;
 PORTD = 1 << count;
 }
 }
}
