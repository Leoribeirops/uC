unsigned char i;
// Definição dos valores dos segmentos para representar os dígitos de 'C' a '5'
unsigned char segmentValues[] = {
    0b00111001,  // 'C'
    0b01011110,  // 'D'
    0b01111001,  // 'E'
    0b01110001,  // 'F'
    0b00111111,  // '0'
    0b00000110,  // '1'
    0b01011011,  // '2'
    0b01001111,  // '3'
    0b01100110,  // '4'
    0b01101101   // '5'
};

void main() {
    trisd = 0;      // Configura PORTD como saída
    trisa.ra5 = 0;  // Configura RA5 como saída

    while (1) {  // Loop infinito
        for (i = 0; i < 10; i++) {  // Loop de contagem de 'C' a '5'
            if (i < 4 || i > 8) {  // Verifica se o índice está dentro do intervalo de 'C' a '5'
                portd = segmentValues[i];  // Atualiza os segmentos do display
                porta.ra5 = 1;             // Ativa o display
                delay_ms(1000);            // Mantém o display ativo por 1 segundo
                porta.ra5 = 1;             // Desativa o display antes de atualizar o valor
            }
        }
    }
}
