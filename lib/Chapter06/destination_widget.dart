import 'package:flutter/material.dart';

class DestinationWidget extends StatefulWidget {
  DestinationWidget({required this.destinationName});

  final String destinationName;

  @override
  State<DestinationWidget> createState() => _DestinationWidgetState();
}

class _DestinationWidgetState extends State<DestinationWidget> {
  late int _likeCounter;

  @override
  void initState() {
    super.initState();

    _likeCounter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.destinationName),
        Column(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _likeCounter++;
                });
              },
              icon: const Icon(Icons.thumb_up),
            ),
            Text(_likeCounter.toString()),
          ],
        ),
      ],
    );
  }
}
