double calculate() {
  return 6 * 41.5;
}

void helloWorld() {
  print('hola mundo bca');
}

void main(List<String> args) {
  /**
   * esto se usar para documentar código
  */

  print('dentro de la función principal');
  variables();
}

variables() {
  // datos primitivos
  int edad = 10;
  double pago = 124.2;
  String cadena = 'mango';
  bool encendido = true;
  print([edad, pago, cadena, encendido]);
  // datos dinámicos
  var something;
  dynamic
      varDinamica; // a esta variable se le puede cambiar el tipo de dato en run time
  something = 3;
  something = 'das';
  something = pago;
  varDinamica = false;
  varDinamica = something;
  print(something);
  print(['esta es la dinamica', varDinamica]);
}
