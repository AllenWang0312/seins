
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_page.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyAppHome(),
    routes: <String, WidgetBuilder>{
      'a':(BuildContext context)=> new MyPage(title:'page A')
    },
  ));
}

class MyAppHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }

}
class _MyAppState extends State<MyAppHome>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
