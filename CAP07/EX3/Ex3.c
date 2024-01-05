const unsigned d1=1000;
void main() {

     trisb=1;
     trisd=0;
     adcon0=0;
     adcon1=15;

     while(1){

         if (portb.f0 == 0) {
             portd.f0 = 1;
             delay_ms(d1);
             portd.f0 = 0;
         }

         // A lógica seguinte é executada independentemente do estado da chave
         portd.f1 = 1;
         delay_ms(d1);
         portd.f1 = 0;
         delay_ms(d1);

         portd.f2 = 1;
         delay_ms(d1);
         portd.f2 = 0;
         delay_ms(d1);

         portd.f3 = 1;
         delay_ms(d1);
         portd.f3 = 0;
         delay_ms(d1);
    }
}
