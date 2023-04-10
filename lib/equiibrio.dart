int getPuntoDeEquilibrio(List<int> array) {
  int totalSum = 0; // suma total de todos los elementos
  int leftSum =
      0; // suma de los elementos a la izquierda del punto de equilibrio

  // Calcular la suma total de todos los elementos en el arreglo
  for (int i = 0; i < array.length; i++) {
    totalSum += array[i];
  }

  // Recorrer el arreglo y buscar el punto de equilibrio
  for (int i = 0; i < array.length; i++) {
    totalSum -= array[i]; // restar el elemento actual de la suma total
    if (leftSum == totalSum) {
      // si la suma de los elementos a la izquierda es igual a la suma de los elementos a la derecha
      return i; // devolver el índice del punto de equilibrio
    }
    leftSum += array[
        i]; // sumar el elemento actual a la suma de los elementos a la izquierda
  }

  // Si no se encuentra ningún punto de equilibrio, devolver -1
  return -1;
}

void main() {
  List<int> array = [1, 2, 3];
  int puntoDeEquilibrio = getPuntoDeEquilibrio(array);
  if (puntoDeEquilibrio != -1) {
    print(
        'El punto de equilibrio se encuentra en el índice $puntoDeEquilibrio');
  } else {
    print('No se encontró ningún punto de equilibrio en el arreglo');
  }
}
