import 'package:flutter/material.dart';
import 'package:tp_drawer/screens/home.dart';
import 'package:tp_drawer/screens/page1.dart';
import 'package:tp_drawer/screens/page2.dart';
import 'package:tp_drawer/screens/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context)=>MyHome(),
        "relu": (context) => Page1(),
        "tanh": (context) => Page2(),
        "sigmoid": (context) => Page3(),

      },
    );
  }



}