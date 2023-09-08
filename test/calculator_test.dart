import 'package:flutter_test/flutter_test.dart';
import '../lib/Chapter12/calculator.dart';

void main() {
  late Calculator _calculator;
  setUp(() {
    _calculator = Calculator();
  });
  test(
    'calculator.sumTwoNumbers() sum both numbers',
    () => expect(_calculator.sumTwoNumbers(1, 2), 3),
  );

  group("calculator tests", () {
    test(
      'sumTwoNumbers() sum both numbers',
      () => expect(_calculator.sumTwoNumbers(1, 2), 3),
    );
    test(
      'sumTwoNumbers() sum negative number',
      () => expect(_calculator.sumTwoNumbers(1, -1), 1),
    );
  });
}
