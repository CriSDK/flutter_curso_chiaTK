import 'dart:collection';

void main(List<String> args) {
  print(tipoListas());
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
