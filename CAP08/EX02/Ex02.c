unsigned char i;

void pisca_led0(int num_piscadas) {
    for (i = 0; i < num_piscadas; i++) {
        portd = (1 << 0);  // liga o LED 0
        delay_ms(1000);  // espera 1 segundo
        portd = 0;  // desliga o LED 0
        delay_ms(1000);  // espera 1 segundo
    }
}

void pisca_led1(int num_piscadas) {
    for (i = 0; i < num_piscadas; i++) {
        portd = (1 << 1);  // liga o LED 1
        delay_ms(1000);  // espera 1 segundo
        portd = 0;  // desliga o LED 1
        delay_ms(1000);  // espera 1 segundo
    }
}

void pisca_led2_e_led3(int num_piscadas) {
    for (i = 0; i < num_piscadas; i++) {
        portd = (1 << 2) | (1 << 3);  // liga os LEDs 2 e 3
        delay_ms(1000);  // espera 1 segundo
        portd = 0;  // desliga os LEDs 2 e 3
        delay_ms(1000);  // espera 1 segundo
    }
}

void main() {
    trisd = 0;  // configura os pinos da porta D como saída
    portd = 0;  // zera os pinos da porta D

    while (1) {  // início de um loop infinito
        pisca_led0(20);  // pisca o LED 0, 20 vezes
        delay_ms(3000);  // espera 3 segundos
        pisca_led1(10);  // pisca o LED 1, 10 vezes
        delay_ms(5000);  // espera 5 segundos
        pisca_led2_e_led3(15);  // pisca os LEDs 2 e 3, 15 vezes
        delay_ms(6000);  // espera 6 segundos
    }
}
