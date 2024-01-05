void main() {
    trisd.rd0 = 0;  // Configura RD0 como saída
    trisd.rd1 = 0;  // Configura RD1 como saída
    trisb.rb0 = 1;  // Configura RB0 como entrada
    trisb.rb1 = 1;  // Configura RB1 como entrada
    adcon0 = 0;     // Configura ADCON0 para modo digital
    adcon1 = 15;    // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
        if (portb.rb0 == 0) {  // Se a chave 0 for pressionada
            while (portb.rb0 == 0);  // Aguarda a chave 0 ser liberada
            portd.rd0 = ~portd.rd0;  // Inverte o estado do LED 0
        }

        if (portb.rb1 == 0) {  // Se a chave 1 for pressionada
            portd.rd1 = ~portd.rd1;  // Inverte o estado do LED 1
            while (portb.rb1 == 0);  // Aguarda a chave 1 ser liberada
        }
    }
}
