void main() {
    trisd = 0;  // Configura todos os pinos da PORTD como sa�da
    trisb.rb0 = 1;  // Configura RB0 como entrada
    adcon0 = 0;     // Configura ADCON0 para modo digital
    adcon1 = 15;    // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter a sequ�ncia rodando enquanto o circuito estiver energizado

        if (portb.rb0 == 0) {  // Se a chave for pressionada
            // Pisca alternadamente os LEDs 0 e 1 a uma frequ�ncia de 0,5 Hz
            portd.rd0 = 1;  // Liga o LED 0
            portd.rd1 = 0;  // Desliga o LED 1
            delay_ms(1000);  // Aguarda 1 segundo (0.5 Hz = 2 segundos per�odo, 1 segundo meio per�odo)
            portd.rd0 = 0;  // Desliga o LED 0
            portd.rd1 = 1;  // Liga o LED 1
            delay_ms(1000);  // Aguarda 1 segundo
        } else {  // Se a chave for liberada
            portd.rd2 = 1;  // Liga o LED 2
            delay_ms(1000);  // Aguarda 1 segundo
            portd.rd2 = 0;  // Desliga o LED 2

            portd.rd3 = 1;  // Liga o LED 3
            delay_ms(1000);  // Aguarda 1 segundo
            portd.rd3 = 0;  // Desliga o LED 3
        }
    }
}
