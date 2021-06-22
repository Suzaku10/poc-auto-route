import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:poc_autoroute/router.gr.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Expanded(child: Center(child: Text('ini Register'))),
          Container(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => context.router.replace(MainRoute()), child: Text('home')))
        ],
      )),
    );
  }
}
