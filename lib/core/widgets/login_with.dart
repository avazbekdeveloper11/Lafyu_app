import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/core/colors/colors_constant.dart';
import 'package:vazifa/core/constant/sized_config.dart';

class LoginWith extends StatelessWidget {
  String title;
  String image;
  LoginWith({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(57),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getWidht(16),
              right: getHeight(10),
            ),
            child: SvgPicture.asset(image),
          ),
          SizedBox(
            width: getWidht(277),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: ConstColor.neturalGrey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: ConstColor.neturalGrey,
        ),
      ),
    );
  }
}
