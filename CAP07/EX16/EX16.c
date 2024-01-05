unsigned char i;

void main() {
    trisd = 0;  // Configura RD0 como saída
    portd =0;
    
    while (1) {  // Loop infinito
        // a) Pisca 12 vezes o led a uma frequência de 0,5 Hz
        for (i = 0; i < 12; i++) {
            portd.rd0 = 1;  // Liga o LED
            delay_ms(1000);  // Espera 1 segundo
            portd.rd0 = 0;  // Desliga o LED
            delay_ms(1000);  // Espera 1 segundo
        }

        // b) Espera 3 segundos
        delay_ms(3000);

        // c) Retorna para o item a (automático devido ao loop while(1))
    }
}
