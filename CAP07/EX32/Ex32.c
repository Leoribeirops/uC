void main() {
    trisd.rd0 = 0;  // Configura RD0 como saída
    trisb.rb0 = 1;  // Configura RB0 como entrada
    trisb.rb1 = 1;  // Configura RB1 como entrada
    adcon0 = 0;     // Configura ADCON0 para modo digital
    adcon1 = 15;    // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
        while ((portb.rb0 == 0) || (portb.rb1 == 0)) {  // Enquanto pelo menos uma chave estiver pressionada
            portd.rd0 = 1;  // Liga o LED 0
        }
        portd.rd0 = 0;  // Desliga o LED 0 quando ambas as chaves forem liberadas
    }
}
