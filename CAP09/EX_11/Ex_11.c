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
    trisb = 3; // Configura os pinos RB0 e RB1 como entrada

    lcd_init(); // Inicializa o LCD
    lcd_cmd(_lcd_cursor_off); // Desliga o cursor para uma visualização mais limpa

    lcd_out(1, (16 - strlen("Brasil")) / 2, "Brasil"); // Escreve o nome do país no centro da primeira linha

    while(1) { // Loop infinito
        if (portb.f0 == 1) { // Verifica se a chave S0 está pressionada
            lcd_cmd(_lcd_shift_right); // Desloca a mensagem para a direita
            delay_ms(200); // Espera 200 ms
        } else if (portb.f1 == 1) { // Verifica se a chave S1 está pressionada
            lcd_cmd(_lcd_shift_left); // Desloca a mensagem para a esquerda
            delay_ms(200); // Espera 200 ms
        }
    }
}
