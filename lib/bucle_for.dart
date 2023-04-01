void main(List<String> args) {
  // print('this is the acumulate: ${acumulate()}');
  List items = ['brallan', 'mang0', 'heydy', 190, false];
  var listaVacia = [];
  // for (int i = 0; i < items.length; i++) {
  //   print(items[i]);
  // }
  // for (dynamic item in items) {
  //   print(item);
  // }
  // if (items.isNotEmpty) {
  //   print('la lista esta llena');
  // }
  // if (listaVacia.isEmpty) {
  //   print('tamos vacios');
  // }
  // print(items.sublist(0));
  // print(items.elementAt(2));
  // if (items.contains('brallan')) {
  //   print('contiene mi nombre');
  // }
  var newList = [];
  items.forEach((item) {
    if (item.runtimeType == String && item.contains('a')) {
      newList.add(item);
    }
  });
  print('items $items');
  List newList2 = items
      .where((item) => item.runtimeType == String && item.contains('a'))
      .toList();
  print('nueva lista $newList');
  print('nueva lista 2 $newList2');
}

double acumulate() {
  double acumulate = 0;
  for (int i = 0; i < 10; i += 1) {
    print(i);
    acumulate += i;
  }
  return acumulate;
}
