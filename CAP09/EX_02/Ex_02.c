void main() {
    int dutyCycle = 255; // Inicia com 100% de raz�o c�clica (em uma escala de 0-255)

    trisc = 0; // Configura todos os pinos da porta C como sa�da
    pwm1_init(2000); // Inicializa o m�dulo PWM com uma frequ�ncia de 2 kHz
    pwm1_start(); // Ativa a gera��o de PWM no pino 2 da porta C

    while(dutyCycle >= 0) {
        pwm1_set_duty(dutyCycle); // Configura a raz�o c�clica atual

        // Calcula o decremento de 0,4% da raz�o c�clica.
        // Como a escala � de 0-255, 0,4% de 255 � aproximadamente 1.
        dutyCycle -= 1;
        delay_ms(100); // Espera 0,1 segundo antes da pr�xima redu��o
    }
}
