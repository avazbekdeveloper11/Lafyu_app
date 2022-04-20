import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class pageViewIndecator extends StatelessWidget {
  final PageController pageController;
  const pageViewIndecator({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      count: 5,
      controller: pageController,
      effect: const WormEffect(dotHeight: 9, dotWidth: 9),
      onDotClicked: (int __) {
        pageController.animateToPage(
          __,
          curve: Curves.bounceOut,
          duration: const Duration(microseconds: 500),
        );
      },
    );
  }
}