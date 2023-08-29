class Person {
  String firstName;
  String lastName;
  Person(this.firstName, this.lastName);
  String getFullName() => "$firstName $lastName";
}

class Student extends Person {
  String nickName;
  Student(
    String firstName,
    String lastName,
    this.nickName,
  ) : super(firstName, lastName);

  @override
  String toString() => "${getFullName()}, aka $nickName";
}

main() {
  Student student = Student("Clark", "Kent", "Kal-El");
  print(student);
}
