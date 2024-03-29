unsigned char i;
// Defini��o dos valores dos segmentos para representar os d�gitos de 0 a 9
unsigned char segmentValues[] = {
    0b00111111,  // 0
    0b00000110,  // 1
    0b01011011,  // 2
    0b01001111,  // 3
    0b01100110,  // 4
    0b01101101,  // 5
    0b01111101,  // 6
    0b00000111,  // 7
    0b01111111,  // 8
    0b01101111   // 9
};

void main() {
    trisd = 0;      // Configura PORTD como sa�da
    trisa.ra5 = 0;  // Configura RA5 como sa�da

    while (1) {  // Loop infinito
        for (i = 1; i <= 9; i++) {  // Loop de contagem de 1 a 9
            if (i % 2 == 0) {  // Verifica se o algarismo � par
                portd = segmentValues[i];  // Atualiza os segmentos do display
                porta.ra5 = 1;             // Ativa o display
                delay_ms(1000);            // Mant�m o display ativo por 1 segundo
                porta.ra5 = 1;             // Desativa o display antes de atualizar o valor
            }
        }
    }
}
