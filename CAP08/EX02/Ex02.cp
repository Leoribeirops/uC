#line 1 "E:/microC/CAP08/EX02/Ex02.c"
unsigned char i;

void pisca_led0(int num_piscadas) {
 for (i = 0; i < num_piscadas; i++) {
 portd = (1 << 0);
 delay_ms(1000);
 portd = 0;
 delay_ms(1000);
 }
}

void pisca_led1(int num_piscadas) {
 for (i = 0; i < num_piscadas; i++) {
 portd = (1 << 1);
 delay_ms(1000);
 portd = 0;
 delay_ms(1000);
 }
}

void pisca_led2_e_led3(int num_piscadas) {
 for (i = 0; i < num_piscadas; i++) {
 portd = (1 << 2) | (1 << 3);
 delay_ms(1000);
 portd = 0;
 delay_ms(1000);
 }
}

void main() {
 trisd = 0;
 portd = 0;

 while (1) {
 pisca_led0(20);
 delay_ms(3000);
 pisca_led1(10);
 delay_ms(5000);
 pisca_led2_e_led3(15);
 delay_ms(6000);
 }
}
