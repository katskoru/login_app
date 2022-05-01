import 'package:flutter/material.dart';
import 'package:login_page/provider/state_provider.dart';
import 'package:provider/provider.dart';

import 'screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return StateProvider();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.white),
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      ),
    );
  }
}
