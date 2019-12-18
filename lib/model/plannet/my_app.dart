

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'seins',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: HomePage(),
//      title: 'Flutter Demo Home Page'
    );
  }
}