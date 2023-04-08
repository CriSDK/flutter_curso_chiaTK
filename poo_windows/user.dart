void main(List<String> args) {
  Admin admin = Admin(uid: '73641541');
  Regular regular = Regular(uid: '1002003');
  print(admin.runtimeType);
  print(regular.runtimeType);

  print(admin.uid);
  print(admin.privilege);
  // print(regular.uid);
  // print(regular.privilege);

  print(getPrivilege(regular));
}

abstract class User {
  String? uid;
  String? privilege;
}

class Admin implements User {
  @override
  String? uid;
  @override
  String? privilege = 'ALTO';

  Admin({this.uid});

  void printea() {
    print('es un admin');
  }
}

class Regular implements User {
  @override
  String? uid;
  @override
  String? privilege = 'BAJO';

  Regular({this.uid});

  void printea() {
    print('es un USUUARIO REGULAR');
  }
}

// este es el punto fuerte de la interfaz, este método espera un parámetro del tipo User
// no se preocupa si es regular o admin,
String getPrivilege(User user) {
  user.privilege ??= 'default user';
  return user.privilege!;
}
