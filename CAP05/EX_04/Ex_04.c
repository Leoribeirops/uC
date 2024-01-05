const unsigned int d1=1000;
void main() {

     TRISB=0;
     
     while(1){
     portb=745/100;
     delay_ms(d1);
     portb=45/10;
     delay_ms(d1);
     portb=45%10;
     delay_ms(d1);
     }

}