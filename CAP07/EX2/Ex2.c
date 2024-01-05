void main() {

     trisb=1;
     trisd=0;
     adcon0=0;
     adcon1=15;

     while(1){

     if (portb.f0 == 1)
         portd.f0 = 0;
     else
         portd.f0 = 1;
    }
}