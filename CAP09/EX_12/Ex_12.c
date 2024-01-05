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

int count = 0; // Contador de pessoas

void UpdateLCD() {
    char txt[17];
    // Converte o número de pessoas para uma string
    txt[0] = 'P';
    txt[1] = 'e';
    txt[2] = 's';
    txt[3] = 's';
    txt[4] = 'o';
    txt[5] = 'a';
    txt[6] = 's';
    txt[7] = ':';
    txt[8] = ' ';
    txt[9] = (count / 10) % 10 + '0'; // Dígito das dezenas
    txt[10] = count % 10 + '0';       // Dígito das unidades
    txt[11] = '\0'; // Finaliza a string

    lcd_out(1, 1, txt); // Escreve o texto no LCD
}

void main() {
    trisd = 0; // Configura os pinos da porta D como saída para o LCD
    trise = 0; // Configura os pinos da porta E como saída para o LCD
    trisb = 3; // Configura os pinos RB0 e RB1 como entrada

    lcd_init(); // Inicializa o LCD
    UpdateLCD(); // Atualiza o display com o contador inicial

    while(1) { // Loop infinito
        if (portb.f0 == 1) { // Se a chave S0 for pressionada
            while(portb.f0 == 1); // Aguarda a liberação da chave
            if (count < 99) count++; // Incrementa o contador
            UpdateLCD(); // Atualiza o display
        }
        if (portb.f1 == 1) { // Se a chave S1 for pressionada
            while(portb.f1 == 1); // Aguarda a liberação da chave
            if (count > 0) count--; // Decrementa o contador
            UpdateLCD(); // Atualiza o display
        }
    }
}
