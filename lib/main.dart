import 'package:flutter/material.dart';
import 'package:poc_autoroute/route_aware.dart';
import 'package:poc_autoroute/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _setokoRouter = SetokoRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: _setokoRouter.defaultRouteParser(),
        routerDelegate: _setokoRouter.delegate(
            navigatorObservers: () => [RouteAwareSetoko()]));
  }
}
