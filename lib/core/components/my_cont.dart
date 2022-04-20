import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/core/components/decorations.dart';
import 'package:vazifa/core/constant/constant.dart';
import 'package:vazifa/core/constant/sized_config.dart';

class MyCont {
  // PAGEVIEW CONTAINER
  static Container pageContainer({img}) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: getWidht(16), vertical: getHeight(16)),
      decoration: MyDeco.withImageDeco(img: img),
    );
  }

  // SEARCH CONTAINER
  static Container searchContainer() {
    return Container(
      width: getWidht(263),
      height: getHeight(46),
      decoration: MyDeco.withGoogleButtonDeco(),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getWidht(17),
              right: getWidht(10),
            ),
            child: SvgPicture.asset(Constant.lock),
          ),
          Text("Search Product")
        ],
      ),
    );
  }
}
