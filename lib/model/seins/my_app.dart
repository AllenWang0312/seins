import 'package:flutter/material.dart';
import 'package:seins/model/netease/pages/splash_page.dart';
import 'package:seins/model/seins/pages/splash_page.dart';
import 'package:seins/model/seins/route/navigate_service.dart';

import '../../application.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'seins',
      navigatorKey: Application.getIt<NavigateService>().key,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black12,
          splashColor: Colors.transparent,
          tooltipTheme: TooltipThemeData(verticalOffset: -100000)),
//      home: SplashPage(),
      onGenerateRoute: Application.router.generator,
    );
  }
}
