#line 1 "E:/microC/CAP05/Ex_11/Ex_11.c"
sbit LED at RD0_bit;
sbit IN_A at RB0_bit;
sbit IN_B at RB1_bit;
sbit IN_C at RB2_bit;
sbit IN_D at RB3_bit;


void main() {


 TRISB=0;

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



 if ( portb == 15)
 {
 LED=1;
 }
 else
 {
 LED=0;
 }
 }
}
