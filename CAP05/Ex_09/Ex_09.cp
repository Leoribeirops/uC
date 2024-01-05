#line 1 "E:/microC/CAP05/Ex_09/Ex_09.c"
void main() {

 trisb.f0=1;
 trisb.f1=1;

 trisd=0;

 adcon1 = 15;


 while(1){
 portd.f1=0;
 portd.f2=0;
 portd.f3=0;
 portd.f4=0;
 portd.f5=0;
 portd.f6=0;
 portd.f7=0;

 if(portb.f0 ^ portb.f1 == 0)
 portd.f0=1;
 else
 portd.f0=0;

 }
}
