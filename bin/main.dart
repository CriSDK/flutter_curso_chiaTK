import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print(arguments);
  print('Hello world: ${dart_application_1.calculate()}!');
  dart_application_1.helloWorld();
  int edad = variables();
  print('edad en main $edad');
}

int variables() {
  int edad = 10;
  print('esta es la edad en variiables $edad');
  return edad;
}
