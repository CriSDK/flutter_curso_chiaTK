void main(List<String> args) {
  StringBuffer buffer = stringBuffer();
  print('este es el buffer $buffer');
}

StringBuffer stringBuffer() {
  StringBuffer buffer = StringBuffer();
  buffer.write('mango feo ');
  buffer.write('camacho sano ');
  buffer.writeAll([
    'mamas gordas ',
    100,
    ' ',
    [1, 2, 3]
  ]);
  print('tamaño de la cadena ${buffer.length}');
  // buffer.clear();
  print(buffer.isEmpty);
  return buffer;
}
