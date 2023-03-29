void main(List<String> args) {
  print(calculatePercentage(15, 200));
  print(' is_email: ${isEmail('brayAm05@gmaiL.com123   ')}');
}

double calculatePercentage(percentage, value) {
  return percentage * value / 100;
}

bool isEmail(String email) {
  email = email.trim();
  email = email.replaceAll('123', '');
  String emailUpper, emailLower;
  emailUpper = email.toUpperCase();
  emailLower = email.toLowerCase();
  print('Email minúscula: $emailLower, Email Mayúscula: $emailUpper');
  String correo;
  correo = 'manguito';
  print(email);
  print(correo);

  bool isEmail = email.contains('@') && email.endsWith('.com');
  String mensaje = isEmail ? 'Es correo msg' : 'No es correo msg';
  print(mensaje);
  print('longitud del correo ${email.length}');
  return isEmail;
}
