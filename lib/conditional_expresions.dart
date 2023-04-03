void main(List<String> args) {
  // print(isPar(8.6));
  print(ageRange(17));
}

bool isPar(double number) {
  if (number % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

String ageRange(int age) {
  String message;
  if (age > 18 && age < 30) {
    message = 'Es mayor de edad y joven';
  } else if (age > 30) {
    message = 'Es mayor de edad ya adulto';
  } else {
    message = 'Es menor de edad';
  }
  return message;
}
