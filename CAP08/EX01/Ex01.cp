#line 1 "E:/microC/CAP08/EX01/Ex01.c"
void pisca_led (int led1, int led2, int num_piscadas)
{
 int i;
 for (i = 0; i < num_piscadas; i++)
 {
 portd = (1 << led1) | (1 << led2);
 delay_ms(500);
 portd = 0;
 delay_ms(500);
 }
}

void main()
{
 trisd = 0;
 portd = 0;
 while(1)
 {
 pisca_led(0, 3, 20);
 delay_ms(5000);
 pisca_led(1, 2, 30);
 delay_ms(5000);
 }
}
