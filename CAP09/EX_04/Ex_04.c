void main() {
    int dutyCycle;

    trisc = 0; // Configura os pinos da porta C como saída
    trisb = 0b11; // Configura os pinos 0 (RB0) e 1 (RB1) da porta B como entrada
    pwm1_init(500); // Inicializa o módulo PWM com frequência de 500 Hz

    while(1) {
        if (portb.f0 == 0) { // Se a chave S0 for pressionada
            for (dutyCycle = 51; dutyCycle <= 255; dutyCycle++) { // Incrementa de 20% a 100%
                pwm1_set_duty(dutyCycle);
                delay_ms(50);
            }
        }

        if (portb.f1 == 0) { // Se a chave S1 for pressionada
            for (dutyCycle = 255; dutyCycle >= 0; dutyCycle -= 2) { // Decrementa de 100% a 0%
                pwm1_set_duty(dutyCycle);
                delay_ms(20);
            }
        }
    }
}
