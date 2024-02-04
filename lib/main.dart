import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
