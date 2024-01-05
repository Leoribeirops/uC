const unsigned int d1=500;

int i;

void main() // inï¿½cio do programa principal
{

    TRISB = 0;   // Configura PORTB como saída
    TRISD = 0;   // Configura os pinos RD0 e RD1 como saída e mantém o restante como entrada

    
    //i = 0b001111111111;    // Atribui um valor de 10 bits à variável i para simulação  1023
    i = 1596; // teste valor máximo = 65535

    while(1)   // Loop infinito
    {
        
        PORTD = (i >> 8) & 255; // Desloca 8 posições à direita e pega os 8 bits mais significativos
        PORTB = i & 255;       // Pega os 8 bits menos significativos
        
        //combinar valores
        //combinedValue = (PORTD << 8) | PORTB;
            }
}