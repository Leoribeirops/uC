void main() {
    trisd.rd0 = 0;  // Configura RD0 como saída
    adcon0 = 0;     // Configura ADCON0 para modo digital
    adcon1 = 15;    // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter a sequência rodando enquanto o circuito estiver energizado
        unsigned char count = 0;  // Variável de contagem para controlar o número de piscadas
        while (count < 8) {  // Loop para piscar o LED 0 oito vezes
            portd.rd0 = ~portd.rd0;  // Inverte o estado do LED 0
            delay_ms(125);  // Aguarda 125 ms para obter uma frequência de 4 Hz (1/0.125s = 4 Hz)
            if (portd.rd0 == 0) {  // Incrementa a contagem somente quando o LED 0 estiver desligado (para contar uma piscada completa)
                count++;
            }
        }
        portd.rd0 = 0;  // Garante que o LED 0 está desligado antes de entrar no período de espera
        delay_ms(5000);  // Aguarda 5 segundos
        // O código retorna automaticamente para o início do loop infinito, reiniciando a sequência
    }
}
