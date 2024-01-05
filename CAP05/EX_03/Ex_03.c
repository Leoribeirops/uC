unsigned short int temp=0;

void main() {

     TRISB=0;

     while(1){
     temp=457/10;
     portb=temp%10;
     }
}