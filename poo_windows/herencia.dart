void main(List<String> args) {
  Worker workerA = Worker(name: 'Brallan', salary: 6500, year: null);
  print(workerA.calculateSalary());

  Programmer bca = Programmer(languages: ['python', 'dart'], level: 'Senior');
  bca.salary = 7800;
  print(bca.runtimeType);
  print(bca.getLanguages());
  print(bca.calculateSalary());
  print(bca.getCorrectTaxes());
}

class Worker {
  String? name;
  double? salary;
  int? year;
  static final defaulttaxesValue = 10;
  static Map yearPerTaxes = {
    'before': defaulttaxesValue,
    'after': 50,
  };

  Worker({this.name, this.salary, this.year = 2018});

  int getCorrectTaxes() {
    year ??= 2018;
    if (year! < 2015) {
      return yearPerTaxes['before']!;
    }
    return yearPerTaxes['after']!;
  }

  double calculateSalary() {
    salary ??= 0;
    double realSalary = salary! - salary! * getCorrectTaxes() / 100;
    return realSalary;
  }
}

class Programmer extends Worker {
  List languages;
  String level;

  Programmer({this.languages = const [], this.level = 'Junior'});

  String getLanguages() {
    return languages.join('-');
  }
}
