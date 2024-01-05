#line 1 "E:/microC/CAP09/EX_05/Ex_05.c"
void main() {
 int dutyCycle = 153;

 trisc = 0;
 trisb = 0b11;
 pwm1_init(500);
 pwm1_set_duty(dutyCycle);
 pwm1_start();

 while(1) {
 if (portb.f0 == 0) {
 if (dutyCycle < 255) {
 dutyCycle++;
 pwm1_set_duty(dutyCycle);
 }
 delay_ms(50);
 }

 if (portb.f1 == 0) {
 if (dutyCycle > 51) {
 dutyCycle--;
 pwm1_set_duty(dutyCycle);
 }
 delay_ms(50);
 }
 }
}
