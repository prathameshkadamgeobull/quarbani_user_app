import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotsIndicator extends StatelessWidget {
  final PageController controller;
  final int count;

  const DotsIndicator({
    super.key,
    required this.controller,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect: const WormEffect(
        activeDotColor: Color(0xff0B3D2E),
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }
}