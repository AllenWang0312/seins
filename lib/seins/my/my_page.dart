

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seins/seins/home/search_page.dart';

import '../config.dart';

class MyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return MyPageState();
  }

}

class MyPageState extends State<MyPage>{
  
  Widget searchBar(){
    return Container(
      child: FlatButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
              return new SearchPage();
            }
          ));
        },
        child: new Row(children: <Widget>[
          new Container(
            child: Icon(Icons.search,size: 18.0),
            margin: const EdgeInsets.only(right: 26.0),
          ),
          Expanded(
            child: Container(
              child: Text("搜索知乎内容"),
            ),
          ),
          Container(
            child: FlatButton(
              onPressed: (){},
              child: Icon(Icons.settings_overscan,size: 18.0,),
            ),
            width: 40.0,
          )
        ],),
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color:Config.searchBackgroundColor
      ),
    );
  }
  Widget myInfoCard(){
    return Container(
      color: Config.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 10.0,bottom: 6.0),
      padding: const EdgeInsets.only(top:12.0,bottom: 8.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0),
            decoration: BoxDecoration(
              color: Config.dark == true? Colors.white10: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.all(Radius.circular(6.0))
            ),
            child: FlatButton(
              onPressed: (){},
              child: Container(
                child: ListTile(
                  leading: Container(
                    child: CircleAvatar(
                      backgroundImage: new NetworkImage("url"),
                      radius: 20.0,
                    ),
                  ),
                  title: Container(
                    margin: const EdgeInsets.only(bottom: 2.0),
                    child: Text("learner"),
                  ),
                  subtitle: Container(
                    margin: const EdgeInsets.only(top:2.0),
                    child: Text("查看或编辑个人主页"),
                  )
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: (MediaQuery.of(context).size.width -6.0)/4,
                  child: FlatButton(
                    onPressed: (){},
                    child: Container(
                      height:50.0 ,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text("57",style: TextStyle(fontSize:16.0,color: Config.fontColor),),
                          ),
                          Container(
                            child: Text("我的创作",style: TextStyle(fontSize: 12.0,color: Config.fontColor),),
                          )
                        ],
                      ),
                    ),

                  ),
                ),
                Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                      start: BorderSide(color: Config.dark == true? Colors.white12: Colors.black12,width: 1.0)
                    )
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: Config.themeData,
     home: Scaffold(
       appBar: AppBar(
         title: searchBar(),
       ),
     body: SingleChildScrollView(
       child: Container(
         child: Column(
           children: <Widget>[
             myInfoCard(),
//             myServiceCard(),
//             settingCard(),
//             videoCard(),
//             ideaCard(),
           ],
         ),
       ),
     ),
     ),
   );
  }

}