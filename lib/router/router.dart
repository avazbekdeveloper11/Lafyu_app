import 'package:flutter/material.dart';
import 'package:vazifa/screens/splash_screen/splash_screen.dart';

class RouteGenerator {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/splashScreen":
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
