#line 1 "E:/microC/CAP07/EX1/Ex1.c"
void main() {

 trisb=1;
 trisd=0;
 adcon0=0;
 adcon1=15;

 while(1){

 if (portb.f0 == 0){
 portd.f0 = 1;
 }
 else {
 portd.f0 = 0;
 }
 }
}
