sbit Chave at RB0_bit;
sbit LED at RD0_bit;

void main() {

     trisb.f0=1;
     //trisb = 0;
     trisd = 0;
     adcon0 = 0;
     adcon1 = 15;

     while(1){
              LED = ~ Chave;

              }
}