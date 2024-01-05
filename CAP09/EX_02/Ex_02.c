void main() {
    int dutyCycle = 255; // Inicia com 100% de razão cíclica (em uma escala de 0-255)

    trisc = 0; // Configura todos os pinos da porta C como saída
    pwm1_init(2000); // Inicializa o módulo PWM com uma frequência de 2 kHz
    pwm1_start(); // Ativa a geração de PWM no pino 2 da porta C

    while(dutyCycle >= 0) {
        pwm1_set_duty(dutyCycle); // Configura a razão cíclica atual

        // Calcula o decremento de 0,4% da razão cíclica.
        // Como a escala é de 0-255, 0,4% de 255 é aproximadamente 1.
        dutyCycle -= 1;
        delay_ms(100); // Espera 0,1 segundo antes da próxima redução
    }
}
