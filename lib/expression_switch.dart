void main(List<String> args) {
  calculateAge(150);
}

String calculateAge(int age) {
  switch (age) {
    case 150:
      print('es 150');
      continue foo;
    case 70:
      print('es 70');
      continue locked;
    locked:
    case 90:
      print('caso con label');
      break;
    foo:
    default:
      print('es default');
  }
  return 'hola muindo';
}
