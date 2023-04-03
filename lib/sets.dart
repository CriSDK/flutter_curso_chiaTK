import 'package:tuple/tuple.dart';

void main(List<String> args) {
  Set<String> parents = {"mama", 'papa', 'abnuelo'};
  // print(parents.elementAt(2));
  // const t = Tuple2<String, int>('geeksforgeeks', 10);
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg',
    'null_value': null,
  };
  // print(image.runtimeType);
  // print({'None': image['foo']});
  // print(image['foo'].runtimeType);
  print(getDefaultValue(image, 'null_value', true));
  print({"dummySum": dummySum(1, 7)});
}

dynamic getDefaultValue(Map array, String key, dynamic defaultValue) {
  var value = array[key];
  if (value == null && !array.containsKey(key)) {
    return defaultValue;
  }
  return value;
}

dynamic dummySum(a, b) => a + b;
