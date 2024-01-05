void pisca_led (int led1, int led2, int num_piscadas) // função para piscar LEDs
{
    int i;
    for (i = 0; i < num_piscadas; i++) // para i variando de 0 a num_piscadas, faça:
    {
        portd = (1 << led1) | (1 << led2); // liga os LEDS especificados,
        delay_ms(500); // espera 500 ms (1 Hz = 1 piscada por segundo, então uma piscada leva 1000 ms. 500 ms ligado e 500 ms desligado),
        portd = 0; // desliga
        delay_ms(500); // espera 500 ms.
    }
}

void main() // início da função principal
{
    trisd = 0; // configura os pinos da porta D como saída,
    portd = 0; // zera os pinos da porta D,
    while(1) // início de um loop infinito
    {
        pisca_led(0, 3, 20); // pisca os LEDs 0 e 3, 20 vezes,
        delay_ms(5000); // espera 5 segundos,
        pisca_led(1, 2, 30); // pisca os LEDs 1 e 2, 30 vezes,
        delay_ms(5000); // espera 5 segundos.
    }
}
