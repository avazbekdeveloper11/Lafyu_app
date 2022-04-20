import 'package:flutter/material.dart';
import 'package:vazifa/core/colors/colors_constant.dart';
import 'package:vazifa/core/constant/sized_config.dart';

class BigButton extends StatelessWidget {
  String title;
  Function()? onTap;
  BigButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: getHeight(57),
        decoration: BoxDecoration(
          color: ConstColor.blue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: ConstColor.white,
            ),
          ),
        ),
      ),
    );
  }
}
