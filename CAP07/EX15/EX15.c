unsigned int peopleCount = 0;  // Alterado para int para acomodar números até 999
unsigned char lastStateF0 = 1;
unsigned char lastStateF1 = 1;
unsigned char lastStateF2 = 1;

// Função para obter o valor do segmento de 7 segmentos para um dígito específico
unsigned char getSegmentValue(unsigned char digit) {
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
    return segmentValues[digit];
}

void main() {
    trisd = 0;  // Configura PORTD como saída
    trisa = 0;  // Configura PORTA como saída
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital
    portb.f0 = 1;
    portb.f1 = 1;
    portb.f2 = 1;
    peopleCount = 0;
   
    while (1) {
        unsigned char hundreds = peopleCount / 100;
        unsigned char tens = (peopleCount % 100) / 10;
        unsigned char units = peopleCount % 10;

        // Atualiza o display das centenas
        porta = 0b00001000;
        portd = getSegmentValue(hundreds);
        delay_ms(10);  // Um pequeno atraso para garantir que o display seja atualizado corretamente

        // Atualiza o display das dezenas
        porta = 0b00010000;
        portd = getSegmentValue(tens);
        delay_ms(10);  // Um pequeno atraso para garantir que o display seja atualizado corretamente

        // Atualiza o display das unidades
        porta = 0b00100000;
        portd = getSegmentValue(units);
        delay_ms(10);  // Um pequeno atraso para garantir que o display seja atualizado corretamente
        
       if (portb.f0 == 0 && lastStateF0 == 1) {  // Se a chave 0 é pressionada (entrada de pessoa)
            if (peopleCount < 1000) {  // Verifica se o número de pessoas é menor que 9
                peopleCount++;  // Incrementa o contador de pessoas
            }
            //lastStateF0 = portb.f0;
            delay_ms(1000);  // Aguarda 100 ms para evitar contagem múltipla de uma única pessoa
        }

        if (portb.f1 == 0 && lastStateF1 == 1) {  // Se a chave 1 é pressionada (saída de pessoa)
            if (peopleCount > 0) {  // Verifica se o número de pessoas é maior que 0
                peopleCount--;  // Decrementa o contador de pessoas
            }
            //lastStateF1 = portb.f1;
            delay_ms(1000);  // Aguarda 100 ms para evitar contagem múltipla de uma única pessoa
        }

        if (portb.f2 == 0 && lastStateF2 == 1) {     // reseta
        peopleCount = 0;
        }
      }
}
