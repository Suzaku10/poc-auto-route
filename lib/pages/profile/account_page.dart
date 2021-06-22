import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:poc_autoroute/pages/profile/children/profile_page.dart';
import 'package:poc_autoroute/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  List<PageRouteInfo<dynamic>> _route = [
    ProfileRoute(),
    AddressRoute()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => _itemAccount(index), itemCount: _route.length),
    );
  }

  Widget _itemAccount(int index) {
    return ListTile(
      title: Text("index ke $index"),
      onTap: () => context.pushRoute(
        AccountRouter(children: [_route[index]]),
      ),
      // onTap: () => context.router.push(ProfileRoute()),
    );
  }
}
