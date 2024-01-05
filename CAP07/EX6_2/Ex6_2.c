const unsigned int tempo2Hz = 500;  // Período de 500 ms para 2 Hz
const unsigned int tempo1Hz = 1000;  // Período de 1000 ms para 1 Hz

void main() {

    trisb = 1;  // Configura PORTB como entrada
    trisd = 0;  // Configura PORTD como saída
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital

    while (1) {
        if (portb.f0 == 0) {  // Se a chave estiver fechada
            portd.f0 = 1;  // Liga o LED 0
            portd.f2 = 1;  // Liga o LED 2
            delay_ms(tempo2Hz);  // Espera 500 ms
            portd.f0 = 0;  // Desliga o LED 0
            portd.f2 = 0;  // Desliga o LED 2
            delay_ms(tempo2Hz);  // Espera 500 ms
        } else {  // Se a chave estiver aberta
            portd.f1 = 1;  // Liga o LED 1
            portd.f3 = 0;  // Desliga o LED 3
            delay_ms(tempo1Hz);  // Espera 1000 ms
            portd.f1 = 0;  // Desliga o LED 1
            portd.f3 = 1;  // Liga o LED 3
            delay_ms(tempo1Hz);  // Espera 1000 ms
        }
    }
}
