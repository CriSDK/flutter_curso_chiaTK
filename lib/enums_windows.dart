void main(List<String> args) {
  int astronauts = 0;
  String baz = 'dass';
  // baz.toUpperCase()
  var bar = 'hola mund';
  print(bar.toUpperCase());
  print(bar.runtimeType);

  // print(Planet.mercury);
  // print(Planet.mercury.runtimeType);
  // print(Planet.mercury.moons);
  // print(Planet.mercury.planetType);
  // print(Planet.neptune.hasRings);
  // if (astronauts == 0) {
  //   throw StateError('No astronauts.');
  // }
}

enum PlanetType { terrestrial, gas, ice }

enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 3, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  // ···
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  /// A constant generating constructor
  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  /// All instance variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhanced enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
