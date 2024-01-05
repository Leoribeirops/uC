#line 1 "E:/microC/CAP07/EX16/EX16.c"
unsigned char i;

void main() {
 trisd = 0;
 portd =0;

 while (1) {

 for (i = 0; i < 12; i++) {
 portd.rd0 = 1;
 delay_ms(1000);
 portd.rd0 = 0;
 delay_ms(1000);
 }


 delay_ms(3000);


 }
}
