void main() {
    trisd.rd0 = 0;  // Configura RD0 como sa�da
    trisb.rb0 = 1;  // Configura RB0 como entrada
    adcon0 = 0;     // Configura ADCON0 para modo digital
    adcon1 = 15;    // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter a sequ�ncia rodando enquanto o circuito estiver energizado

        while (portb.rb0 == 1) {  // Enquanto a chave n�o estiver pressionada
            portd.rd0 = 1;  // Liga o LED 0
            delay_ms(250);  // Aguarda por 250 ms (2 Hz = 0.5 s per�odo, 0.25 s meio per�odo)
            portd.rd0 = 0;  // Desliga o LED 0
            delay_ms(250);  // Aguarda por 250 ms
        }

        // Quando a chave for pressionada
        portd.rd0 = 1;  // Liga o LED 0
        delay_ms(125);  // Aguarda por 125 ms (4 Hz = 0.25 s per�odo, 0.125 s meio per�odo)
        portd.rd0 = 0;  // Desliga o LED 0
        delay_ms(125);  // Aguarda por 125 ms
    }
}
