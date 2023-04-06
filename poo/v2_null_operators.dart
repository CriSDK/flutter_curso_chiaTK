void main(List<String> args) {
  // print(concatenate());

  diferenciasNullOperator(null);
  diferenciasNullOperatorB(null);
}

List concatenate() {
  //the operator ...? must prevent to add listB (null value)
  // to a finalList
  List listA = [1, 2, 3];
  List? listB;
  List finalList = ['a', 'b', ...listA, ...?listB];
  return finalList;
}

void diferenciasNullOperator(String? input) {
  /// trataré de mostrar la diferencia o igualdad entre ?? y ??=

  input ??= 'default msg';
  print(input);
}

void diferenciasNullOperatorB(String? input) {
  /// trataré de mostrar la diferencia o igualdad entre ?? y ??=

  String inputB = input ?? 'default msg';
  print(inputB);
}
