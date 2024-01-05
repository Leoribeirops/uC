#line 1 "E:/microC/CAP05/Ex_08/EX_08.c"
sbit LED at RD0_bit;
sbit IN_A at RB0_bit;
sbit IN_B at RB1_bit;

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

 LED = (IN_A & IN_B);

 }
}
