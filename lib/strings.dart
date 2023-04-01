void main(List<String> args) {
  String correo = 'brayam05@gmail.com; bca007@hotmail.com; juanska@fb.com';

  List parsedCorreos = correo.split(';');
  print(parsedCorreos);
  print(parsedCorreos.runtimeType);
  parsedCorreos.add(7.toString());
  print(parsedCorreos);
  List foo = ['foo', 'baz'];
  print(foo.runtimeType);
  foo.add(7);
  print(foo);
}
