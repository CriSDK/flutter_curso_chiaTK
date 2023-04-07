void main(List<String> args) {
  Worker workerA = Worker(name: 'Brallan', salary: 6500, year: 2014);
  print(workerA.calculateSalary());

  Programmer bca = Programmer(
      languages: ['python', 'dart'],
      level: 'Senior',
      pname: 'BcGa',
      psalary: 6500.0,
      pyear: 2010);
  print(bca.runtimeType);
  print(bca.getLanguages());
  print(bca.salary);
  print(bca.name);
  print(bca.getCorrectTaxes());
  print(bca.calculateSalary());
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
  // String? pname;
  // double? psalary;
  // int? pyear;

  Programmer(
      {this.languages = const [], this.level = 'Junior', pname, psalary, pyear})
      : super(name: pname, salary: psalary, year: pyear);

  String getLanguages() {
    return languages.join('-');
  }
}
