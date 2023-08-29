import 'dart:io';

void longRunningOperation() {
  for (int i = 0; i < 5; i++) {
    sleep(Duration(seconds: 1));
    print("Index: $i");
  }
}

Future<void> longRunningOperation2() async {
  for (int i = 0; i < 5; i++) {
    sleep(Duration(seconds: 1));
    print("Index: $i");
  }
}

Future<void> longRunningOperation3() async {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    print("Index: $i");
  }
}

main() {
  print("Start of long running operation");
  longRunningOperation();
  print("Continuing main body");
  for (int i = 10; i < 15; i++) {
    sleep(Duration(seconds: 1));
    print("Index from main: $i");
  }
  print("End of main");
}

main2() async {
  print("Start of long running operation");
  longRunningOperation3();
  print("Continuing main body");
  for (int i = 10; i < 15; i++) {
    await Future.delayed(Duration(seconds: 1));
    print("Index from main: $i");
  }
  print("End of main");
}
