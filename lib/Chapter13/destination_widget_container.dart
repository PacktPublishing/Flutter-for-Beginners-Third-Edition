import 'package:flutter/material.dart';

class DestinationWidgetContainer extends StatefulWidget {
  DestinationWidgetContainer({required this.name, required this.description});

  final String name;
  final String description;

  @override
  State<DestinationWidgetContainer> createState() => _DestinationWidgetContainerState();
}

class _DestinationWidgetContainerState extends State<DestinationWidgetContainer> {
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
          Container(
            decoration: ShapeDecoration(
              shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.green,
                  width: 6,
                ),
              ),
            ),
            child: Text(
              widget.name,
            ),
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
