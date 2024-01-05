unsigned char count = 0;
unsigned char lastState = 1;  // Estado inicial da chave (assumindo que � normalmente alta)

void main() {
    TRISD = 0;  // Configura PORTD como sa�da
    PORTD = 0;  // Inicialmente, todos os LEDs est�o desligados
    ADCON0 = 0;  // Configura ADCON0 para modo digital
    ADCON1 = 15;  // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito
        if (PORTD.F0 == 0 && lastState == 1) {  // Se a chave S0 for pressionada e estava liberada anteriormente
            lastState = 0;  // Atualiza o �ltimo estado da chave
        } else if (PORTD.F0 == 1 && lastState == 0) {  // Se a chave S0 for liberada e estava pressionada anteriormente
            lastState = 1;  // Atualiza o �ltimo estado da chave
            PORTD = 0;  // Desliga todos os LEDs
            count = (count + 1) % 4;  // Incrementa a contagem e reinicia se alcan�ar 4
            PORTD = 1 << count;  // Liga o pr�ximo LED
        }
    }
}
