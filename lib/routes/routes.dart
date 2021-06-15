import 'package:flutter/material.dart';
import 'package:report_app/screens/home_screen.dart';

import '../screens/splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (_) => SplashScreen());
    case "/home":
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    default:
      return MaterialPageRoute(builder: (_) => SplashScreen());
  }
}
