#line 1 "E:/microC/CAP04/Ex_14_2/MyProject.c"
void main() {
trisa=0;
trisb=0;
while(1)
{
 porta.f4 = 0;
 portb=0b0100;
 delay_ms(10);
 porta.f4=1;
 delay_ms (10);

 porta.f3 = 0;
 portb=0b0101;
 delay_ms(10);
 porta.f3=1;
 delay_ms (10);

 porta.f2 = 0;
 portb=0b0111;
 delay_ms(10);
 porta.f2=1;
 delay_ms (10);
 }

}
