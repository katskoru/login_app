import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _customTileExpanded = false;
  bool _firstTileExpanded = false;
  bool _lastTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: const Text(
              "General Settings",
              style: TextStyle(fontSize: 30),
            ),
            trailing: Icon(
              _firstTileExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              size: 40.0,
            ),
            children: <Widget>[
              ListTile(
                  title: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam finibus felis eros, id vulputate tellus vehicula non. Ut vitae laoreet lorem. Donec ac metus vestibulum erat semper fermentum. Etiam varius lectus et convallis gravida. Aenean id porta odio, faucibus malesuada orci.")),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _firstTileExpanded = expanded);
            },
          ),
        ),
        Divider(
          height: 10.0,
          color: Colors.black,
        ),
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: const Text(
              "User Settings",
              style: TextStyle(fontSize: 30),
            ),
            trailing: Icon(
              _customTileExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              size: 40.0,
            ),
            children: const <Widget>[
              ListTile(
                  title: Text(
                "Quisque lacus magna, interdum blandit orci at, porttitor placerat enim. Maecenas rutrum, nulla et porta efficitur, nisi diam pellentesque ex, nec commodo turpis ligula quis tellus. ",
              )),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
        ),
        Divider(
          height: 10.0,
          color: Colors.black,
        ),
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text("Data Policy", style: TextStyle(fontSize: 30)),
            trailing: Icon(
              _lastTileExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              size: 40.0,
            ),
            children: <Widget>[
              ListTile(
                  title: Text(
                      "Pellentesque tellus justo, elementum vitae sagittis faucibus, varius quis nunc.")),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _lastTileExpanded = expanded);
            },
          ),
        ),
        Divider(
          height: 10.0,
          color: Colors.black,
        ),
      ],
    ));
  }
}
