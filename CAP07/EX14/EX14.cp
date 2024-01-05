#line 1 "E:/microC/CAP07/EX14/EX14.c"
unsigned char peopleCount;
unsigned char lastStateF0 = 1;
unsigned char lastStateF1 = 1;
unsigned char lastStateF2 = 1;

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
 switch(peopleCount) {
 case 0: portd=0b00111111; break;
 case 1: portd=0b00000110; break;
 case 2: portd=0b01011011; break;
 case 3: portd=0b01001111; break;
 case 4: portd=0b01100110; break;
 case 5: portd=0b01101101; break;
 case 6: portd=0b01111101; break;
 case 7: portd=0b00000111; break;
 case 8: portd=0b01111111; break;
 case 9: portd=0b01101111; break;
 }

 if (portb.f0 == 0 && lastStateF0 == 1) {
 if (peopleCount < 9) {
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

 porta=0b00001000;
 }
}
