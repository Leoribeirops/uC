#line 1 "E:/microC/CAP09/EX_08/Ex_08.c"

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

void main() {
 trisd = 0;
 trise = 0;
 trisb = 1;

 lcd_init();

 while(1) {
 if (portb.f0 == 1) {
 lcd_out(1, 1, "TEC_");
 delay_ms(1000);
 }
 }
}
