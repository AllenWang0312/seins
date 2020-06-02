
import 'package:flutter/material.dart';

import 'index/index.dart';

void main() => runApp(new Seins());

class Seins extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return new MaterialApp(
     title: "Seins",
     home: new Index(),
   );
  }

}