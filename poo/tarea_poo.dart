void main(List<String> args) {
  Laptop laptopA = Laptop(marca: 'HP', name: 'laptop HP', type: "Tecnologia");
  Laptop laptopB =
      Laptop(marca: 'HUawei', name: 'laptop HUawei', type: "Tecnologia");
  House house = House(
      addres: 'lima',
      number: 1221,
      color: "red",
      numberOfFloors: 2,
      houseObject: [laptopA, laptopB]);
  house.printHouseObjectName(laptopB);
  print(house.countObjects);

  Laptop laptopC =
      Laptop(marca: 'SOny', name: 'laptop sony', type: "Tecnologia");
  house.addObjects = laptopC;
  print(house.countObjects);
  assert(house.countObjects == 3, 'EL setter no agregó, deberían haber 3.');
}

abstract class HouseObject {
  final String name;
  final String type;

  HouseObject({required this.name, required this.type});
}

class House {
  final String addres;
  final int number;
  final String color;
  final int numberOfFloors;
  final List<HouseObject> houseObject;

  const House(
      {required this.addres,
      required this.number,
      required this.color,
      required this.numberOfFloors,
      required this.houseObject});
  void printHouseObjectName(HouseObject object) {
    print(object.name);
  }

  int get countObjects => houseObject.length;
  set addObjects(HouseObject object) {
    houseObject.add(object);
  }
}

class Laptop extends HouseObject {
  final String marca;
  final String name;
  final String type;
  Laptop({required this.marca, required this.name, required this.type})
      : super(name: name, type: type);
}
