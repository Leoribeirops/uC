void main() {
    trisd.rd0 = 0;  // Configura RD0 como sa�da
    adcon0 = 0;     // Configura ADCON0 para modo digital
    adcon1 = 15;    // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter a sequ�ncia rodando enquanto o circuito estiver energizado
        unsigned char count = 0;  // Vari�vel de contagem para controlar o n�mero de piscadas
        while (count < 8) {  // Loop para piscar o LED 0 oito vezes
            portd.rd0 = ~portd.rd0;  // Inverte o estado do LED 0
            delay_ms(125);  // Aguarda 125 ms para obter uma frequ�ncia de 4 Hz (1/0.125s = 4 Hz)
            if (portd.rd0 == 0) {  // Incrementa a contagem somente quando o LED 0 estiver desligado (para contar uma piscada completa)
                count++;
            }
        }
        portd.rd0 = 0;  // Garante que o LED 0 est� desligado antes de entrar no per�odo de espera
        delay_ms(5000);  // Aguarda 5 segundos
        // O c�digo retorna automaticamente para o in�cio do loop infinito, reiniciando a sequ�ncia
    }
}
