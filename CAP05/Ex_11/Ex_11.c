sbit LED at RD0_bit;
sbit IN_A at RB0_bit;
sbit IN_B at RB1_bit;
sbit IN_C at RB2_bit;
sbit IN_D at RB3_bit;


void main() {

     //trisb=0b00001111;
     TRISB=0;
     //trisd.f0=0;
     trisd=0;
     adcon0 = 0;
     adcon1 = 15;


     while(1){
              portd.f1=0;
              portd.f2=0;
              portd.f3=0;
              portd.f4=0;
              portd.f5=0;
              portd.f6=0;
              portd.f7=0;
              PORTB=15;

              //LED = ~(IN_A | IN_B | IN_C | IN_D);
              
              if ( portb ==  15)
                 {
                 LED=1;
                 }
              else
                  {
                  LED=0;
                   }
              }
}