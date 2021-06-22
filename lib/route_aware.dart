import 'package:flutter/material.dart';

class RouteAwareSetoko extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    if (route.settings.name != null && route.settings.name != "_placeHolder_")
      print("ini didPop : ${route.settings.name}");
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    if (route.settings.name != null && route.settings.name != "_placeHolder_")
      print("ini didPush : ${route.settings.name}");
    super.didPush(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    if (route.settings.name != null && route.settings.name != "_placeHolder_")
      print("ini didRemove : ${route.settings.name}");
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print(
        "ini didReplace : ${newRoute!.settings.name}: ${oldRoute!.settings.name}");
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
