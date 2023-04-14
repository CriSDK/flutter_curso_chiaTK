int getPuntoDeEquilibrio(List<int> array) {
  int totalSum = 0;
  int leftSum = 0;
  for (int i = 0; i < array.length; i++) {
    totalSum += array[i];
  }

  for (int i = 0; i < array.length; i++) {
    totalSum -= array[i];
    if (leftSum == totalSum) {
      return i;
    }
    leftSum += array[i];
  }
  return -1;
}

void main() {
  // List<int> array = [-7, 1, 5, 2, -4, 3, 0]; // tiene punto de equilibrio
  List<int> array = [2, 5, 6, 8, 13]; // tiene punto de equilibrio
  // List<int> array = [1, 2, 3]; // no tiene punto de equilibrio, retorna - 1
  int puntoDeEquilibrio = getPuntoDeEquilibrio(array);
  if (puntoDeEquilibrio != -1) {
    print(
        'El punto de equilibrio se encuentra en el índice $puntoDeEquilibrio');
  } else {
    print('No se encontró ningún punto de equilibrio en el arreglo');
  }
}
