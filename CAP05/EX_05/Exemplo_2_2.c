const unsigned int d1=500;

sbit IN_A at Rb0_bit;
sbit IN_B at Rb1_bit;
sbit OUT_S at Rc0_bit;

void main() {
     int contador;
     int a;
     int b;
     contador = 0;
     a=36;
     b=10;
     //trisb = 0;
     trisb.f0=1;
     trisb.f1=1;
     trisc.f0=0;
     trisd = 0;
     adcon0 = 0;
     adcon1 = 15;
     
     while(1){
              //portb=a%b;
              //portd=a/b;
              portd=contador;
              contador++;
              delay_ms(d1);
              
              OUT_S = ~IN_A | ~IN_B;
     

              }
}