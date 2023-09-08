import 'package:flutter/material.dart';

class TranslatedButton extends StatelessWidget {
  const TranslatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Translated button example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Original button"),
              onPressed: () {},
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Transform.translate(
              offset: Offset(30, 30),
              child: ElevatedButton(
                child: Text("translated button"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
