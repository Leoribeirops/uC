// Declaração da variável global
int numero;
int i;

// Função para decodificar um dígito e retornar o valor correspondente em 7 segmentos
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
        default: return 0;  // Retorna 0 para valores inválidos
    }
}

// Função para exibir o número nos displays
// for na função exibir_numero, que repete a exibição dos dígitos 333 vezes. 
//Cada repetição da exibição leva aproximadamente 3 ms (1 ms para cada dígito), 
//resultando em uma duração total de exibição de cerca de 1 segundo.
void exibir_numero() {
    // Divide o número em centenas, dezenas e unidades
    int centenas = numero / 100;
    int dezenas = (numero / 10) % 10;
    int unidades = numero % 10;

    for(i = 0; i < 333; i++) {  // Repete a exibição por aproximadamente 1 segundo
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

// Função para incrementar o número e reiniciar a contagem se necessário
void incrementar_numero() {
    numero++;
    if (numero > 999) {
        numero = 0;  // Reinicia a contagem quando atinge 1000
    }
}

// Função principal
void main() {
    trisa = 0b11000111;  // Configura RA3, RA4 e RA5 como saída
    trisd = 0;  // Configura PORTD como saída
    numero = 0;  // Valor inicial é 0 para começar a contagem
    adcon0 = 0;  // Configura ADCON0 para modo digital
    adcon1 = 15;  // Configura ADCON1 para modo digital

    while(1) {
        exibir_numero();  // Chama a função para exibir o número
        incrementar_numero();  // Chama a função para incrementar o número
    }
}
