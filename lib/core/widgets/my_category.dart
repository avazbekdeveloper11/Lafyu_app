import 'package:flutter/material.dart';

class MycategoryWidget extends StatelessWidget {
  String category;
  String txButton;
  Function? onT;

  MycategoryWidget({
    Key? key,
    required this.category,
    this.onT,
    this.txButton = "See More",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          category,
          style: Theme.of(
            context,
          ).textTheme.headline1!.copyWith(fontSize: 14),
        ),
        InkWell(
          child: Text(
            txButton,
            style: Theme.of(
              context,
            ).textTheme.subtitle2!.copyWith(fontSize: 14),
          ),
          onTap: () => onT,
        )
      ],
    );
  }
}
