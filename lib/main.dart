import 'package:flutter/material.dart';
import 'pages/myhomepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'seins',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

