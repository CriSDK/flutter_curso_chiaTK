void main(List<String> args) {
  double suma = sumaNombrada(a: 1221, b: 2112);
  print(suma);
  double numero = addNumber(a: 80, b: 20);
  print(numero);
}

double sumaNombrada({required double a, required double b}) {
  return a + b;
}

// arrow function

double addNumber({required double a, required double b}) =>
    (a + b) == 100 ? a + b : 70;

double addNumber2({required double a, required double b}) => a + b;
