import 'mixins_evolve.dart';

class Animal {
  void mover() {
    print('Animal se mueve');
  }
}

class Mamifero extends Animal {
  void mover() {
    print('Mamífero se mueve');
  }
}

mixin Ave {
  void mover() {
    print('Ave se mueve');
  }
}

class Delfin extends Mamifero with Ave {
  // Clase que utiliza mixins Mamifero y Ave
}

void main() {
  final delfin = Delfin();
  delfin.mover(); // Imprime "Mamífero se mueve"
}
