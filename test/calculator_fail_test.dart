import 'package:flutter_test/flutter_test.dart';
import '../lib/Chapter12/calculator_fail.dart';

void main() {
  late Calculator _calculator;
  setUp(() {
    _calculator = Calculator();
  });
  test(
    'calculator.sumTwoNumbers() sum both numbers',
    () => expect(_calculator.sumTwoNumbers(1, 2), 3),
  );
}
