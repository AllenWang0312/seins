import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seins/seins/home/search_page.dart';

import '../config.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget barSearch() {
    return new Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton.icon(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return new SearchPage();
                  }));
                },
                icon: Icon(Icons.search, color: Config.fontColor, size: 16.0),
                label: Text(
                  "坚果R1摄像头损坏",
                  style: TextStyle(color: Config.fontColor),
                )),
          ),
          Container(
            decoration: BoxDecoration(
                border: BorderDirectional(
                    start: BorderSide(color: Config.fontColor, width: 1.0))),
            height: 14.0,
            width: 1.0,
          ),
          Container(
            child: FlatButton.icon(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
//                  return AskPage();
                  }));
                },
                icon: Icon(
                  Icons.border_color,
                  color: Config.fontColor,
                  size: 14.0,
                ),
                label: Text(
                  "提问",
                  style: TextStyle(color: Config.fontColor),
                )),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: Config.searchBackgroundColor
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: barSearch(),
          bottom: TabBar(
            labelColor: Config.dark ==true? Color(0xFF63FDD9):Colors.blue,
            unselectedLabelColor: Config.dark==true?Colors.white:Colors.black,
            tabs:[
              Tab(text:"关注"),
              Tab(text: "推荐"),
              Tab(text: "热榜")
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
//            Follow(),
//            Recommend(),
//            Hot(),
          ],
        ),
      ),
    );
  }
}
