void main()
{
    trisa = 0; // configurar como saida
    trisb = 0; // configurar como saida
    while (1)  // laco infinito
    {
        // pisca 4x com F=1hz
        portb = 1;
        delay_ms(500);
        portb = 0;
        delay_ms(500);
        portb = 1;
        delay_ms(500);
        portb = 0;
        delay_ms(500);
        portb = 1;
        delay_ms(500);
        portb = 0;
        delay_ms(500);
        portb = 1;
        delay_ms(500);
        portb = 0;
        delay_ms(5500);
        porta=1;
        delay_ms(250);
        porta=0;
//////////////////////////////////////////////
        portb = 1;
        delay_ms(250);
        portb = 0;
        delay_ms(250);

    }
}