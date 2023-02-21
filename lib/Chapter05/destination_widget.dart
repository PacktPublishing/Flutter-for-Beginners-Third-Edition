import 'package:flutter/material.dart';

class DestinationWidget extends StatelessWidget {
  DestinationWidget({required this.destinationName});

  final String destinationName;

  @override
  Widget build(BuildContext context) {
    return Text(destinationName);
  }
}
