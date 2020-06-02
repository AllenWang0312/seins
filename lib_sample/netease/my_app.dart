

import 'package:flutter/material.dart';
import 'package:seins/netease/pages/splash_page.dart';
import 'package:seins/netease/route/navigate_service.dart';
import 'application.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: Application.getIt<NavigateService>().key,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          splashColor: Colors.transparent,
          tooltipTheme: TooltipThemeData(verticalOffset: -100000)),
      home: SplashPage(),
      onGenerateRoute: Application.router.generator,
    );
  }
}
