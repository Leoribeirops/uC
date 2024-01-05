const unsigned int tempo02Hz = 2500;  // Período de 2500 ms para 0.2 Hz
const unsigned int tempo1Hz = 1000;   // Período de 1000 ms para 1 Hz
const unsigned int tempo05Hz = 2000;  // Período de 2000 ms para 0.5 Hz
const unsigned int espera5s = 5000;   // Tempo de espera de 5 segundos
int i;  // Declarando a variável i fora dos loops

void main() {

    trisb = 1;  // Configura PORTB como entrada
    trisd = 0;  // Configura PORTD como saída
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital

    
    while (1) {
        if (portb.f0 == 1) {  // Se a chave estiver aberta
            for (i = 0; i < 2; i++) {  // Pisca 2 vezes
                portd = 0x0F;  // Liga todos os LEDs
                delay_ms(tempo02Hz);  // Espera 2500 ms
                portd = 0;  // Desliga todos os LEDs
                delay_ms(tempo02Hz);  // Espera 2500 ms
            }
            delay_ms(espera5s);  // Espera 5 segundos
        } else {  // Se a chave estiver fechada
            for (i = 0; i < 2; i++) {  // Pisca 2 vezes
                portd.f0 = 1;  // Liga o LED 0
                portd.f3 = 1;  // Liga o LED 3
                delay_ms(tempo1Hz);  // Espera 1000 ms
                portd.f0 = 0;  // Desliga o LED 0
                portd.f3 = 0;  // Desliga o LED 3
                delay_ms(tempo1Hz);  // Espera 1000 ms
            }
            for (i = 0; i < 3; i++) {  // Pisca 3 vezes alternadamente
                portd.f1 = 1;  // Liga o LED 1
                portd.f2 = 0;  // Desliga o LED 2
                delay_ms(tempo05Hz);  // Espera 2000 ms
                portd.f1 = 0;  // Desliga o LED 1
                portd.f2 = 1;  // Liga o LED 2
                delay_ms(tempo05Hz);  // Espera 2000 ms
            }
        }
    }
}
