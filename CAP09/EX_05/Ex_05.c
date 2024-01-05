void main() {
    int dutyCycle = 153; // Inicialmente 60% de razão cíclica (60% de 255 ˜ 153)

    trisc = 0; // Configura os pinos da porta C como saída
    trisb = 0b11; // Configura os pinos 0 (RB0) e 1 (RB1) da porta B como entrada
    pwm1_init(500); // Inicializa o módulo PWM com frequência de 500 Hz
    pwm1_set_duty(dutyCycle); // Define a razão cíclica inicial
    pwm1_start(); // Inicia o PWM

    while(1) {
        if (portb.f0 == 0) { // Se a chave S0 estiver pressionada
            if (dutyCycle < 255) { // Verifica se a razão cíclica é menor que 100%
                dutyCycle++; // Incrementa a razão cíclica em 0,4%
                pwm1_set_duty(dutyCycle);
            }
            delay_ms(50);
        }

        if (portb.f1 == 0) { // Se a chave S1 estiver pressionada
            if (dutyCycle > 51) { // Verifica se a razão cíclica é maior que 20%
                dutyCycle--; // Decrementa a razão cíclica em 0,4%
                pwm1_set_duty(dutyCycle);
            }
            delay_ms(50);
        }
    }
}
