import 'package:flutter/material.dart';
import 'package:vazifa/screens/home_page/home_view.dart';
import 'package:vazifa/screens/log_in_page/login_view.dart';
import 'package:vazifa/screens/register_page/register_view.dart';
import 'package:vazifa/screens/splash_screen/splash_screen.dart';

class RouteGenerator {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/splashScreen":
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case "/loginView":
        return MaterialPageRoute(builder: (_) => const LoginView());
      case "/registerView":
        return MaterialPageRoute(builder: (_) => RegisterView());
      case "/homeView":
        return MaterialPageRoute(builder: (_) => HomeView());
    }
  }
}
