import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DestinationDescriptionWidget extends StatelessWidget {
  final String description;

  DestinationDescriptionWidget({required this.description});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      description,
      style: TextStyle(color: Colors.red),
    );
  }
}
