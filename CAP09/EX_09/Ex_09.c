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

void main() {
    trisd = 0; // Configura os pinos da porta D como saída para o LCD
    trise = 0; // Configura os pinos da porta E como saída para o LCD

    lcd_init(); // Inicializa o LCD

    lcd_out(1, 3, "R"); // Escreve o caractere 'R' na terceira coluna da primeira linha
    delay_ms(2000); // Espera 2 segundos

    lcd_cmd(_lcd_clear); // Limpa o display

    lcd_chr(1, 3, 82); // Escreve o caractere 'R' usando o código ASCII 82 na mesma posição
    delay_ms(2000); // Espera 2 segundos

    lcd_cmd(_lcd_clear); // Limpa o display
}
