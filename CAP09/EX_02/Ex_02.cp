#line 1 "E:/microC/CAP09/EX_02/Ex_02.c"
void main() {
 int dutyCycle = 255;

 trisc = 0;
 pwm1_init(2000);
 pwm1_start();

 while(dutyCycle >= 0) {
 pwm1_set_duty(dutyCycle);



 dutyCycle -= 1;
 delay_ms(100);
 }
}
