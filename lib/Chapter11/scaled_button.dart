import 'package:flutter/material.dart';

class ScaledButton extends StatelessWidget {
  const ScaledButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scaled button example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Original button"),
              onPressed: () {},
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Transform.scale(
              scale: 2.0,
              child: ElevatedButton(
                child: Text("Scaled button"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
