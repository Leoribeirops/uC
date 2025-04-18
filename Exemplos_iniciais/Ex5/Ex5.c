//#include <pic16f628a.h>

// Definição dos tempos em milissegundos
#define SHORT_BEEP_TIME 100
#define LONG_BEEP_TIME 200
#define INTER_ELEMENT_DELAY 100
#define INTER_SOS_DELAY 400
#define INTER_SOS_SEQUENCE_DELAY 1500

void beep(int time_ms)
{
    PORTB = 1;
    delay_ms(time_ms);
    PORTB = 0;
    delay_ms(time_ms);
}

void sos_signal()
{
    int i;

    for (i = 0; i < 3; i++)
    {
        beep(SHORT_BEEP_TIME);
    }
    delay_ms(INTER_ELEMENT_DELAY);

    for (i = 0; i < 3; i++)
    {
        beep(LONG_BEEP_TIME);
    }
    delay_ms(INTER_ELEMENT_DELAY);

    for (i = 0; i < 3; i++)
    {
        beep(SHORT_BEEP_TIME);
    }
    delay_ms(INTER_SOS_SEQUENCE_DELAY);
}

void main()
{
    TRISB = 0; // Configurar a porta B como saída

    while (1) // Loop infinito
    {
        sos_signal(); // Emitir o sinal SOS
        delay_ms(INTER_SOS_DELAY); // Esperar 1,5 segundos entre os sinais SOS
    }
}
