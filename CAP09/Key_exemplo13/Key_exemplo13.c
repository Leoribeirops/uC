int tecla;
void main() {
trisb = 0;
trisd = 0b1111;
adcon1 = 7;
lcd_init ();
lcd_cmd(_lcd_cursor_off);
lcd_out(1,1,"APERTE UMA TECLA");
lcd_out(2,1,"A TECLA EH: ");

while(1)
{
tecla = 99;
while (tecla == 99)
tecla = teclado ();
lcd_chr(2,13,tecla + 48);
}



}

