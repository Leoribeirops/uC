#line 1 "E:/microC/CAP09/EX_09/Ex_09.c"

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

 lcd_init();

 lcd_out(1, 3, "R");
 delay_ms(2000);

 lcd_cmd(_lcd_clear);

 lcd_chr(1, 3, 82);
 delay_ms(2000);

 lcd_cmd(_lcd_clear);
}
