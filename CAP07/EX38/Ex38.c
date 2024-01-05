unsigned char ledPosition;
void main() {
    TRISD = 0;  // Configura PORTD como sa�da
    ADCON0 = 0;  // Configura ADCON0 para modo digital
    ADCON1 = 15;  // Configura ADCON1 para modo digital

    ledPosition = 1;  // Inicializa a posi��o do LED

    while (1) {  // Loop infinito
        unsigned char count = 0;  // Inicializa o contador
        while (count < 8) {  // Loop para percorrer todos os LEDs
            PORTD = ledPosition << count;  // Desloca a posi��o do LED
            Delay_ms(500);  // Espera 0,5 segundos
            PORTD = 0;  // Desliga o LED atual
            count++;  // Incrementa o contador
        }
    }
}
