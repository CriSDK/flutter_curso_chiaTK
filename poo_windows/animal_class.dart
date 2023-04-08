void main(List<String> args) {
  Animal animal = Animal(name: 'puerco araña');
  print(animal.name);

  Bird paloma = Bird(wings: 2, birdName: 'gallinazo ');
  print(paloma.name);
  paloma.whatAmI();
}

class Animal {
  final String name;

  Animal({required this.name});
  // Animal.fromJson() : name = 'jerry';

  void whatAmI() => print('I\'m an animal');
  void getName() => print('My name is $name');
  void chase(Animal anotherAnimal) {
    print(anotherAnimal);
  }
}

class Bird extends Animal {
  int wings;
  String birdName;
  Bird({required this.wings, required this.birdName}) : super(name: birdName);
  @override
  void whatAmI() {
    // esta sobre escritura es el concepto de polimorfismo por sobre escritrura
    print('I am a duck and \n');
    super.whatAmI();
  }
}
