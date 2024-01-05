unsigned char count;
void main() {
    TRISD = 0;  // Configura PORTD como saída
    TRISA.RA5 = 0;  // Configura RA5 como saída
    ADCON0 = 0;  // Configura ADCON0 para modo digital
    ADCON1 = 15;  // Configura ADCON1 para modo digital

    count = 2;  // Inicia a contagem em 2

    while (1) {  // Loop infinito
        while (count <= 8) {  // Loop de contagem de 2 a 8
            switch(count) {
                case 2: PORTD = 0b01011011; break;  // 2
                case 4: PORTD = 0b01100110; break;  // 4
                case 6: PORTD = 0b01111101; break;  // 6
                case 8: PORTD = 0b01111111; break;  // 8
            }
            PORTA.RA5 = 1;  // Ativa o display
            Delay_ms(1000);  // Aguarda 1 segundo
            PORTA.RA5 = 0;  // Desativa o display
            count += 2;  // Incrementa a contagem em 2 para obter o próximo número par
        }
        count = 2;  // Reinicia a contagem em 2
    }
}
