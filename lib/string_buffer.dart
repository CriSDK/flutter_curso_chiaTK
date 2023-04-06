void main(List<String> args) {
  StringBuffer buffer = stringBuffer();
  print('este es el buffer $buffer');
}

StringBuffer stringBuffer() {
  StringBuffer buffer = StringBuffer();
  buffer.write('Agregamos texto con el método write');
  buffer.write('Agregamos texto con el método write ');
  buffer.writeAll([
    'Incluso podemos agregar listas con diferentes tipos y datos y hará el cast por nosotros ',
    100,
    ' ',
    [1, 2, 3]
  ]);
  print('tamaño de la cadena ${buffer.length}');
  // buffer.clear();
  print(buffer.isEmpty);
  return buffer;
}
