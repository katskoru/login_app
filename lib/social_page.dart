import 'package:flutter/material.dart';
import 'package:login_page/feed_page.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Text(
          "Social_Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FeedPage(),
    );
  }
}
