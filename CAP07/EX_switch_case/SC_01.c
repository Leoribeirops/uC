unsigned char buttonPressed;
//unsigned int i;

void main() {
    trisb = 0b1111;  // Configura RB0, RB1, RB2 e RB3 como entrada
    trisd = 0;  // Configura PORTD como sa�da
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital
    portd = 0;  // Reseta PORTD para garantir que n�o haja estado residual dos LEDs

    while (1) {  // Loop infinito para manter o programa rodando

        // Identifica qual bot�o foi pressionado
        //buttonPressed = portb & 0b1111;  // Considera apenas os bits de RB0 a RB3
        buttonPressed = portb;

        // Usa a estrutura switch-case para determinar a a��o baseada no bot�o pressionado
        switch (buttonPressed) {
            case 0b1110:  // Se o bot�o em RB0 foi pressionado
                portd = 0b0001;  // Liga o LED 0
                //i = 0b0001;
                //portd=i;
                break;
            case 0b1101:  // Se o bot�o em RB1 foi pressionado
                portd = 0b0010;  // Liga o LED 1
                break;
            case 0b1011:  // Se o bot�o em RB2 foi pressionado
                portd = 0b0100;  // Liga o LED 2
                break;
            case 0b0111:  // Se o bot�o em RB3 foi pressionado
                portd = 0b1000;  // Liga o LED 3
                break;
            default:
                // Se nenhum bot�o foi pressionado ou mais de um bot�o foi pressionado
                portd=0;  // Todos os LEDs apresentam i
                break;
        }
        //portd=i;
    }
}
