#line 1 "E:/microC/CAP09/EX_13/Ex_13.c"

sbit lcd_rs at re2_bit;
sbit lcd_en at re1_bit;
sbit lcd_d7 at rd7_bit;
sbit lcd_d6 at rd6_bit;
sbit lcd_d5 at rd5_bit;
sbit lcd_d4 at rd4_bit;
sbit lcd_rs_direction at trise2_bit;
sbit lcd_en_direction at trise1_bit;
sbit lcd_d7_direction at trisd7_bit;
sbit lcd_d6_direction at trisd6_bit;
sbit lcd_d5_direction at trisd5_bit;
sbit lcd_d4_direction at trisd4_bit;

void UpdateLCD(int dutyCycle) {
 char txt[17];
 int percent = (dutyCycle * 100) / 255;

 txt[0] = 'V';
 txt[1] = 'a';
 txt[2] = 'l';
 txt[3] = 'o';
 txt[4] = 'r';
 txt[5] = ':';
 txt[6] = ' ';
 txt[7] = percent / 10 + '0';
 txt[8] = percent % 10 + '0';
 txt[9] = '%';
 txt[10] = ' ';
 txt[11] = ' ';
 txt[12] = ' ';
 txt[13] = '\0';

 lcd_out(2, 1, txt);
}

void main() {
 int dutyCycle;

 trisc = 0;
 trisb = 0b11;
 pwm1_init(500);
 lcd_init();
 lcd_out(1, 1, "Razao Ciclica");

 while(1) {
 if (portb.f0 == 0) {
 for (dutyCycle = 51; dutyCycle <= 255; dutyCycle++) {
 pwm1_set_duty(dutyCycle);
 UpdateLCD(dutyCycle);
 delay_ms(100);
 }
 }

 if (portb.f1 == 0) {
 for (dutyCycle = 255; dutyCycle >= 0; dutyCycle -= 2) {
 pwm1_set_duty(dutyCycle);
 UpdateLCD(dutyCycle);
 delay_ms(100);
 }
 }
 }
}
