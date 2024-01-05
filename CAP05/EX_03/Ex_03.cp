#line 1 "E:/microC/CAP05/EX_03/Ex_03.c"
unsigned short int temp=0;

void main() {

 TRISB=0;

 while(1){
 temp=457/10;
 portb=temp%10;
 }
}
