import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/core/components/decorations.dart';
import 'package:vazifa/core/constant/constant.dart';
import 'package:vazifa/core/constant/sized_config.dart';

class MyCard {
  static Container cardShop() {
    return Container(
      width: getWidht(165),
      decoration: MyDeco.withGoogleButtonDeco(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidht(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getHeight(133),
              width: getHeight(133),
              decoration: MyDeco.withImageDeco(
                img: Constant.randomImage,
              ),
            ),
            const Text(
              "FS - Nike Air Max 270 React...",
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(4)),
              child: Row(
                children: [
                  SvgPicture.asset(Constant.lock),
                  SvgPicture.asset(Constant.lock),
                  SvgPicture.asset(Constant.lock),
                  SvgPicture.asset(Constant.lock),
                  SvgPicture.asset(Constant.lock),
                ],
              ),
            ),
            SizedBox(
              width: getWidht(133),
              height: getHeight(48),
              child: Padding(
                padding: EdgeInsets.only(top: getHeight(16)),
                child: const Text(
                  "\$299,43",
                ),
              ),
            ),
            Row(
              children: const [
                Text("\$534,33"),
                Text("  "),
                Text("24% Off"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
