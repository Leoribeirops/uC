// Defini��o dos padr�es dos n�meros de 0 a 9 para um display de 7 segmentos de �nodo comum
const unsigned char segmentPatterns[10] = {
    0b00111111,  // 0
    0b00000110,  // 1
    0b01011011,  // 2
    //hgfedcba
    0b01001111,  // 3
    0b01110110,  // 4
    0b00101101,  // 5
    0b01111101,  // 6
    0b00000111,  // 7
    0b01111111,  // 8
    0b01100111   // 9
};

void displayDigit(unsigned char digit, unsigned char displaySelect) {
    portd = segmentPatterns[digit];  // Coloca o padr�o do d�gito no PORTD
    porta = displaySelect;  // Ativa o display correspondente
    delay_ms(1);  // Mant�m o display ligado por 1 ms
    porta = 0;  // Desativa o display
}

void main() {
    unsigned int number = 123;  // Vari�vel que cont�m o n�mero a ser exibido
    unsigned char hundreds, tens, units;

    trisd = 0;  // Configura PORTD como sa�da
    trisa = 0;  // Configura PORTA como sa�da
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital

    while (1) {  // Loop infinito para manter o programa rodando
        // Separa o n�mero em centenas, dezenas e unidades
        hundreds = number / 100;
        tens = (number / 10) % 10;
        units = number % 10;

        // Exibe os d�gitos nos displays correspondentes
        displayDigit(hundreds, 0b00001000);  // Exibe centenas no display ativado por RA3
        displayDigit(tens, 0b00010000);  // Exibe dezenas no display ativado por RA4
        displayDigit(units, 0b00100000);  // Exibe unidades no display ativado por RA5
    }
}
