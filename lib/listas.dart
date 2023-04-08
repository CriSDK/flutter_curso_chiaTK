import 'dart:collection';

void main(List<String> args) {
  // print(tipoListas());
  var arr = [1, 2, 3, 50];
  arr.forEach(print);
  var foo = {1, 2, 'a'};
  print(foo.elementAt(2));
  foo.addAll(['s', 545]);
  print(foo);
}

List<List<dynamic>> tipoListas() {
  List<dynamic> listaVacia = [];
  print(listaVacia);
  List<int> listaEntero = [1, 2, 3, 4, 100];
  List<dynamic> listaMix = [1, true, 100.5, 'foo'];
  List<String> listaStr = ['bar', 'mama'];
  listaMix[0] = 'lista mixta';
  listaStr.add('barco');
  listaStr.addAll(['cuy', 'conejo']);
  // print(listaMix[5]);
  List<List<dynamic>> foo = [listaEntero, listaMix, listaStr];
  print('tamaño de la lista');
  print(foo.length);
  return foo;
}
