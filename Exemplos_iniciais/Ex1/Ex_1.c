// Exemplo 1
void main()
{

  trisb = 0; // seta o reg para sa�da
  while (1)  // la�o infinito sem
  {
    portb = 1;      // seta saida 0 para 1
    delay_ms(1000); // atraso em milisec
    portb = 0;
    delay_ms(1000);
  }
}
