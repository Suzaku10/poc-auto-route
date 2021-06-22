import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:poc_autoroute/router.gr.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.location,
        Permission.notification,
      ].request();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Ini Onboarding')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => context.router.push(LoginRoute()),
                    child: Text('Login'))),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => context.router.push(RegisterRoute()),
                    child: Text('register'))),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => context.router.replace(LoginRoute()),
                    child: Text('skip'))),
          ],
        ));
  }
}
