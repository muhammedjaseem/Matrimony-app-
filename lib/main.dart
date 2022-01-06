import 'package:flutter/material.dart';
import 'package:mahsoos_project/screens/bottom_screen.dart';
import 'package:mahsoos_project/screens/home_screen.dart';
import 'package:mahsoos_project/screens/login_home.dart';
import 'package:mahsoos_project/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const Loginpage(),
    );
  }
}
