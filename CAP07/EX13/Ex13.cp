#line 1 "E:/microC/CAP07/EX13/Ex13.c"

const unsigned char segmentPatterns[10] = {
 0b00111111,
 0b00000110,
 0b01011011,

 0b01001111,
 0b01110110,
 0b00101101,
 0b01111101,
 0b00000111,
 0b01111111,
 0b01100111
};

void displayDigit(unsigned char digit, unsigned char displaySelect) {
 portd = segmentPatterns[digit];
 porta = displaySelect;
 delay_ms(1);
 porta = 0;
}

void main() {
 unsigned int number = 123;
 unsigned char hundreds, tens, units;

 trisd = 0;
 trisa = 0;
 adcon0 = 0;
 adcon1 = 15;

 while (1) {

 hundreds = number / 100;
 tens = (number / 10) % 10;
 units = number % 10;


 displayDigit(hundreds, 0b00001000);
 displayDigit(tens, 0b00010000);
 displayDigit(units, 0b00100000);
 }
}
