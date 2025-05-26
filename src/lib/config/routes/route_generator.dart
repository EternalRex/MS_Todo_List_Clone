import 'package:flutter/material.dart';
import 'package:src/config/routes/app_routes.dart';
import 'package:src/modules/home/presentation/pages/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homePage:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
