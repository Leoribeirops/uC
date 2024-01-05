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

    while(1) { // Loop infinito
        lcd_out(1, 5, "IFSUL-PELOTAS"); // Exibe a mensagem no centro da primeira linha
        delay_ms(1000); // Espera 1 segundo (mensagem visível)

        lcd_cmd(_lcd_clear); // Limpa o display
        delay_ms(1000); // Espera 1 segundo (mensagem oculta)
    }
}
