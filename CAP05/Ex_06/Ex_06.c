void main() {

     int a;
     int b;
     a=36;
     b=10;
     trisb.f0=1;
     trisd.f0=0;
     //trisb = 0;
     trisd = 0;
     portb=0;
     adcon0 = 0;
     adcon1 = 15;

     while(1){
              if(portb.f0 == 0)
                          portd.f0=0;
              else
              portd.f0=1;

              }
}