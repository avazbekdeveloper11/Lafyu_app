import 'package:flutter/material.dart';
import 'package:vazifa/router/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _route = RouteGenerator();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lafyu App',
      initialRoute: "/splashScreen",
      onGenerateRoute: _route.generateRoute,
    );
  }
}
