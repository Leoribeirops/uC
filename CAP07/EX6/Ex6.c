const unsigned tempo2Hz = 250;  // Tempo para uma frequência de 2 Hz
const unsigned tempo1Hz = 500;  // Tempo para uma frequência de 1 Hz

void main() {

    trisb = 1;
    trisd = 0;
    adcon0 = 0;
    adcon1 = 15;

    while (1) {
        if (portb.f0 == 0) {
            // Pisca simultaneamente os LEDs 0 e 2 a uma frequência de 2 Hz
            portd = 0b00000101;  // Liga os LEDs 0 e 2
            delay_ms(tempo2Hz);  // Espera 250 ms
            portd = 0;  // Desliga todos os LEDs
            delay_ms(tempo2Hz);  // Espera 250 ms
        } else {
            // Pisca alternadamente os LEDs 1 e 3 a uma frequência de 1 Hz
            portd = 0b00001000;  // Liga o LED 3, desliga o LED 1
            delay_ms(tempo1Hz);  // Espera 500 ms
            portd = 0b00000010;  // Liga o LED 1, desliga o LED 3
            delay_ms(tempo1Hz);  // Espera 500 ms
        }
    }
}
