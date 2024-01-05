// Declara��o da vari�vel global
int numero;

// Fun��o para decodificar um d�gito e retornar o valor correspondente em 7 segmentos
int decodificador(int digito) {
    switch(digito) {
        case 0: return 0b0111111;
        case 1: return 0b0000110;
        case 2: return 0b1011011;
        case 3: return 0b1001111;
        case 4: return 0b1100110;
        case 5: return 0b1101101;
        case 6: return 0b1111101;
        case 7: return 0b0000111;
        case 8: return 0b1111111;
        case 9: return 0b1101111;
        default: return 0;  // Retorna 0 para valores inv�lidos
    }
}

// Fun��o principal
void main() {
    trisa = 0b11000111;  // Configura RA3, RA4 e RA5 como sa�da
    trisd = 0;  // Configura PORTD como sa�da
    numero = 123;  // Valor inicial (altere conforme necess�rio)
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital


    while(1) {
        // Divide o n�mero em centenas, dezenas e unidades
        int centenas = numero / 100;
        int dezenas = (numero / 10) % 10;
        int unidades = numero % 10;

        // Exibe as centenas
        porta.f3 = 1;
        portd = decodificador(centenas);
        delay_ms(1);
        porta.f3 = 0;

      // Exibe as dezenas
        porta.f4 = 1;
        portd = decodificador(dezenas);
        delay_ms(1);
        porta.f4 = 0;

        // Exibe as unidades
        porta.f5 = 1;
        portd = decodificador(unidades);
        delay_ms(1);
        porta.f5 = 0;
    }
}
