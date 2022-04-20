import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/core/components/decorations.dart';
import 'package:vazifa/core/constant/sized_config.dart';
import 'package:vazifa/core/data/my_data.dart';

class HomepageComponents {
  static SizedBox categoryBuilder(BuildContext context) {
    return SizedBox(
      height: getHeight(105),
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) {
          return Padding(
            padding: EdgeInsets.only(left: getWidht(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: getHeight(70),
                  width: getHeight(70),
                  decoration: MyDeco.withGoogleButtonDeco(radius: 66),
                  child: Center(
                    child: SvgPicture.asset(MyData.categoryImg[__]["img"]),
                  ),
                ),
                SizedBox(
                  width: getWidht(70),
                  height: getHeight(30),
                  child: Center(
                    child: Text(
                      MyData.categoryImg[__]["name"],
                      textAlign: TextAlign.center,style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: MyData.categoryImg.length,
      ),
    );
  }
}
