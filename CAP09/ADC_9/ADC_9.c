int adc;
void main ()
{
adcon1 = 0;
trisa = 1;
trisd = 0;
portd = 0;
while(1)
{
adc = adc_read(0);
portd = adc >> 8;
delay_ms(5000);
portd = adc;
delay_ms(5000);
}
}