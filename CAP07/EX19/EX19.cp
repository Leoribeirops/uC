#line 1 "E:/microC/CAP07/EX19/EX19.c"
unsigned char i;
void main() {
 trisd = 0;

 while (1) {

 for (i= 0; i < 20; i++) {
 portd = 0b00001010;
 delay_ms(500);
 portd = 0b00000000;
 delay_ms(500);
 }


 delay_ms(3000);


 for (i = 0; i < 30; i++) {
 if (i % 2 == 0) {
 portd = 0b00000001;
 } else {
 portd = 0b00000100;
 }
 delay_ms(250);
 portd = 0b00000000;
 delay_ms(250);
 }


 delay_ms(5000);


 }
}
