import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class OnboardingSkipButton extends StatelessWidget {
  final VoidCallback onPressed;
  final int currentIndex;
  const OnboardingSkipButton({
    Key? key,
    required this.onPressed,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: const Text("Skip >",
          style: TextStyle(
            color: AppColors.secondaryBlue,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
