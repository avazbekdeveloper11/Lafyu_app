import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vazifa/core/colors/colors_constant.dart';
import 'package:vazifa/core/constant/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    nextToPage(context, "/loginView");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.blue,
      body: Center(
        child: SvgPicture.asset(Constant.lafuiWhite),
      ),
    );
  }

  nextToPage(BuildContext context, String route) async {
    await Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushNamedAndRemoveUntil(context, route, (route) => false),
    );
  }
}
