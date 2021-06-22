import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:poc_autoroute/router.gr.dart';

class Utilities {
  static void getRouteStack(BuildContext context) {
    print(context.router.stack);
  }
}
