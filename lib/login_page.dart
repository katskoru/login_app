import 'package:flutter/material.dart';
import 'package:login_page/Feed_Page/feed_page.dart';
import 'package:login_page/social_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _isInitialValue = true;

class _LoginPageState extends State<LoginPage> {
  @override
  TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.green])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(children: [
                  const CircleAvatar(
                    radius: 150.0,
                    backgroundImage:
                        AssetImage('assets/img/pexels-photo-220453.jpeg'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Peter Black",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Welcome back!",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    child: TextFormField(
                      onChanged: (r) {
                        setState(() {});
                      },
                      obscureText: _isInitialValue == true ? true : false,
                      minLines: 1,
                      maxLines: 1,
                      maxLength: 12,
                      controller: controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                _isInitialValue = !_isInitialValue;
                              });
                            },
                            icon: _isInitialValue == true
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          )),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  SizedBox(
                    width: 270.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: controller.text.length == 10
                          ? () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return SocialPage();
                              }));
                            }
                          : null,
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
