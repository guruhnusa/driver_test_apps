import 'package:driver_test_apps/core/constant/colors.dart';
import 'package:driver_test_apps/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../models/onboarding_model.dart';

class OnboardingContent extends StatelessWidget {
  final PageController pageController;
  final void Function(int) onPageChanged;
  final List<OnboardingModel> content;
  const OnboardingContent({
    Key? key,
    required this.pageController,
    required this.onPageChanged,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        onPageChanged: onPageChanged,
        itemCount: content.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(content[index].image,
                  fit: BoxFit.cover,
                  height: context.deviceHeight / 2.5,
                  width: context.deviceHeight / 2.5),
              const SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  content[index].title,
                  style: const TextStyle(
                    color: AppColors.secondaryBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
