#line 1 "D:/micropicC/EX_LCD/Ex_1_2/Ex_uart.c"
void main() {

uart1_init(9600);
uart1_write_text("CURSO DE ELETROTECNICA");
uart1_write_text(" ");
uart1_write_text("IFSUL");
uart1_write(10);
uart1_write_text("FUNDADO EM 1957");

}
