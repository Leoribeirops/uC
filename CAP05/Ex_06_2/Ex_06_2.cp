#line 1 "D:/micropicC/Cap_05_06/Exerc/Ex_06_2/Ex_06_2.c"
void main() {

 int a;
 int b;
 a=36;
 b=10;
 trisb.f0=1;
 trisd.f0=0;

 trisd = 0;
 portb=0;
 adcon0 = 0;
 adcon1 = 15;

 while(1){
 if(portb.f0 ^ portb.f1 == 0)
 portd.f0=0;
 else
 portd.f0=1;

 }
}
