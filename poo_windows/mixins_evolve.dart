abstract class Super {
  void method() {
    print("Super de la clase abastracta super");
  }
}

class MySuper implements Super {
  @override
  void method() {
    print("MySuper");
  }
}

class Bar {
  void method() {
    print("MySuper");
  }
}

mixin Mixin on Super {
  @override
  void method() {
    super.method();
    print("Sub de mixin");
  }
}

// class Client extends MySuper with Mixin {}
class Client extends MySuper with Mixin {
  @override
  void method() {
    print('soy el hijo');
    super.method();
  }
}

void main(List<String> args) {
  var foo = Client();
  foo.method();
}
