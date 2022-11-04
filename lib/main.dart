import 'package:flutter/material.dart';
import 'screen0.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';
import 'screen4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen0(),
      routes: {
        '/home' : (context) => Screen0(),
        '/physics': (context) => Screen1(),
        '/maths' : (context) => Screen2(),
        '/ELE' : (context) => Screen3(),
        '/civ' : (context) => Screen4(),
      },
    );
  }
}
