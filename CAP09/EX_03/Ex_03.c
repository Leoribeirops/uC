//#include <16F877A.h>  // Inclui a biblioteca específica para o PIC 16F877A
// PWM e RS485

void main() {
    trisc = 0;   // Configura os pinos da porta C como saída
    trisb = 0b11; // Configura os pinos RB0 e RB1 como entrada
    uart1_init(9600); // Inicializa a biblioteca uart1 em 9600 bps

    pwm1_init(2500); // Inicializa o módulo PWM com frequência de 2,5 kHz

    while(1) {
        if(portb.f0 == 0) { // Se a chave S0 for pressionada
            pwm1_set_duty(191); // Ajusta a razão cíclica para 75% (191 em escala de 0 a 255)
            pwm1_start(); // Liga o PWM no pino 2 da porta C
            uart1_write_text("MOTOR LIGADO\n"); // Envia a mensagem para o terminal serial
        }

        if(portb.f1 == 0) { // Se a chave S1 for pressionada
            pwm1_set_duty(0); // Ajusta a razão cíclica para 0%
            pwm1_start(); // Liga o PWM no pino 2 da porta C
            uart1_write_text("MOTOR DESLIGADO\n"); // Envia a mensagem para o terminal serial
        }
    }
}
