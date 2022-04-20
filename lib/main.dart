import 'package:flutter/material.dart';
import 'package:vazifa/core/colors/colors_constant.dart';
import 'package:vazifa/core/constant/sized_config.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Lafyu App',
      initialRoute: "/splashScreen",
      onGenerateRoute: _route.generateRoute,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: ConstColor.neturalDark,
          ),
          subtitle1: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ConstColor.neturalGrey,
          ),
          subtitle2: TextStyle(
            color: ConstColor.blue,
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
          bodyText1: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: ConstColor.neturalGrey,
          ),
        ),
      ),
    );
  }
}
