unsigned char i;
const unsigned Bip_curto=100;
const unsigned Bip_longo=200;

void main() {
    trisb.f0 = 0;  // Configura o pino RB0 como saída

    while (1) {  // Loop infinito para repetir o sinal SOS
        // 3 bips curtos
        for (i = 0; i < 3; i++) {
            portb.f0 = 1;  // Liga o buzzer
            delay_ms(Bip_curto);  // Bip curto
            portb.f0 = 0;  // Desliga o buzzer
            delay_ms(Bip_curto);  // Espera antes do próximo bip
        }

        delay_ms(400);  // Espera entre bips curtos e longos

        // 3 bips longos
        for (i = 0; i < 3; i++) {
            portb.f0 = 1;  // Liga o buzzer
            delay_ms(Bip_longo);  // Bip longo
            portb.f0 = 0;  // Desliga o buzzer
            delay_ms(Bip_longo);  // Espera antes do próximo bip
        }

        delay_ms(400);  // Espera entre bips longos e curtos

        // 3 bips curtos novamente
        for (i = 0; i < 3; i++) {
            portb.f0 = 1;  // Liga o buzzer
            delay_ms(Bip_curto);  // Bip curto
            portb.f0 = 0;  // Desliga o buzzer
            delay_ms(Bip_curto);  // Espera antes do próximo bip
        }

        delay_ms(1500);  // Espera 1,5 segundos antes de repetir o sinal SOS
    }
}
