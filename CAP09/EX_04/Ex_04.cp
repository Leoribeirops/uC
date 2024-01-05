#line 1 "E:/microC/CAP09/EX_04/Ex_04.c"
void main() {
 int dutyCycle;

 trisc = 0;
 trisb = 0b11;
 pwm1_init(500);

 while(1) {
 if (portb.f0 == 0) {
 for (dutyCycle = 51; dutyCycle <= 255; dutyCycle++) {
 pwm1_set_duty(dutyCycle);
 delay_ms(50);
 }
 }

 if (portb.f1 == 0) {
 for (dutyCycle = 255; dutyCycle >= 0; dutyCycle -= 2) {
 pwm1_set_duty(dutyCycle);
 delay_ms(20);
 }
 }
 }
}
