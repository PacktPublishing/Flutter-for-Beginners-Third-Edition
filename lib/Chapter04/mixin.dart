abstract class Person {
  String firstName;
  String lastName;
  Person(this.firstName, this.lastName);
}

mixin class ProgrammingSkills {
  coding() {
    print("writing code...");
  }
}

mixin class ManagementSkills {
  manage() {
    print("managing project...");
  }
}

class SeniorDeveloper extends Person with ProgrammingSkills, ManagementSkills {
  SeniorDeveloper(String firstName, String lastName) : super(firstName, lastName);
}

class JuniorDeveloper extends Person with ProgrammingSkills {
  JuniorDeveloper(String firstName, String lastName) : super(firstName, lastName);
}
