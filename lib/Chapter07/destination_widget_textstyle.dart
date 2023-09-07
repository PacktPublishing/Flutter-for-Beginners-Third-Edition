import 'package:flutter/material.dart';

class DestinationWidgetTextStyle extends StatefulWidget {
  DestinationWidgetTextStyle({required this.name, required this.description});

  final String name;
  final String description;

  @override
  State<DestinationWidgetTextStyle> createState() => _DestinationWidgetTextStyleState();
}

class _DestinationWidgetTextStyleState extends State<DestinationWidgetTextStyle> {
  late int _likeCounter;

  @override
  void initState() {
    super.initState();

    _likeCounter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Destination")),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: Text(
                  "asdf asdf asdf asdf asdf asdf asdf adsf asdf asdf sadf asdf asdf ${widget.name}",
                  style: TextStyle(
                    backgroundColor: Color.fromRGBO(50, 168, 82, 1),
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    wordSpacing: 3,
                    overflow: TextOverflow.fade,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Text(
            widget.description,
            style: TextStyle(backgroundColor: Color(0x32a852)),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _likeCounter++;
              });
            },
            icon: const Icon(Icons.thumb_up),
          ),
          Text(_likeCounter.toString()),
          ElevatedButton(
            child: Text("Back"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
