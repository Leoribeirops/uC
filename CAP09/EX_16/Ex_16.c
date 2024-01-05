void main() {
    int adcValue; // Vari�vel para armazenar o valor lido do ADC
    const int thresholdOn = (4 * 1023) / 5; // Limiar para ligar o ventilador (4V)
    const int thresholdOff = (2 * 1023) / 5; // Limiar para desligar o ventilador (2V)

    trisa = 0xFF; // Configura a porta A como entrada
    trisc.f2 = 0; // Configura o pino RC2 como sa�da para o ventilador
    portc.f2 = 0; // Inicialmente, o ventilador est� desligado

    adcon1 = 0x80; // Configura a porta A para entrada anal�gica
    adc_init(); // Inicializa o m�dulo ADC

    while(1) {
        adcValue = adc_read(0); // L� o valor do ADC no canal 0 (RA0)

        if (adcValue >= thresholdOn) {
            portc.f2 = 1; // Liga o ventilador
        } else if (adcValue < thresholdOff) {
            portc.f2 = 0; // Desliga o ventilador
        }

        delay_ms(100); // Pequena pausa para estabiliza��o
    }
}
