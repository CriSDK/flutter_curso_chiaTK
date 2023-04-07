import 'dart:ffi';

void main(List<String> args) {
  Home cheapHome = Home(lado: 10, ancho: 7, totalPisos: 2);
  print(cheapHome.calcularArea(10, 7));
  cheapHome.printea();
}

mixin Calculador {
  double calcularArea(double lado, double ancho) {
    return lado * ancho;
  }

  void printea();
}

class Home with Calculador {
  double? lado;
  double? ancho;
  int? totalPisos;

  Home({this.lado, this.ancho, this.totalPisos});
  @override
  void printea() {
    print('ooñooooooo');
  }
}
