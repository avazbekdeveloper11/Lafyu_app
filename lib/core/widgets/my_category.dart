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
        Text(category),
        InkWell(
          child: Text(txButton),
          onTap: () => onT,
        )
      ],
    );
  }
}
