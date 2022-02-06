import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
        ),
        itemCount: 20,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(child: Text("Index $index")),
        ),
      ),
    );
  }
}
