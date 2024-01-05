void main() {

    trisb = 0b00001111;  // Configura RB0, RB1, RB2 e RB3 como entrada
    trisd = 0;  // Configura PORTD como saída
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter o programa rodando

        // a-) Se a chave L1 em RB0 for pressionada e o led 2 em RD1 estiver ligado, liga o led 1 em RD0.
        if (portb.f0 == 0 && portd.f1 == 1) {
            portd.f0 = 1;
        }

        // b-) Se a chave L2 RB2 for pressionada liga o led 2 em RD1.
        if (portb.f2 == 0) {
            portd.f1 = 1;
        }

        // c-) Se a chave D1 em RB1 for pressionada, desliga o led 1 em RD0.
        if (portb.f1 == 0) {
            portd.f0 = 0;
        }

        // d-) Se a chave D2 em RB3 for pressionada, desliga os dois leds.
        if (portb.f3 == 0) {
            portd.f0 = 0;
            portd.f1 = 0;
        }

        // e-) Volta para o item a.
        // O loop while(1) garante que o programa retorne ao item a.

    }
}
