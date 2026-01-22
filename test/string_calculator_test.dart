import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    expect(StringCalculator().add(''), 0);
  });

  test('single number returns itself', () {
    expect(StringCalculator().add('5'), 5);
  });

  test('two numbers separated by comma', () {
    expect(StringCalculator().add('1,2'), 3);
  });

  test('multiple numbers supported', () {
    expect(StringCalculator().add('1,2,3,4'), 10);
  });

  test('new line as delimiter', () {
    expect(StringCalculator().add('1\n2,3'), 6);
  });

  test('custom delimiter support', () {
    expect(StringCalculator().add('//;\n1;2'), 3);
  });

}
