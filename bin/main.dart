import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

import 'package:dart_application_1/calcula_porcentaje.dart' as percentage;

void main(List<String> arguments) {
  print(arguments);
  print('Hello world: ${dart_application_1.calculate()}!');
  dart_application_1.helloWorld();
  int edad = variables();
  print('edad en main $edad');
  print('el valor del porcentaje es ${percentage.calculatePercentage(20, 70)}');
}

int variables() {
  int edad = 10;
  print('esta es la edad en variiables $edad');
  return edad;
}
