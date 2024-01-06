import 'package:flutter/material.dart';
import 'package:navigatetype/route/routes.dart';
import 'package:navigatetype/screens/first_page.dart';
import 'package:navigatetype/screens/second_page.dart';

class SpecialRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.FirstPage:
        return MaterialPageRoute(
          builder: (_) => const FirstPage(),
        );
      case Routes.SecondPage:
        return MaterialPageRoute(
          builder: (_) => const SecondPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => FirstPage(),
        );
    }
  }
}
