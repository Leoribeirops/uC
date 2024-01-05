const unsigned int delay = 500; // atribui constante
//sbit LED at RB0_bit;            // apelido do pino
//sbit botao at RB1_bit;

//int contador; // variavel inteira

void main()
{

     TRISB = 0;
     LATB = 0;
     //trisb.f1 = 1;
     //portd=0;
     //adcon0 = 0;        // entradas e saídas digitais
     //adcon1 = 15;
     //contador=0;       // atribui o valor zero ao contador
     while (1)
     {

          LATB = 0;
          delay_ms(delay);
          LATB = 1;
          delay_ms(delay);
          LATB = 2;
          delay_ms(delay);
         // if(botao == 1) contador++;
         // portd=contador;
          
     }
}