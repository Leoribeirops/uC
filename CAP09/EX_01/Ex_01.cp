#line 1 "E:/microC/CAP09/EX_01/Ex_01.c"
void main() {
 trisc = 0;
 pwm1_init(6000);



 pwm1_set_duty(128);

 pwm1_start();
}
