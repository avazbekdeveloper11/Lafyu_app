import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vazifa/core/constant/constant.dart';

class MyAppBar extends StatelessWidget {
  String lastIcon;
  Function? onLast;
  String firstIcon;
  Function? onFirst;
  Function? onTapSearch;
  MyAppBar({
    Key? key,
    required this.firstIcon,
    required this.lastIcon,
    this.onTapSearch,
    this.onFirst,
    this.onLast,
  }) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 1,
      // title: MyCont.searchContainer(),
      actions: [
        IconButton(
          icon: SvgPicture.asset(Constant.lock),
          splashRadius: 20,
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(Constant.lock),
          splashRadius: 20,
          onPressed: () {},
        ),
      ],
    );
  }
}
