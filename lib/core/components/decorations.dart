import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/core/colors/colors_constant.dart';
import 'package:vazifa/core/constant/sized_config.dart';

class MyDeco {
  static InputDecoration decoInp({required String hint, required String icon}) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: SvgPicture.asset(icon, fit: BoxFit.none),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: ConstColor.blue),
      ),
      hintStyle: TextStyle(
        fontSize: getWidht(12),
        fontWeight: FontWeight.w400,
        color: ConstColor.neturalGrey,
      ),
      contentPadding: const EdgeInsets.only(top: 15),
    );
  }

  // CONTAINERNING DECORATIONI !
  static BoxDecoration containerDeco() {
    return BoxDecoration(
      color: ConstColor.primaryBlue,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: ConstColor.primaryBlue.withOpacity(0.24),
          offset: const Offset(0.0, 15.0),
          blurRadius: 15.0,
        ),
      ],
    );
  }

  static BoxDecoration withGoogleButtonDeco({double radius = 5}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: ConstColor.blue.withOpacity(0.4)),
    );
  }

  static BoxDecoration withImageDeco({double radius = 5, required String img}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: ConstColor.blue.withOpacity(0.4)),
      image: DecorationImage(
        image: CachedNetworkImageProvider(img),
        fit: BoxFit.cover,
      ),
    );
  }
}
