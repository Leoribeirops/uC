void main() {

    trisb = 0b00001111;  // Configura RB0, RB1, RB2 e RB3 como entrada
    trisd = 0;  // Configura PORTD como saída
    trisa.f5 = 0;  // Configura RA5 como saída
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter o programa rodando

        // Ativa o display
        porta.f5 = 1;

        if (portb.f0 == 0) {  // Se a chave S0 em RB0 for pressionada
                    //hgfedcba
            portd = 0b00111111;  // Exibe 0 no display de 7 segmentos
        }
        else if (portb.f1 == 0) {  // Se a chave S1 em RB1 for pressionada
            portd = 0b00000110;  // Exibe 1 no display de 7 segmentos
        }
        else if (portb.f2 == 0) {  // Se a chave S2 em RB2 for pressionada
                    //hgfedcba
            portd = 0b01011011;  // Exibe 2 no display de 7 segmentos
        }
        else if (portb.f3 == 0) {  // Se a chave S3 em RB3 for pressionada
            portd = 0b01111001;  // Exibe 3 no display de 7 segmentos
        }
        else {
            // Desativa o display se nenhuma chave estiver pressionada
            porta.f5 = 0;
        }
    }
}
