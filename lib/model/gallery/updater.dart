

import 'package:flutter/cupertino.dart';

typedef UpdateUrlFetcher = Future<String> Function();

class Updater extends StatefulWidget{
  const Updater({@required this.updateUrlFetcher, this.child,Key key})
  : assert(updateUrlFetcher != null),

  final UpdateUrlFetcher updateUrlFetcher;
  final Widget child;
}