#line 1 "E:/microC/CAP09/EX_15/Ex_15.c"

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

void UpdateDisplayAndSerial(char *floor) {
 lcd_out(1, 5, floor);
 uart1_write_text(floor);
 uart1_write(10);
 uart1_write(13);
}

void main() {
 trisb = 0xFF;

 lcd_init();
 uart1_init(9600);

 while(1) {
 if (portb.f0 == 1) {
 UpdateDisplayAndSerial("Terreo");
 } else if (portb.f1 == 1) {
 UpdateDisplayAndSerial("1o Andar");
 } else if (portb.f2 == 1) {
 UpdateDisplayAndSerial("2o Andar");
 } else if (portb.f3 == 1) {
 UpdateDisplayAndSerial("3o Andar");
 }
 delay_ms(200);
 }
}
