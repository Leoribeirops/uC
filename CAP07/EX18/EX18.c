unsigned char i;

void main() {
    trisd = 0;  // Configura todos os pinos da PORTD como saída

    while (1) {  // Loop infinito
        // a) Pisca 20 vezes os leds 0 e 3 simultaneamente a uma frequência de 1 Hz
        for (i = 0; i < 20; i++) {
            portd = 0b00001001;  // Liga os LEDs 0 e 3
            delay_ms(500);        // Espera 0,5 segundo
            portd = 0b00000000;   // Desliga os LEDs 0 e 3
            delay_ms(500);        // Espera 0,5 segundo
        }

        // b) Espera 2 segundos
        delay_ms(2000);

        // c) Pisca 30 vezes os leds 1 e 2 simultaneamente a uma frequência de 2 Hz
        for (i = 0; i < 30; i++) {
            portd = 0b00000110;  // Liga os LEDs 1 e 2
            delay_ms(250);        // Espera 0,25 segundo
            portd = 0b00000000;   // Desliga os LEDs 1 e 2
            delay_ms(250);        // Espera 0,25 segundo
        }

        // d) Espera 5 segundos
        delay_ms(5000);

        // e) Retorna para o item “a” (automático devido ao loop while(1))
    }
}
