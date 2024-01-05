const int d1=1000;
sbit LED at RD0_bit;

void main() {

     trisb.f0=1;
     trisb.f1=1;
     //trisd.f0=0;
     trisd=0;
     //adcon0 = 0;
     adcon1 = 15;


     while(1){
              portd.f1=0;
              portd.f2=0;
              portd.f3=0;
              portd.f4=0;
              portd.f5=0;
              portd.f6=0;
              portd.f7=0;

              LED = 1;
              delay_ms(d1);
              LED = ~LED;
              delay_ms(d1);

              }
}