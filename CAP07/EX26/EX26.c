unsigned char i;

void main() {
    trisd = 0x00;  // Configura todos os pinos da PORTD como saída

    while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
        // Sequência de 0 a 7
        for (i = 0; i < 8; i++) {
            portd = (1 << i);  // Aciona o LED atual, todos os outros LEDs permanecem desligados
            delay_ms(500);     // Espera por 0,5 segundo
        }

        // Sequência de 6 a 1
        for (i = 6; i > 0; i--) {
            portd = (1 << i);  // Aciona o LED atual, todos os outros LEDs permanecem desligados
            delay_ms(500);     // Espera por 0,5 segundo
        }
    }
}
