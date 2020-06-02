import 'package:flutter/widgets.dart';

class MyPage extends StatefulWidget{

  String title = "title";

  @override
  State<StatefulWidget> createState() {

    return new _MyPageState();
  }
  _login(){
    Navigator.of(context).pushNamed('/b');
  }

}
class _MyPageState extends State<MyPage>{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}