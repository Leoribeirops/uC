unsigned int temporizador = 0;

void main() {
    trisd.rd0 = 0;  // Configura RD0 como sa�da
    trisb = 0xFF;   // Configura PORTB como entrada
    adcon0=0;
    adcon1=15;

    while (1) {  // Loop infinito para manter a sequ�ncia rodando enquanto o circuito estiver energizado

        if (portb.rb0 == 0) {  // Se a chave 1 � pressionada
            temporizador = 10000;  // Reinicia a temporiza��o para 10 segundos
        }

        if (portb.rb1 == 0 && temporizador > 0) {  // Se a chave 2 � pressionada enquanto o LED 0 est� ligado
            temporizador = 0;  // Finaliza a temporiza��o
        }

        if (temporizador > 0) {  // Se ainda h� tempo restante
            portd.rd0 = 1;  // Liga o LED 0
            delay_ms(100);  // Aguarda 100 ms
            temporizador -= 100;  // Atualiza o tempo restante
        } else {
            portd.rd0 = 0;  // Desliga o LED 0
        }
    }
}
