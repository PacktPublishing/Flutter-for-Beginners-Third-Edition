import 'package:flutter/material.dart';
import 'package:hello_world/Chapter07/destination_list_tile.dart';
import 'package:hello_world/Chapter07/destination_widget_container.dart';
import 'package:hello_world/Chapter07/destination_widget_textstyle.dart';
import 'package:hello_world/Chapter07/sliver_page.dart';
import 'package:hello_world/Chapter11/animated_builder.dart';
import 'package:hello_world/Chapter11/rotation_bouncein_button.dart';
import 'package:hello_world/Chapter11/rotation_button.dart';
import 'package:hello_world/Chapter11/composed_button.dart';
import 'package:hello_world/Chapter11/rotated_button.dart';
import 'package:hello_world/Chapter11/scaled_button.dart';
import 'package:hello_world/Chapter11/translated_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Animations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Rotated button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return RotatedButton();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text('Scaled button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return ScaledButton();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text('Translated button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return TranslatedButton();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text('Composed button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return ComposedButton();
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text('Animation button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Scaffold(appBar: AppBar(), body: RotationAnimations());
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text('Animation bounce-in button'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Scaffold(appBar: AppBar(), body: RotationBounceInAnimations());
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text('Animation builder'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Scaffold(appBar: AppBar(), body: RotationBuilderAnimations());
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
