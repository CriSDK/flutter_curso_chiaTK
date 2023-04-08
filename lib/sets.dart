import 'package:tuple/tuple.dart';

void main(List<String> args) {
  Set<String> parents = {"mama", 'papa', 'abnuelo'};
  print(parents.elementAt(
      2)); // se accede por índice así para diferenciarse de las listas
  const t = Tuple2<String, int>('geeksforgeeks', 10);
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };
  print(image.runtimeType);
}
