import 'package:flutter/material.dart';
import 'package:honeybee/pages/MainPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Honeybee',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new MainPage(),
    );
  }
}

