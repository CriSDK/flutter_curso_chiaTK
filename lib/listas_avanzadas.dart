void main(List<String> args) {
  listasAvanzadas();
}

void printSomething(element) {
  print(element);
}

void listasAvanzadas() {
  List<dynamic> listaMix = ['foo', 'bar', 100, 253.31];
  var listadox = ['peru', 'max'];
  List<String> listado = ['peru', 'max'];

  // listaMix.forEach((element) {  --> manera de imprimir todo, pero no tan eficiente
  //   print(element);
  // });
  Iterable<dynamic> reverseList = listaMix.reversed;

  // listaMix.forEach(print);
  // reverseList.forEach(printSomething);
  // listado.reversed.forEach(print);
  listado.insertAll(2, ['Beto', 'Marcos', 'Rene', 'Teto', 'Geto']);
  // listado.insert(index, element);
  listado.remove('max');
  listado.removeAt(0);
  listado.removeWhere((element) => element.contains('eto') == false);

  // listado.forEach(print);
  // print(listado.asMap());
  // print(listado.join('**'));

  List listaAlumnos = [
    'Beto',
    'Marcos',
    'Rene',
    'Teto',
    'Geto',
    'Sandra',
    'Susana'
  ];
  print('lista original $listaAlumnos');
  List nuevaLista =
      listaAlumnos.where((element) => element.startsWith('S')).toList();
  List nuevaListabool =
      listaAlumnos.where((element) => element.contains('eto') == true).toList();
  print('lista nueva $nuevaLista');
  print('lista nueva bool $nuevaListabool');
}
