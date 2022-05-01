import 'package:flutter/material.dart';
import 'package:login_page/state_provider.dart';
import 'package:provider/provider.dart';
import 'package:login_page/screens/social_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final StateProvider myProvider =
        Provider.of<StateProvider>(context, listen: false);

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
                      onChanged: (value) {
                        setState(() {});
                      },
                      obscureText:
                          myProvider.isInitialValue == true ? true : false,
                      minLines: 1,
                      maxLines: 1,
                      maxLength: 10,
                      controller: controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          suffix: IconButton(
                            onPressed: () {
                              myProvider.isInitialValue =
                                  !myProvider.isInitialValue;
                            },
                            icon: Provider.of<StateProvider>(context,
                                            listen: true)
                                        .isInitialValue ==
                                    true
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                          )),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: 270.0,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: controller.text.length == 10
                          ? () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                return const SocialPage();
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
