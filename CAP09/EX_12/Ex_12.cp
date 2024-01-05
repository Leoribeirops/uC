#line 1 "C:/Users/Public/Documents/Mikroelektronika/mikroC PRO for PIC/Ex_12.c"

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

int count = 0;

void UpdateLCD() {
 char txt[17];

 txt[0] = 'P';
 txt[1] = 'e';
 txt[2] = 's';
 txt[3] = 's';
 txt[4] = 'o';
 txt[5] = 'a';
 txt[6] = 's';
 txt[7] = ':';
 txt[8] = ' ';
 txt[9] = (count / 10) % 10 + '0';
 txt[10] = count % 10 + '0';
 txt[11] = '\0';

 lcd_out(1, 1, txt);
}

void main() {
 trisd = 0;
 trise = 0;
 trisb = 3;

 lcd_init();
 UpdateLCD();

 while(1) {
 if (portb.f0 == 1) {
 while(portb.f0 == 1);
 if (count < 99) count++;
 UpdateLCD();
 }
 if (portb.f1 == 1) {
 while(portb.f1 == 1);
 if (count > 0) count--;
 UpdateLCD();
 }
 }
}
