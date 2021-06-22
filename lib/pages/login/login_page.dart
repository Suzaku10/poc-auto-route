import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:poc_autoroute/router.gr.dart';
import 'package:poc_autoroute/utilities.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: Center(child: Text('ini Login'))),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Utilities.getRouteStack(context),
                    child: Text('Route'))),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => context.router.pushAndPopUntil(MainRoute(),
                        predicate: (route) => false),
                    child: Text('Home'))),
          ],
        ),
      ),
    );
  }
}
