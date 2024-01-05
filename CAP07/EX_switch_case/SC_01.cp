#line 1 "E:/microC/CAP07/EX_switch_case/SC_01.c"
unsigned char buttonPressed;


void main() {
 trisb = 0b1111;
 trisd = 0;
 adcon0 = 0;
 adcon1 = 15;
 portd = 0;

 while (1) {



 buttonPressed = portb;


 switch (buttonPressed) {
 case 0b1110:
 portd = 0b0001;


 break;
 case 0b1101:
 portd = 0b0010;
 break;
 case 0b1011:
 portd = 0b0100;
 break;
 case 0b0111:
 portd = 0b1000;
 break;
 default:

 portd=0;
 break;
 }

 }
}
