import 'package:flutter/material.dart';
import 'package:poc_autoroute/pages/categories/categories_page.dart';
import 'package:poc_autoroute/pages/home/home_page.dart';
import 'package:poc_autoroute/pages/payment/payment_page.dart';
import 'package:poc_autoroute/pages/profile/account_page.dart';
import 'package:poc_autoroute/pages/promos/promo_page.dart';
import 'package:poc_autoroute/widget/menu_bottom.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MenuBottom _currentTab = MenuBottom.HOME;

  Map<MenuBottom, Widget> _navigatorPage = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Stack(children: <Widget>[
                _buildOffstageNavigator(MenuBottom.HOME),
                _buildOffstageNavigator(MenuBottom.CATEGORIES),
                _buildOffstageNavigator(MenuBottom.ALLO),
                _buildOffstageNavigator(MenuBottom.PROMOS),
                _buildOffstageNavigator(MenuBottom.ACCOUNT),
              ]),
            ),
          ),
          MenuBottomWidget(
            onTabMenu: (menu) {
              setState(() {
                if (_currentTab == menu) {
                } else {
                  _currentTab = menu;
                }
              });
            },
          )
        ],
      ),
    );
  }

  Widget _buildOffstageNavigator(MenuBottom menu) {
    return Offstage(offstage: _currentTab != menu, child: _navigatorPage[menu]);
  }

  @override
  void initState() {
    super.initState();
    _navigatorPage = _navigatorPage = {
      MenuBottom.HOME: HomePage(),
      MenuBottom.CATEGORIES: CategoriesPage(),
      MenuBottom.ALLO: PaymentPage(),
      MenuBottom.PROMOS: PromoPage(),
      MenuBottom.ACCOUNT: AccountPage(),
    };
  }
}
