void main() {
    int dutyCycle = 153; // Inicialmente 60% de raz�o c�clica (60% de 255 � 153)

    trisc = 0; // Configura os pinos da porta C como sa�da
    trisb = 0b11; // Configura os pinos 0 (RB0) e 1 (RB1) da porta B como entrada
    pwm1_init(500); // Inicializa o m�dulo PWM com frequ�ncia de 500 Hz
    pwm1_set_duty(dutyCycle); // Define a raz�o c�clica inicial
    pwm1_start(); // Inicia o PWM

    while(1) {
        if (portb.f0 == 0) { // Se a chave S0 estiver pressionada
            if (dutyCycle < 255) { // Verifica se a raz�o c�clica � menor que 100%
                dutyCycle++; // Incrementa a raz�o c�clica em 0,4%
                pwm1_set_duty(dutyCycle);
            }
            delay_ms(50);
        }

        if (portb.f1 == 0) { // Se a chave S1 estiver pressionada
            if (dutyCycle > 51) { // Verifica se a raz�o c�clica � maior que 20%
                dutyCycle--; // Decrementa a raz�o c�clica em 0,4%
                pwm1_set_duty(dutyCycle);
            }
            delay_ms(50);
        }
    }
}
