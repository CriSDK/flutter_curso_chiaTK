// 'on' keyword sirve para especificar el tipo de clase al que se puede aplicar el mixin
// también se puede interpretar como una dependencia, clase A on clase B, entonces
// clase A puede usar los métodos de B en su body

class Performer {
  void perform() => print('Performs!');
}

mixin Guitarrist on Performer {
  void playGuitar() => print('Play the guitar');
  void test() => super.perform();
  // void test() => perform();
}

mixin Drummer {
  void playDrums() => print('Play the drums');
  void perform() => playDrums();
}

class Musician extends Performer with Guitarrist, Drummer {}
// class Musician with Guitarrist, Drummer {}

void main(List<String> args) {
  Musician musician = Musician();
  musician.test();
}
