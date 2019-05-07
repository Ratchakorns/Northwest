import 'package:flutter/material.dart';
import 'package:northwest/screen/2x2.dart';
import 'package:northwest/screen/2x3.dart';
import 'package:northwest/screen/3x3.dart';
import 'package:northwest/screen/3x4.dart';
import 'package:northwest/screen/4x4.dart';
import 'package:northwest/screen/homescreen.dart';
import 'package:northwest/screen/provider.dart';

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
      home: MyHomePage(),
      routes: {
        '/provider': (BuildContext context) => Provider(title: 'NorthWest'),
        '/2x2': (BuildContext context) => Northwest2x2(title: 'NorthWest'),
        '/2x3': (BuildContext context) => Northwest2x3(title: 'NorthWest'),
        '/3x3': (BuildContext context) => Northwest3x3(title: 'NorthWest'),
        '/3x4': (BuildContext context) => Northwest3x4(title: 'NorthWest'),
        '/4x4': (BuildContext context) => Northwest4x4(title: 'NorthWest'),
      },
    );
  }
}
