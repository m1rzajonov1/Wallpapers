import 'package:flutter/material.dart';
import 'package:wallpapers/screens/error_page.dart';
import 'package:wallpapers/screens/home_page.dart';
import 'package:wallpapers/screens/splash_screen_page.dart';

class Routes {
  Route routeGenerate(RouteSettings settings){
    final arg = settings.arguments;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) => const SplashScreenPage(),);
      case '/home':
        return MaterialPageRoute(builder: (context) => const  HomePage(),);
      default:
       return MaterialPageRoute(builder: (context) =>const ErrorPage(),);
    }
  }
}