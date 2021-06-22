import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:poc_autoroute/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () => context.router.push(CategoriesRoute()),
                child: Text('See All Categories'))
          ],
        ),
      ),
    );
  }
}
