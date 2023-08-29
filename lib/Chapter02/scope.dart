globalFunction() {
  print("Top-level globalFunction");
}

simpleFunction() {
  print("SimpleFunction");
  globalFunction() {
    print("Nested globalFunction");
  }

  globalFunction();
}

main() {
  simpleFunction();
  globalFunction();
}
