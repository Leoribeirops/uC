void main() {
    int adcValue; // Variável para armazenar o valor lido do ADC
    const int thresholdOn = (4 * 1023) / 5; // Limiar para ligar o ventilador (4V)
    const int thresholdOff = (2 * 1023) / 5; // Limiar para desligar o ventilador (2V)

    trisa = 0xFF; // Configura a porta A como entrada
    trisc.f2 = 0; // Configura o pino RC2 como saída para o ventilador
    portc.f2 = 0; // Inicialmente, o ventilador está desligado

    adcon1 = 0x80; // Configura a porta A para entrada analógica
    adc_init(); // Inicializa o módulo ADC

    while(1) {
        adcValue = adc_read(0); // Lê o valor do ADC no canal 0 (RA0)

        if (adcValue >= thresholdOn) {
            portc.f2 = 1; // Liga o ventilador
        } else if (adcValue < thresholdOff) {
            portc.f2 = 0; // Desliga o ventilador
        }

        delay_ms(100); // Pequena pausa para estabilização
    }
}
