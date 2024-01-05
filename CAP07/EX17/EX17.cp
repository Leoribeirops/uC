#line 1 "E:/microC/CAP07/EX17/EX17.c"
unsigned char i;
const unsigned Bip_curto=100;
const unsigned Bip_longo=200;

void main() {
 trisb.f0 = 0;

 while (1) {

 for (i = 0; i < 3; i++) {
 portb.f0 = 1;
 delay_ms(Bip_curto);
 portb.f0 = 0;
 delay_ms(Bip_curto);
 }

 delay_ms(400);


 for (i = 0; i < 3; i++) {
 portb.f0 = 1;
 delay_ms(Bip_longo);
 portb.f0 = 0;
 delay_ms(Bip_longo);
 }

 delay_ms(400);


 for (i = 0; i < 3; i++) {
 portb.f0 = 1;
 delay_ms(Bip_curto);
 portb.f0 = 0;
 delay_ms(Bip_curto);
 }

 delay_ms(1500);
 }
}
