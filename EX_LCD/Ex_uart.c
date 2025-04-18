void main() {

uart1_init(9600);
uart1_write_text("CURSO DE ELETROTECNICA");
uart1_write_text(" ");
uart1_write_text("IFSUL");
uart1_write(10);
uart1_write_text("FUNDADO EM 1957");

}