#line 1 "E:/microC/CAP07/EX15/EX15.c"
unsigned int peopleCount = 0;
unsigned char lastStateF0 = 1;
unsigned char lastStateF1 = 1;
unsigned char lastStateF2 = 1;


unsigned char getSegmentValue(unsigned char digit) {
 unsigned char segmentValues[] = {
 0b00111111,
 0b00000110,
 0b01011011,
 0b01001111,
 0b01100110,
 0b01101101,
 0b01111101,
 0b00000111,
 0b01111111,
 0b01101111
 };
 return segmentValues[digit];
}

void main() {
 trisd = 0;
 trisa = 0;
 adcon0 = 0;
 adcon1 = 15;
 portb.f0 = 1;
 portb.f1 = 1;
 portb.f2 = 1;
 peopleCount = 0;

 while (1) {
 unsigned char hundreds = peopleCount / 100;
 unsigned char tens = (peopleCount % 100) / 10;
 unsigned char units = peopleCount % 10;


 porta = 0b00001000;
 portd = getSegmentValue(hundreds);
 delay_ms(10);


 porta = 0b00010000;
 portd = getSegmentValue(tens);
 delay_ms(10);


 porta = 0b00100000;
 portd = getSegmentValue(units);
 delay_ms(10);

 if (portb.f0 == 0 && lastStateF0 == 1) {
 if (peopleCount < 1000) {
 peopleCount++;
 }

 delay_ms(1000);
 }

 if (portb.f1 == 0 && lastStateF1 == 1) {
 if (peopleCount > 0) {
 peopleCount--;
 }

 delay_ms(1000);
 }

 if (portb.f2 == 0 && lastStateF2 == 1) {
 peopleCount = 0;
 }
 }
}
