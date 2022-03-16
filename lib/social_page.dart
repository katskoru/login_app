import 'package:flutter/material.dart';

import 'package:login_page/Feed_Page/feed_page.dart';
import 'package:login_page/login_page.dart';
import 'package:login_page/Settings/settings_page.dart';

import 'Feed_Page/feed_page.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  PageController controller = PageController();

  String _title = "Social_Page";

  void onPageChanged(int page) {
    String _temptitle = "";

    switch (page) {
      case 0:
        _temptitle = "Social_Page";
        break;
      case 1:
        _temptitle = "Settings";
        break;
    }
    setState(() {
      this._title = _temptitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 6.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          _title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      endDrawer: myDrawer(),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
        children: [
          FeedPage(),
          const SettingsPage(),
        ],
      ),
    );
  }

  myDrawer() {
    return Drawer(
      elevation: 20.0,
      child: ListView(
        children: [
          const SizedBox(
            height: 40.0,
          ),
          SizedBox(
            height: 75.0,
            child: ListTile(
              contentPadding: const EdgeInsets.all(8.0),
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
          const SizedBox(
            height: 260,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              });
            },
            child: const Icon(
              Icons.power_settings_new,
              color: Colors.white,
              size: 50.0,
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              primary: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
