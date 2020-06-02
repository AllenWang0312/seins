import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:seins/utils/log_util.dart';
import 'application.dart';
import 'provider/play_list_model.dart';
import 'provider/play_songs_model.dart';
import 'provider/user_model.dart';
import 'route/routes.dart';
import 'package:provider/provider.dart';
import 'my_app.dart';

void main() {
//  runApp(MyApp());
  Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;
  Application.setupLocator();
  LogUtil.init(tag: 'NETEASE_MUSIC');
//  AudioPlayer.logEnabled = true;
  Provider.debugCheckInvalidValueType = null;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<UserModel>(
        builder: (_) => UserModel(),
      ),
      ChangeNotifierProvider<PlaySongsModel>(
        builder: (_) => PlaySongsModel()..init(),
      ),
      ChangeNotifierProvider<PlayListModel>(
        builder: (_) => PlayListModel(),
      ),
    ],
    child: MyApp(),
  ));
}

//import 'model/plannet/index.dart';
//void main() {
//  runApp(MyApp());
//}