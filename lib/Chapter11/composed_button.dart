import 'package:flutter/material.dart';
import 'dart:math' as math;

class ComposedButton extends StatelessWidget {
  const ComposedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Composed button example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              child: Text("Original button"),
              onPressed: () {},
            ),
            Transform.translate(
              offset: Offset(70, 200),
              child: Transform.rotate(
                angle: -45 * (math.pi / 180.0),
                child: Transform.scale(
                  scale: 2.0,
                  child: ElevatedButton(
                    child: Text("multiple transformations"),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
