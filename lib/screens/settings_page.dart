import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/state_provider.dart';
import 'login_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final StateProvider myProvider =
        Provider.of<StateProvider>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: const Text(
                  "General Settings",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Icon(
                  myProvider.firstTileExpanded
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  size: 40.0,
                ),
                children: const <Widget>[
                  ListTile(
                      title: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam finibus felis eros, id vulputate tellus vehicula non. Ut vitae laoreet lorem. Donec ac metus vestibulum erat semper fermentum. Etiam varius lectus et convallis gravida. Aenean id porta odio, faucibus malesuada orci.")),
                ],
                onExpansionChanged: (bool expanded) {
                  myProvider.firstTileExpanded = expanded;
                },
              ),
            ),
            const Divider(
              height: 10.0,
              color: Colors.black,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: const Text(
                  "User Settings",
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Icon(
                  myProvider.customTileExpanded
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  size: 40.0,
                ),
                children: const <Widget>[
                  ListTile(
                      title: Text(
                    "Quisque lacus magna, interdum blandit orci at, porttitor placerat enim. Maecenas rutrum, nulla et porta efficitur, nisi diam pellentesque ex, nec commodo turpis ligula quis tellus. ",
                  )),
                ],
                onExpansionChanged: (bool expanded) {
                  myProvider.customTileExpanded = expanded;
                },
              ),
            ),
            const Divider(
              height: 10.0,
              color: Colors.black,
            ),
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title:
                    const Text("Data Policy", style: TextStyle(fontSize: 30)),
                trailing: Icon(
                  myProvider.lastTileExpanded
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  size: 40.0,
                ),
                children: const <Widget>[
                  ListTile(
                      title: Text(
                          "Pellentesque tellus justo, elementum vitae sagittis faucibus, varius quis nunc.")),
                ],
                onExpansionChanged: (bool expanded) {
                  myProvider.lastTileExpanded = expanded;
                },
              ),
            ),
            const Divider(
              height: 10.0,
              color: Colors.black,
            ),
            const SizedBox(
              height: 350.0,
            ),
            TextButton(
              style: TextButton.styleFrom(primary: Colors.red),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
              child: const Text(
                "Delete Account",
                style: TextStyle(fontSize: 30.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
