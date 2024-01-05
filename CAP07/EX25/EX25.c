unsigned char i;
void main() {
    trisd = 0x00;  // Configura todos os pinos da PORTD como saída

    while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
        for (i= 0; i < 8; i++) {  // Loop de 0 a 7 para acionar os LEDs de RD7 a RD0
            portd = (0x80 >> i);  // Aciona o LED atual, todos os outros LEDs permanecem desligados
            delay_ms(500);        // Espera por 0,5 segundo
        }
    }
}
