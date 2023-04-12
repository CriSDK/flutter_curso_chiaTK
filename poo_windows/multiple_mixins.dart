class A {
  String getMessage() => 'A';
}

class B {
  String getMessage() => 'B';
}

class P {
  String getMessage() => 'P';
}

class AB extends P with A, B {
  // @override
  // String getMessage() => 'HIJO';
}

class BA extends P with B, A {}

void main() {
  String result = '';

  AB ab = AB();
  result += ab.getMessage();
  // print(ab.runtimeType);

  BA ba = BA();
  result += ba.getMessage();
  print(ba.runtimeType);

  // print(result);

  // print(ab is P);
  // print(ab is A);
  // print(ab is B);

  // print(ba is P);
  // print(ba is A);
  // print(ba is B);
}
