// Exemplo 2
void main()
{
  //int delay_time=1500;
  trisb = 0; // seta o reg para sa�da
  while (1)  // la�o infinito sem
  {
    portb = 1;      // seta saida 0 para 1
    delay_ms(500); // atraso em milisec
    portb = 0;
    delay_ms(500);
    portb = 1;      // seta saida 0 para 1
    delay_ms(500); // atraso em milisec
    portb = 0;
    delay_ms(500);
    portb = 1;      // seta saida 0 para 1
    delay_ms(500); // atraso em milisec
    portb = 0;
    delay_ms(500);
    portb = 1;      // seta saida 0 para 1
    delay_ms(500); // atraso em milisec
    portb = 0;
    delay_ms(5500);
    // final do item a e in�cio do item b
    portb = 0;
    delay_ms(250);
    portb = 1;      // seta saida 0 para 1
    delay_ms(250); // atraso em milisec
    portb = 0;
    delay_ms(250);
    portb = 1;      // seta saida 0 para 1
    delay_ms(250); // atraso em milisec
    portb = 0;
    delay_ms(250);
    portb = 1;      // seta saida 0 para 1
    delay_ms(250); // atraso em milisec
    portb = 0;
    delay_ms(250);
    portb = 1;      // seta saida 0 para 1
    delay_ms(250); // atraso em milisec
    portb = 0;
    delay_ms(250);
    portb = 1;      // seta saida 0 para 1
    delay_ms(250); // atraso em milisec
    portb = 0;
    delay_ms(250);
    portb = 1;      // seta saida 0 para 1
    delay_ms(250); // atraso em milisec
    portb = 0;


  }
}