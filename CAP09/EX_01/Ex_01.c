// LIB PWM

void main() {
    trisc = 0; // Configura todos os pinos da porta C como saída
    pwm1_init(6000); // Inicializa o módulo PWM com uma frequência de 6 kHz

    // A razão cíclica de 50% é obtida ajustando o duty cycle para metade do seu valor máximo.
    // Para uma resolução de 8 bits (0-255), o valor para 50% é 128 (aproximadamente a metade de 255).
    pwm1_set_duty(128); // Configura a razão cíclica em 50%

    pwm1_start(); // Ativa a geração de PWM no pino 2 da porta C
}

/*
trisc = 0;: Esta linha configura todos os pinos da porta C como saídas. No PIC 16F877A, cada porta possui um registro de controle (TRIS), onde escrever '0' configura o pino correspondente como saída.

pwm1_init(6000);: Inicializa o módulo PWM com a frequência especificada, que neste caso é 6 kHz.

pwm1_set_duty(128);: Configura a razão cíclica do sinal PWM. O valor '128' representa aproximadamente 50% do máximo para uma resolução de 8 bits.

pwm1_start();: Ativa a saída PWM no pino especificado, que neste exemplo é o pino 2 da porta C.

*/