abstract class Person {
  String firstName;
  String lastName;
  Person(this.firstName, this.lastName);
  String get fullName;
}

class Student extends Person {
  String nickName;
  Student(
    String firstName,
    String lastName,
    this.nickName,
  ) : super(firstName, lastName);

  @override
  String get fullName => "$firstName $lastName";

  @override
  String toString() => "$fullName, aka $nickName";
}

class Student2 implements Person {
  String nickName;
  @override
  String firstName;
  @override
  String lastName;
  Student2(this.firstName, this.lastName, this.nickName);
  @override
  String get fullName => "$firstName $lastName";
  @override
  String toString() => "$fullName, also known as $nickName";
}

abstract interface class Person2 {
  String get fullName;
  String toString();
}

main() {
  Person student = Student("Clark", "Kent", "Kal-El");
  // Works because we are instantiating the subtype
  // Person p = new Person();
  // abstract classes cannot be instantiated
  print(student);
}
