void main() {
    trisd.rd0 = 0;  // Configura RD0 como saída
    trisb.rb0 = 1;  // Configura RB0 como entrada
    adcon0 = 0;     // Configura ADCON0 para modo digital
    adcon1 = 15;    // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado

        while (portb.rb0 == 1) {  // Enquanto a chave não estiver pressionada
            portd.rd0 = 1;  // Liga o LED 0
            delay_ms(250);  // Aguarda por 250 ms (2 Hz = 0.5 s período, 0.25 s meio período)
            portd.rd0 = 0;  // Desliga o LED 0
            delay_ms(250);  // Aguarda por 250 ms
        }

        // Quando a chave for pressionada
        portd.rd0 = 1;  // Liga o LED 0
        delay_ms(125);  // Aguarda por 125 ms (4 Hz = 0.25 s período, 0.125 s meio período)
        portd.rd0 = 0;  // Desliga o LED 0
        delay_ms(125);  // Aguarda por 125 ms
    }
}
