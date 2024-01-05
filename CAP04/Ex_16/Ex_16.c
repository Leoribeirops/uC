void main() {
trisb=0;
while (1)
{
      portb=0b00010100;
      delay_ms(500);
      portb=0b00010010;
      delay_ms(500);
      portb=0b01000001;
      delay_ms(500);
      portb=0b00100001;
      delay_ms(500);
      }

}