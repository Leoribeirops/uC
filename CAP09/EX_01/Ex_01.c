// LIB PWM

void main() {
    trisc = 0; // Configura todos os pinos da porta C como sa�da
    pwm1_init(6000); // Inicializa o m�dulo PWM com uma frequ�ncia de 6 kHz

    // A raz�o c�clica de 50% � obtida ajustando o duty cycle para metade do seu valor m�ximo.
    // Para uma resolu��o de 8 bits (0-255), o valor para 50% � 128 (aproximadamente a metade de 255).
    pwm1_set_duty(128); // Configura a raz�o c�clica em 50%

    pwm1_start(); // Ativa a gera��o de PWM no pino 2 da porta C
}

/*
trisc = 0;: Esta linha configura todos os pinos da porta C como sa�das. No PIC 16F877A, cada porta possui um registro de controle (TRIS), onde escrever '0' configura o pino correspondente como sa�da.

pwm1_init(6000);: Inicializa o m�dulo PWM com a frequ�ncia especificada, que neste caso � 6 kHz.

pwm1_set_duty(128);: Configura a raz�o c�clica do sinal PWM. O valor '128' representa aproximadamente 50% do m�ximo para uma resolu��o de 8 bits.

pwm1_start();: Ativa a sa�da PWM no pino especificado, que neste exemplo � o pino 2 da porta C.

*/