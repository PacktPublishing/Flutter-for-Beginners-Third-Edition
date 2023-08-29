sayHappyBirthdayPositional(String name, int age) {
  return "$name is ${age.toString()} years old";
}

sayHappyBirthdayOptional(String name, [int? age]) {
  return "$name is $age years old";
}

sayHappyBirthdayOptionalDefault(String name, [int age = 21]) {
  return "Happy birthday $name! You are $age years old.";
}

void main() {
  var hello = sayHappyBirthdayOptionalDefault('Robert');
  print(hello);
}
// Prints Happy birthday Robert! You are 21 years old.

sayHappyBirthdayNamedParameters(String name, {int age = 7}) {
  return "Happy birthday $name! You are $age years old.";
}

sayHappyBirthdayNamedRequired(String name, {required int age}) {
  return "Happy birthday $name! You are $age years old.";
}
