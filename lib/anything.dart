void main(List<String> args) {
  String petName = 'Valerio';

  print(petName);
  petName = 'Mango Ciruelo';
  print(petName);
  print(4.00000 == 4.0);
  print(6 != 6);
  // && and
  // || or
  // ! negación
  bool foo = true;
  foo = !foo;
  print('this is foo $foo');

  var bar = {
    ['a']: 1
  };
  print(bar.values);
  print(bar.keys);
  print(bar.entries);
}
