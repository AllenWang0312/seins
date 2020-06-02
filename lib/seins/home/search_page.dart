import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchPageState();
  }
}

class SearchPageState extends State<SearchPage> {
  Widget searchInput() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: FlatButton.icon(onPressed: () {
              Navigator.of(context).pop();
            }, icon: Icon(Icons.arrow_back, color: Config.fontColor),
                label: Text("")
            ),
            width: 60.0,
          ),
          Expanded(
            child: TextField(
              autofocus: true,
              decoration: InputDecoration.collapsed(hintText: "搜索内容",
              hintStyle: TextStyle(color: Config.fontColor)
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: Config.searchBackgroundColor
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Config.themeData,
      home: new Scaffold(
        appBar: AppBar(
          title:searchInput(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Text("逼乎热搜",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                margin: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 16.0),
                alignment: Alignment.topLeft,
              )
            ],
          ),
        ),
      ),
    );
  }

}