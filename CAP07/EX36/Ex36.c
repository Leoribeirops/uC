unsigned char count;
void main() {
    TRISD = 0;  // Configura PORTD como saída
    TRISA.RA5 = 0;  // Configura RA5 como saída
    ADCON0 = 0;  // Configura ADCON0 para modo digital
    ADCON1 = 15;  // Configura ADCON1 para modo digital

    count = 0;  // Variável de contagem

    while (1) {  // Loop infinito
        while (count <= 15) {  // Loop de contagem de 0 a F
            switch(count) {
                case 0: PORTD = 0b00111111; break;  // 0
                case 1: PORTD = 0b00000110; break;  // 1
                case 2: PORTD = 0b01011011; break;  // 2
                case 3: PORTD = 0b01001111; break;  // 3
                case 4: PORTD = 0b01100110; break;  // 4
                case 5: PORTD = 0b01101101; break;  // 5
                case 6: PORTD = 0b01111101; break;  // 6
                case 7: PORTD = 0b00000111; break;  // 7
                case 8: PORTD = 0b01111111; break;  // 8
                case 9: PORTD = 0b01101111; break;  // 9
                case 10: PORTD = 0b01110111; break;  // A
                case 11: PORTD = 0b01111100; break;  // B
                case 12: PORTD = 0b00111001; break;  // C
                case 13: PORTD = 0b01011110; break;  // D
                case 14: PORTD = 0b01111001; break;  // E
                case 15: PORTD = 0b01110001; break;  // F
            }
            PORTA.RA5 = 1;  // Ativa o display
            Delay_ms(1000);  // Aguarda 1 segundo
            PORTA.RA5 = 0;  // Desativa o display
            count++;  // Incrementa a contagem
        }
        count = 0;  // Reinicia a contagem
    }
}
