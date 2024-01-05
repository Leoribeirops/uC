const unsigned int d1=500;

void main() // in�cio do programa principal
{

    trisb = 0; // configure os pinos da porta B como sa�da digital
    trisd= 0;
    adcon0=0;
    adcon1=15;
    

    while (1) // in�cio de um loop infinito
    {
        portd=0;
        portb=128; //255
        delay_ms(d1);
        portb= portb >> 1;
        delay_ms(d1);
        portb= portb >> 1;
        delay_ms(d1);
        portb= portb >> 1;
        delay_ms(d1);
        portb= portb >> 1;
        delay_ms(d1);
        portb= portb >> 1;
        delay_ms(d1);
        portb= portb >> 1;
        delay_ms(d1);
    }
}