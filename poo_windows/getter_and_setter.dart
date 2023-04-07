void main(List<String> args) {
  Persona personA =
      Persona(name: 'Manuel Vargas', age: 25, identifier: '14563');
  Persona personB =
      Persona(name: 'Juan Quiroga', age: 36, identifier: '654654');

  Persona personC = Persona(name: 'Teresita Lopez');
  // print(personC.identifier);
  // print(personC.age);
  // print(personA.identifier);
  print(Persona.getNumberOfPersons());
  // print(personA.getPrettyName);
  // personA.setName = '';
  // print(personA.getPrettyName);
  print(personC.getAge);
  personC.setAge = 93;
  print(personC.getAge);
  Persona.printea();
}

class Persona {
  String? name;
  int? age;
  String? identifier;
  static const ageChildhoodLimit = 18;
  static int numerOfPersons = 0;

  Persona({this.name, this.age, this.identifier}) {
    age ??= 0;
    print({"age": age});
    if (age! < 1) {
      print('La edad debe ser un entero mayor que 0.');
    }
    numerOfPersons += 1;
  }

  static getNumberOfPersons() {
    return numerOfPersons;
  }

  String? get getPrettyName {
    return '*****$name******';
  }

  set setName(String? nameAssing) {
    print('entra al set de name');
    if (nameAssing == '') {
      print('no debe ser string vacio');
    } else {
      print('recien asigna');
      name = nameAssing;
    }
  }

  int get getAge {
    return age ?? 0;
  }

  set setAge(int newAge) {
    print('entra al setter');
    age = newAge < 100 ? newAge : 0;
  }

  static void printea() {
    print('soy un método de clase');
  }
}
