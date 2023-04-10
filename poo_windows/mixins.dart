import 'dart:ffi';

void main(List<String> args) {
  Home cheapHome = Home(lado: 10, ancho: 7, totalPisos: 2);
  print(cheapHome.calcularArea(10, 7));
  cheapHome.printea();
  cheapHome.saluda();
}

mixin Calculador {
  double calcularArea(double lado, double ancho) {
    return lado * ancho;
  }

  void printea();
  void saluda() {}
  String foo() {
    return 'sdfd';
  }
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

  // @override
  // void saluda() {
  //   // TODO: implement saluda
  //   super.saluda();
  //   print('arribeberchi');
  // }
}
