import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hotelorder_r2_app/homePage.dart';
import 'package:hotelorder_r2_app/splashPage.dart';

import 'navigationStore.dart';
import 'routeName.dart';

class PageRouter {
  static NavigationStore get _navigationStore =>
      GetIt.instance.get<NavigationStore>();

  static Route<MaterialPageRoute> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.SplashRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashPage());
      case RouteName.HomePageRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomePage());

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomePage());
    }
  }

  static toLoginPage() {
    _navigationStore.pushNamedAndRemoveUntil(RouteName.SplashRoute);
  }

  static toHomePage({int index}) {
    _navigationStore.pushNamedAndRemoveUntil(RouteName.HomePageRoute,
        arguments: index);
  }
}