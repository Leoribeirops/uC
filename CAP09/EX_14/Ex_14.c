// Declaração das variáveis e funções de controle do LCD
sbit lcd_rs at re2_bit;
sbit lcd_en at re1_bit;
sbit lcd_d7 at rd7_bit;
sbit lcd_d6 at rd6_bit;
sbit lcd_d5 at rd5_bit;
sbit lcd_d4 at rd4_bit;
sbit lcd_rs_direction at trise2_bit;
sbit lcd_en_direction at trise1_bit;
sbit lcd_d7_direction at trisd7_bit;
sbit lcd_d6_direction at trisd6_bit;
sbit lcd_d5_direction at trisd5_bit;
sbit lcd_d4_direction at trisd4_bit;

void DisplayValueOnLCD(int value) {
    char txt[17];
    // Convertendo o valor para uma string manualmente
    txt[0] = 'V';
    txt[1] = 'a';
    txt[2] = 'l';
    txt[3] = 'o';
    txt[4] = 'r';
    txt[5] = ':';
    txt[6] = ' ';
    txt[7] = ' ';
    txt[8] = value / 10 + '0'; // Dígito das dezenas
    txt[9] = value % 10 + '0'; // Dígito das unidades
    txt[10] = '\0'; // Finaliza a string

    // Exibindo no centro da primeira linha do LCD
    lcd_out(1, 5, txt); // 5 para centralizar, ajuste conforme necessário
}

void main() {
    int value;

    trisb = 0xFF; // Configura todos os pinos da porta B como entrada

    lcd_init(); // Inicializa o LCD

    while(1) {
        value = portb & 0x0F; // Lê os 4 bits menos significativos da porta B
        DisplayValueOnLCD(value); // Exibe o valor no LCD
        delay_ms(200); // Pequeno delay para facilitar a leitura
    }
}

