void main() {

    trisb = 0b00001111;  // Configura RB0, RB1, RB2 e RB3 como entrada
    trisd = 0;  // Configura PORTD como saída
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital
    // Reseta PORTD para garantir que não haja estado residual dos LEDs
    portd = 0;
        
    while (1) {  // Loop infinito para manter o programa rodando

        if (portb.f0 == 0) {  // Se a chave S1 em RB0 for pressionada
            portd = 0b0001;  // Exibe 1 em binário nos LEDs
        }
        else {
            portd = 0b0000;
        }
        if (portb.f1 == 0) {  // Se a chave S2 em RB1 for pressionada
            portd = 0b0010;  // Exibe 2 em binário nos LEDs
        }
        else {
            portd = 0b0000;
        }
        if (portb.f2 == 0) {  // Se a chave S3 em RB2 for pressionada
            portd = 0b0011;  // Exibe 3 em binário nos LEDs
        }
        else {
            portd = 0b0000;
        }
        if (portb.f3 == 0) {  // Se a chave S4 em RB3 for pressionada
            portd = 0b0100;  // Exibe 4 em binário nos LEDs
        }
        else {
            portd = 0b0000;
        }
        

    }
}