// explicaremos el uso de los operadores:
// var a = conditional ? valorSiTrue : valorSiFalse -> Conditional expressions
//
//

void main(List<String> args) {
  // this is a conditional expression
  int age = 25;
  var mayorEdad = age > 18 ? 'es mayor de edad' : 'es menor de edad';
  print({'es mayor de edad': mayorEdad});
  // there are null-aware operators
  // operador de coalescencia nula o elvis operator
  // se evalúa si es nulo el valor de la izquierda (valor 1), si lo es devuelve valor 2, sino valor 1
  String? valor1;
  print(valor1.runtimeType);
  String valor2 = "Valor por defecto";

  String valorFinal = valor1 ?? valor2;
  print(valorFinal); // imprime "Valor por defecto"
  // otro ejemplo de ??
  dynamic mapMaybeNull;
  // mapMaybeNull = {'marzo': 3};
  Map mapNotNull = {'enero': 1, 'febrero': 2};
  var mapFinal = mapMaybeNull ?? mapNotNull;
  print({"mapfinal": mapFinal});
  // el operador ??= se conoce como el operador de asignación nula
  // si variable es null devuelve valor, sino lo es devuelve variable
  String valor = 'default value ??=';
  dynamic variable;
  variable = 'not null';

  // dynamic foo = variable ??= valor;

  // print({"this is foo": foo});

  // el operador ??= se utiliza para asignar un valor a una variable solo si la variable es nula
  // int? x = 1; // impime 1
  int? x;
  x ??= 2; // impime 2
  print(x); // Imprime "2", ya que x no tenía un valor asignado.
  asignarNull(250);
  dynamic nombre;
  nombre = 'bca';
  print(nombre ??
      'Sin nombre'); // el ?? no necesita ser asignado a una variable para ser usado
}

void asignarNull(int? input) {
  /// si input viene null asigna 100, sino asigna lo que venga en input
  input ??= 100;
  print({'this is the input': input});
}
