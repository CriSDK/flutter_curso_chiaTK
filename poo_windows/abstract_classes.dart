void main(List<String> args) {
  Cat mango = Cat(lifeNumbers: 9, tipo: 'felino', edad: 1);
  print(mango.type);
  mango.type = 'gatuno';
  print(mango.type);
  print(mango.makeSound());
  print(mango.queComemos());
  print(mango.quienNosDepreda());
  print({"type": mango.runtimeType});
}

abstract class Animal {
  String? tipo;
  int? age;
  static const defaulType = 'Mamífero';
  Animal({this.tipo, this.age});
  String makeSound() {
    return 'default soound';
  }

  String get type {
    return tipo!;
  }

  set type(String anotherType) {
    print('entra al setter');
    if (anotherType == '') {
      print('por defecto será $defaulType');
    }
    anotherType = anotherType == '' ? defaulType : anotherType;
    tipo = anotherType;
  }
}

abstract class InterfazAnimal {
  String uid = '10';
  String queComemos();
  String quienNosDepreda();
  String quienNosDepred2a() {
    return 'tibutr';
  }
}

abstract class InterfazAnimal2 {
  String bar();
}

class Cat extends Animal implements InterfazAnimal, InterfazAnimal2 {
  @override
  String quienNosDepred2a() {
    return 'tibutaasddasr';
  }

  @override
  String uid = '10';
  int lifeNumbers;

  Cat({this.lifeNumbers = 9, tipo, edad}) : super(tipo: tipo, age: edad);

  @override
  String makeSound() {
    return 'miau';
  }

  @override
  String queComemos() {
    return 'como ratones';
  }

  @override
  String quienNosDepreda() {
    return 'los zorros de la molina';
  }

  @override
  String bar() {
    return 'somos la interfaz animal 2';
  }
}
