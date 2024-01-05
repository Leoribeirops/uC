void main() {

    trisb = 0b00000011;  // Configura RB0 e RB1 como entrada e o restante como saída
    trisd = 0;  // Configura PORTD como saída
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter o programa rodando

        if (portb.f0 == 0 && portb.f1 == 0) {  // Se RB0 e RB1 estiverem fechadas
            portd.f0 = 1;  // Liga o LED RD0
        } else {
            portd.f0 = 0;  // Desliga o LED RD0
        }

    }
}
