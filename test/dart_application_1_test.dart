import 'package:dart_application_1/dart_application_1.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    print('entramos al test');
    expect(calculate(), 42);
  });
}
