main() {
  List placeNames = ["Middlesbrough", "New York"];
  placeNames.add(1);
  print("Place names: $placeNames");
}
// prints Place names: [Middlesbrough, New York, 1]

main2() {
  var placeNames = <String>["Middlesbrough", "New York"];
  var landmarks = <String, String>{
    "Middlesbrough": "Transporter bridge",
    "New York": "Statue of Liberty",
  };
}

main3() {
  var landmarks = <String, String?>{
    "Middlesbrough": "Transporter bridge",
    "New York": "Statue of Liberty",
    "Barnmouth": null,
  };
}
