void main(List<String> args) {
  Cat mango = Cat(lifeNumbers: 9, tipo: 'felino', edad: 1);
  print(mango.type);
  mango.type = 'gatuno';
  print(mango.type);
  print(mango.makeSound());
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

class Cat extends Animal {
  int lifeNumbers;

  Cat({this.lifeNumbers = 9, tipo, edad}) : super(tipo: tipo, age: edad);

  @override
  String makeSound() {
    return 'miau';
  }
}
