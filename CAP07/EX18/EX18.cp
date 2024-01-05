#line 1 "E:/microC/CAP07/EX18/EX18.c"
unsigned char i;

void main() {
 trisd = 0;

 while (1) {

 for (i = 0; i < 20; i++) {
 portd = 0b00001001;
 delay_ms(500);
 portd = 0b00000000;
 delay_ms(500);
 }


 delay_ms(2000);


 for (i = 0; i < 30; i++) {
 portd = 0b00000110;
 delay_ms(250);
 portd = 0b00000000;
 delay_ms(250);
 }


 delay_ms(5000);


 }
}
