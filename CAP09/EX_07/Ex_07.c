// Declaração das variáveis e funções de controle do LCD
// lcd, C_string

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

void main() {
    trisd = 0; // Configura os pinos da porta D como saída para o LCD
    trise = 0; // Configura os pinos da porta E como saída para o LCD

    lcd_init(); // Inicializa o LCD

    while(1) { // Loop infinito
        // Primeiro conjunto de mensagens
        lcd_out(1, (16 - strlen("ELETROTECNICA")) / 2, "ELETROTECNICA"); // Centraliza e exibe na primeira linha
        lcd_out(2, (16 - strlen("IFSUL")) / 2, "IFSUL"); // Centraliza e exibe na segunda linha
        delay_ms(1000); // Espera 1 segundo

        lcd_cmd(_lcd_clear); // Limpa o display

        // Segundo conjunto de mensagens
        lcd_out(1, (16 - strlen("ESTUDO DO")) / 2, "ESTUDO DO"); // Centraliza e exibe na primeira linha
        lcd_out(2, (16 - strlen("PIC 16F877A")) / 2, "PIC 16F877A"); // Centraliza e exibe na segunda linha
        delay_ms(1000); // Espera 1 segundo

        lcd_cmd(_lcd_clear); // Limpa o display
    }
}
