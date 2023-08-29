import 'package:flutter/foundation.dart';

enum PersonType { student, employee }

class Person {
  PersonType type;

  String? firstName;
  String? lastName;

  Person(this.type);

  String get fullName => "$firstName $lastName";
  set fullName(String fullName) {
    var parts = fullName.split(" ");
    this.firstName = parts.first;
    this.lastName = parts.last;
  }
}

main() {
  print(PersonType.values);
  Person somePerson = Person(PersonType.student);
  somePerson.type = PersonType.employee;
  print(somePerson.type);
  print(somePerson.type.index);
  print(describeEnum(PersonType.employee));

  switch (somePerson.type) {
    case PersonType.student:
      print('Learning time!');
      break;
    case PersonType.employee:
      print('Meeting time!');
      break;
  }
}
