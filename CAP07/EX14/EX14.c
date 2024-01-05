unsigned char peopleCount;
unsigned char lastStateF0 = 1;
unsigned char lastStateF1 = 1;
unsigned char lastStateF2 = 1;

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
        switch(peopleCount) {
            case 0: portd=0b00111111; break;  // 0
            case 1: portd=0b00000110; break;  // 1
            case 2: portd=0b01011011; break;  // 2
            case 3: portd=0b01001111; break;  // 3
            case 4: portd=0b01100110; break;  // 4
            case 5: portd=0b01101101; break;  // 5
            case 6: portd=0b01111101; break;  // 6
            case 7: portd=0b00000111; break;  // 7
            case 8: portd=0b01111111; break;  // 8
            case 9: portd=0b01101111; break;  // 9
        }

         if (portb.f0 == 0 && lastStateF0 == 1) {  // Se a chave 0 é pressionada (entrada de pessoa)
            if (peopleCount < 9) {  // Verifica se o número de pessoas é menor que 9
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

        porta=0b00001000;  // Exibe o número de pessoas no display ativado por RA3
    }
}
