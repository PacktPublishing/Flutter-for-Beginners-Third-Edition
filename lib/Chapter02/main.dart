void main() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
}

void variables() {
  var inferredString = "Hello"; // Type inferred as String
  String explicitString = "World"; // Type is explicit
}

void nullSafety() {
  // Old null unsafe code:
  //int newNumber; // newNumber is initialized to null
  //print(newNumber); // Prints null
  //newNumber = 42; // Update the value of newNumber
  //print(newNumber); // Prints 42

  int? newNumber; // newNumber type allows nullability
  print(newNumber); // Prints null
  newNumber = 42; // Update the value of newNumber
  print(newNumber); // Prints 42
}

void lateVariables() {
  late int newNumber; // newNumber type allows nullability
  // Do some initialisation stuff
  newNumber = 42; // Update the value of newNumber
  print(newNumber); // Prints 42

  int? goals;

  // Invalid print statement due to nullability
  //print(goals + 2);

  // Corrected by testing for null
  if (goals != null) {
    print(goals + 2);
  }
}

void lists() {
  List dynamicList = []; // Create an empty List
  print(dynamicList.length); // Prints 0
  dynamicList.add("Hello");
  print(dynamicList[0]); // Prints “World”
  print(dynamicList.length); // Prints 1
  List preFilledDynamicList = [1, 2, 3];
  print(preFilledDynamicList[0]); // Prints 1
  print(preFilledDynamicList.length); // Prints 3

  List fixedList = List.filled(3, "World");
  fixedList.add("Hello"); // Error
  fixedList[0] = "Hello";
  print(fixedList[0]); // Prints "“Hello"”;
  print(fixedList[1]); // Prints "“World"”;
}

void maps() {
  Map nameAgeMap = {}; // Create an empty Map
  nameAgeMap["Alice"] = 23;
  print(nameAgeMap["Alice"]); // Prints 23
  Map preFilledMap = {"Sarah": 1, "Alex": 2};
  print(preFilledMap["Sarah"]); // Prints 1
  print(preFilledMap.length); // Prints 2
  preFilledMap.remove("Alex");
  print(preFilledMap.length); // Prints 1
}

void strings() {
  String singleQuoteString = 'Here is a single quote string';
  String doubleQuoteString = "Here is a double quote string";

  String multiLineString = '''Here is a multi-line single
  quote string''';

  String str1 = 'Here is a ';
  String str2 = str1 + 'concatenated string';
  print(str2); // Prints Here is a concatenated string
  print(str2[0]); // Prints the single character 'H'

  String someString = "Happy string";
  print("The string is: $someString");
  // prints The string is: Happy string
  // No curly brackets were required
  print("The string length is: ${someString.length}");
  // prints The string length is: 16
  // Curly brackets were required
  print("The string length is: $someString.length");
  // prints The string length is: Happy string.length
  // Omitting the curly brackets meant only the variable was evaluated, not the method on the variable.
}

void finalAndConst() {
  final String defaultLocation = "Staithes";
  const int defaultStars = 3;
}

void dynamicAndAs() {
  Map<String, dynamic> json = {};
  final id = json['id'] as String;
}

void operators() {
  int totalGoals = 2;
  totalGoals = totalGoals + 3; // Without shortcut
  totalGoals += 3; // With shortcut
  print("The goal total is: $totalGoals"); // Prints 8
}

void ifElse() {
  String winners = "Middlesbrough";
  if (winners == "Everton") {
    print("Everton win");
  } else if (winners == "Middlesbrough") {
    print("Middlesbrough win");
  } else {
    print("Draw");
  }
  // Prints Middlesbrough win
  if (winners == "Middlesbrough") print("Middlesbrough win again");
  // Prints Middlesbrough win again

  String test = "true";
  // Invalid test - truthy is not supported by Dart
  // if (test) {
  //  print("Truthy");
  //}
}

void whileLoops() {
  int counter = 0;
  while (counter < 2) {
    print(counter);
    counter++;
  }
  // Prints 0, 1
  do {
    print(counter);
    counter++;
  } while (counter < 2);
  // Prints 2
}

void forLoop() {
  for (int index = 0; index < 2; index++) {
    print(index);
  }
  // Prints 0, 1
}

void breakContinue() {
  int counter = 0;
  while (counter < 10) {
    counter++;
    if (counter == 4) {
      break;
    } else if (counter == 2) {
      continue;
    }
    print(counter);
  }
  // Prints 1, 3
}

void switchStatement() {
  String location = "Whitby";
  switch (location) {
    case "Whitby":
      // Show Whitby information
      break;
    case "Saltburn":
      // Show Saltburn information
      break;
    default:
    // Show error message, no location information found
  }
}
