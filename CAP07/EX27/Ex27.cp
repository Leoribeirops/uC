#line 1 "E:/microC/CAP07/EX27/Ex27.c"
unsigned int temporizador = 0;

void main() {
 trisd.rd0 = 0;
 trisb = 0xFF;
 adcon0=0;
 adcon1=15;

 while (1) {

 if (portb.rb0 == 0) {
 temporizador = 10000;
 }

 if (portb.rb1 == 0 && temporizador > 0) {
 temporizador = 0;
 }

 if (temporizador > 0) {
 portd.rd0 = 1;
 delay_ms(100);
 temporizador -= 100;
 } else {
 portd.rd0 = 0;
 }
 }
}
