import 'package:flutter/material.dart';
import 'package:northwest/screen/3x3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Prompt',
      ),
      home: Northwest3x3(title: 'NorthWest'),
    );
  }
}