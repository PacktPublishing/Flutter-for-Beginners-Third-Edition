import 'package:flutter/material.dart';

class DestinationListTile extends StatelessWidget {
  const DestinationListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view")),
      body: ListView(
        children: [
          ListTile(
            title: Text("Teesside"),
            subtitle: Text("The home of the Lemon Top ice cream"),
            leading: Icon(Icons.location_on),
            onTap: () {},
            trailing: IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
