void main(List<String> args) {
  var phoneBca = Telefono(marca: 'Huaweei', numero: '922343268');
  // print(phoneBca);
  // print(phoneBca.runtimeType);

  // print('this is the number ${phoneBca.getNumber()}');
  print(Telefono.countInstance);
  var phoneBca1 = Telefono(marca: 'Huaweei', numero: '922343268');
  print(Telefono.countInstance);
  var phoneBca2 =
      Telefono(marca: 'Huaweei', numero: '922343268', cargaRapida: false);
  phoneBca2.cargaRapida = true;
  print(Telefono.countInstance);
  print(phoneBca2.cargaRapida);
}

class Telefono {
  // Atributos de instancia

  String? marca;
  String? numero;
  bool cargaRapida;

  static int countInstance = 0; // así se define un Atributo de clase,
  // se usa la palabra static

  // Constructor (como el init en python),
  // posee el mismo nombre de la clase
  Telefono({this.marca, this.numero, this.cargaRapida = true}) {
    Telefono.countInstance += 1;
  }

  // Métodos
  StringBuffer describe(String finalDescription) {
    Map features = {
      'marca': marca,
      'numero': numero,
      'cargaRapida': cargaRapida,
    };
    StringBuffer description = StringBuffer();
    description
        .writeAll(['Phone features are \n', features, '\n', finalDescription]);
    print(description);
    return description;
  }

  String? getNumber() {
    return numero;
  }
}

class MiClase {
  static String atributoDeClase = "Este es un atributo de clase";
}
