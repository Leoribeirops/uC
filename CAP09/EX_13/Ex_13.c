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

void UpdateLCD(int dutyCycle) {
    char txt[17];
    int percent = (dutyCycle * 100) / 255;
    // Construindo a string manualmente
    txt[0] = 'V';
    txt[1] = 'a';
    txt[2] = 'l';
    txt[3] = 'o';
    txt[4] = 'r';
    txt[5] = ':';
    txt[6] = ' ';
    txt[7] = percent / 10 + '0'; // Dígito das dezenas
    txt[8] = percent % 10 + '0'; // Dígito das unidades
    txt[9] = '%';
    txt[10] = ' ';
    txt[11] = ' ';
    txt[12] = ' ';
    txt[13] = '\0'; // Finaliza a string

    lcd_out(2, 1, txt); // Exibe a string na segunda linha do LCD
}

void main() {
    int dutyCycle;

    trisc = 0; // Configura os pinos da porta C como saída
    trisb = 0b11; // Configura os pinos 0 (RB0) e 1 (RB1) da porta B como entrada
    pwm1_init(500); // Inicializa o módulo PWM com frequência de 500 Hz
    lcd_init(); // Inicializa o LCD
    lcd_out(1, 1, "Razao Ciclica"); // Escreve na primeira linha do LCD

    while(1) {
        if (portb.f0 == 0) { // Se a chave S0 for pressionada
            for (dutyCycle = 51; dutyCycle <= 255; dutyCycle++) {
                pwm1_set_duty(dutyCycle);
                UpdateLCD(dutyCycle); // Atualiza o LCD
                delay_ms(100);
            }
        }

        if (portb.f1 == 0) { // Se a chave S1 for pressionada
            for (dutyCycle = 255; dutyCycle >= 0; dutyCycle -= 2) {
                pwm1_set_duty(dutyCycle);
                UpdateLCD(dutyCycle); // Atualiza o LCD
                delay_ms(100);
            }
        }
    }
}

