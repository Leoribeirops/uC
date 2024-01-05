#line 1 "E:/microC/CAP09/EX_03/Ex_03.c"



void main() {
 trisc = 0;
 trisb = 0b11;
 uart1_init(9600);

 pwm1_init(2500);

 while(1) {
 if(portb.f0 == 0) {
 pwm1_set_duty(191);
 pwm1_start();
 uart1_write_text("MOTOR LIGADO\n");
 }

 if(portb.f1 == 0) {
 pwm1_set_duty(0);
 pwm1_start();
 uart1_write_text("MOTOR DESLIGADO\n");
 }
 }
}
