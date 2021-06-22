import 'package:flutter/material.dart';
import 'package:poc_autoroute/utilities.dart';
import 'package:auto_route/auto_route.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ini Profile'),
        leading: BackButton(
          onPressed: () => context.router.pop(),
        ),
      ),
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: InkWell(
          child: Text('My Profile'),
          onTap: () => Utilities.getRouteStack(context),
        ),
      ),
    );
  }
}
