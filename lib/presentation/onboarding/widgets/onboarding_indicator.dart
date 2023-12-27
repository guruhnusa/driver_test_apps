import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class OnboardingIndicator extends StatelessWidget {
  final int currentIndex;
  final int length;
  const OnboardingIndicator({
    Key? key,
    required this.currentIndex,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 10,
          width: currentIndex == index ? 20 : 10,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? AppColors.secondaryBlue
                : AppColors.secondaryBlue.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
        );
      }),
    );
  }
}
