void main() {
trisa=0;
trisb=0;
while(1)
{                         //número 754
        porta.f4 = 0;            //liga o display 4
        portb=0b0100;            //número para aparecer no display em bcd
        delay_ms(10);
        porta.f4=1;               //desliga o display 4
        delay_ms (10);

        porta.f3 = 0;
        portb=0b0101;
        delay_ms(10);
        porta.f3=1;
        delay_ms (10);

        porta.f2 = 0;
        portb=0b0111;
        delay_ms(10);
        porta.f2=1;
        delay_ms (10);
        }

}