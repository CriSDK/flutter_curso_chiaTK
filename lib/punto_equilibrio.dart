void main(List<String> args) {
  List<int> array = [2, 5, 6, 8, 13];
  // List<int> array = [1, 2, 3];
  print({"este es el primer punto de equilibrio encontrado"});
  print(equilibrio(array));
}

List<int> equilibrio(List<int> array) {
  /// función que encuentra todos los puntos de equilibrio (índices) de un arreglo
  /// punto de equilibrio: suma de la derecha sea la suma de la izquierda
  List<int> puntosEquilibrio = [];
  List<int> defaultIndex = [-1];
  int acumulador = 0;
  int reverseAcumulador = 0;
  int tamanio = array.length;
  int auxTamanio = tamanio - 1;
  for (int i = 0; i < tamanio; i++) {
    acumulador += array[i];
    reverseAcumulador = 0;
    for (int j = auxTamanio; j >= 0; j--) {
      reverseAcumulador += array[j];
      if (acumulador == reverseAcumulador && i != j) {
        puntosEquilibrio.add(i + 1);
        // lookupIndex = 1;
      }
    }
  }
  return puntosEquilibrio.isNotEmpty ? puntosEquilibrio : defaultIndex;
}
