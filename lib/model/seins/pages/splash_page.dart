import 'package:flutter/cupertino.dart';
import 'package:seins/model/netease/provider/user_model.dart';
import '../../../application.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return null;
  }

}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {

  AnimationController _logoController;
  Tween _scaleTween;
  CurvedAnimation _logoAnimation;

  @override
  void initState() {
    super.initState();
    _scaleTween = Tween(begin: 0, end: 1);
    _logoController =
    AnimationController(vsync: this, duration: Duration(microseconds: 500))
      ..drive(_scaleTween);
    Future.delayed(Duration(microseconds: 500), () {
      _logoController.forward();
    });
    _logoAnimation =
        CurvedAnimation(parent: _logoController, curve: Curves.easeOutQuart);
    _logoController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(Duration(microseconds: 500), () {
          goPage();
        });
      }
    });
  }
  void goPage() async {
    await Application.initSp();
//    UserModel userModel = Provider.of<Usermo

  }

  @override
  Widget build(BuildContext context) {
//    NetU
    return null;
  }

  @override
  void dispose() {
    super.dispose();
    _logoController.dispose();
  }
}