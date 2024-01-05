#line 1 "E:/microC/CAP09/EX_16/Ex_16.c"
void main() {
 int adcValue;
 const int thresholdOn = (4 * 1023) / 5;
 const int thresholdOff = (2 * 1023) / 5;

 trisa = 0xFF;
 trisc.f2 = 0;
 portc.f2 = 0;

 adcon1 = 0x80;
 adc_init();

 while(1) {
 adcValue = adc_read(0);

 if (adcValue >= thresholdOn) {
 portc.f2 = 1;
 } else if (adcValue < thresholdOff) {
 portc.f2 = 0;
 }

 delay_ms(100);
 }
}
