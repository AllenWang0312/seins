//import 'package:fluro/fluro.dart';
//import 'package:flutter/material.dart';
//import 'package:seins/utils/log_util.dart';
//import 'application.dart';
//import 'model/netease/provider/play_list_model.dart';
//import 'model/netease/provider/play_songs_model.dart';
//import 'model/netease/provider/user_model.dart';
//import 'package:seins/model/netease/route/routes.dart';
//import 'package:provider/provider.dart';
//import 'model/netease/my_app.dart';
////netease
//void main() {
////  runApp(MyApp());
//  Router router = Router();
//  Routes.configureRoutes(router);
//  Application.router = router;
//  Application.setupLocator();
//  LogUtil.init(tag: 'NETEASE_MUSIC');
////  AudioPlayer.logEnabled = true;
//  Provider.debugCheckInvalidValueType = null;
//  runApp(MultiProvider(
//    providers: [
//      ChangeNotifierProvider<UserModel>(
//        builder: (_) => UserModel(),
//      ),
//      ChangeNotifierProvider<PlaySongsModel>(
//        builder: (_) => PlaySongsModel()..init(),
//      ),
//      ChangeNotifierProvider<PlayListModel>(
//        builder: (_) => PlayListModel(),
//      ),
//    ],
//    child: MyApp(),
//  ));
//}

//plannet
//import 'model/plannet/my_app.dart';
//void main() {
//  runApp(MyApp());
//}

//gallery

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

void _enablePlatformOverrideForDesktop(){
  if(!kIsWeb && (Platform.isMacOS||Platform.isWindows||Platform.isLinux)){
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}
void main(){
  _enablePlatformOverrideForDesktop();
  runApp(const GalleryApp())
}




