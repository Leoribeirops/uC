const unsigned d1 = 1000;
int i;  // Declarando a variável i fora dos loops

void main() {

    trisb = 1;
    trisd = 0;
    adcon0 = 0;
    adcon1 = 15;

    while (1) {
        if (portb.f0 == 0) {
            for (i = 0; i < 4; i++) {  // Loop para percorrer os LEDs de 0 a 3
                portd = (1 << i);  // Liga o LED atual
                delay_ms(d1);  // Espera 1 segundo
                portd = 0;  // Desliga o LED atual
            }
        } else {
            for (i = 3; i >= 0; i--) {  // Loop para percorrer os LEDs de 3 a 0
                portd = (1 << i);  // Liga o LED atual
                delay_ms(d1);  // Espera 1 segundo
                portd = 0;  // Desliga o LED atual
            }
        }
    }
}
