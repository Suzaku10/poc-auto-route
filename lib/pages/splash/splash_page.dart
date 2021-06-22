import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poc_autoroute/pages/onboarding/onboarding_page.dart';
import 'package:poc_autoroute/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedBuilder(
      animation: animationController!,
      builder: (context, _) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(child: Text('Ini Splash Screen')),
        );
      },
    ));
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this)
          ..forward()
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              context.router.replace(OnboardingRoute());
            }
          });
  }
}
