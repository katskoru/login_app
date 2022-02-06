import 'package:flutter/material.dart';

import 'package:login_page/feed_page.dart';
import 'package:login_page/settings_page.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: myDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 10.0,
        title: Text(
          "Social_Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
        children: [FeedPage(), SettingsPage()],
      ),
    );
  }

  myDrawer() {
    return Drawer(
      elevation: 20.0,
      child: ListView(
        children: [
          SizedBox(
            height: 40.0,
          ),
          SizedBox(
            height: 75.0,
            child: ListTile(
              contentPadding: EdgeInsets.all(8.0),
              leading: const Icon(
                Icons.explore,
                color: Colors.black,
                size: 68.0,
              ),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 40.0),
              ),
              onTap: () {
                controller.animateToPage(0,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeIn);
              },
            ),
          ),
          SizedBox(
            height: 75.0,
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: const Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 68.0,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(fontSize: 40.0),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 75.0,
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: const Icon(
                Icons.chat,
                color: Colors.black,
                size: 68.0,
              ),
              title: const Text(
                "Chat",
                style: TextStyle(fontSize: 40.0),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 75.0,
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 68.0,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(fontSize: 40.0),
              ),
              onTap: () {
                controller.animateToPage(1,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeIn);
              },
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.logout),
              //style: ButtonStyle(shape: ),
              label: Text("Log Out"))
        ],
      ),
    );
  }
}
