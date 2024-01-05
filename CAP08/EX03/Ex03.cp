#line 1 "E:/microC/CAP08/EX03/Ex03.c"

int numero;


int decodificador(int digito) {
 switch(digito) {
 case 0: return 0b0111111;
 case 1: return 0b0000110;
 case 2: return 0b1011011;
 case 3: return 0b1001111;
 case 4: return 0b1100110;
 case 5: return 0b1101101;
 case 6: return 0b1111101;
 case 7: return 0b0000111;
 case 8: return 0b1111111;
 case 9: return 0b1101111;
 default: return 0;
 }
}


void main() {
 trisa = 0b11000111;
 trisd = 0;
 numero = 123;
 adcon0 = 0;
 adcon1 = 15;


 while(1) {

 int centenas = numero / 100;
 int dezenas = (numero / 10) % 10;
 int unidades = numero % 10;


 porta.f3 = 1;
 portd = decodificador(centenas);
 delay_ms(1);
 porta.f3 = 0;


 porta.f4 = 1;
 portd = decodificador(dezenas);
 delay_ms(1);
 porta.f4 = 0;


 porta.f5 = 1;
 portd = decodificador(unidades);
 delay_ms(1);
 porta.f5 = 0;
 }
}
