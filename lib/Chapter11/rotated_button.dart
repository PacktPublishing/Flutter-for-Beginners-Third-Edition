import 'package:flutter/material.dart';
import 'dart:math' as math;

class RotatedButton extends StatelessWidget {
  const RotatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rotated button example")),
      body: Center(
        child: Transform.rotate(
          angle: -45 * (math.pi / 180.0),
          child: ElevatedButton(
            child: Text("Rotated button"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
