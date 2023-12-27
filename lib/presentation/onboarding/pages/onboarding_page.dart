import 'package:driver_test_apps/core/components/buttons.dart';
import 'package:driver_test_apps/core/extensions/build_context_ext.dart';
import 'package:driver_test_apps/data/datasources/local/onboarding_local_datasource.dart';

import 'package:driver_test_apps/presentation/authentication/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:driver_test_apps/core/assets/assets.gen.dart';

import 'package:driver_test_apps/presentation/onboarding/models/onboarding_model.dart';

import '../widgets/onboarding_content.dart';
import '../widgets/onboarding_indicator.dart';
import '../widgets/onboarding_skip_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController();
  int currentPage = 0;
  final onboardingContent = [
    OnboardingModel(
        image: Assets.lottie.onboarding.onboarding1,
        title:
            "Selamat datang di Aplikasi Ujian Berkendara kami! Mulai perjalananmu menuju keselamatan berkendara dengan menggunakan aplikasi ini."),
    OnboardingModel(
        image: Assets.lottie.onboarding.onboarding2,
        title:
            "Persiapkan diri untuk ujian berkendara dengan fitur-fitur unggulan kami. Bersama, kita ciptakan masa depan lebih aman di jalan raya!"),
    OnboardingModel(
        image: Assets.lottie.onboarding.onboarding3,
        title:
            "Belajar menjadi pengemudi lebih baik jadi mudah dan menyenangkan dengan Aplikasi Ujian Berkendara. Ayo mulai sekarang, tingkatkan kepercayaan dirimu!"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.centerRight,
                child: OnboardingSkipButton(
                    onPressed: () {
                      setState(() {
                        if (currentPage < onboardingContent.length - 1) {
                          currentPage = currentPage + 2;
                          pageController.animateToPage(currentPage,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut);
                        }
                      });
                    },
                    currentIndex: currentPage),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            OnboardingContent(
                pageController: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                content: onboardingContent),
            OnboardingIndicator(
              length: onboardingContent.length,
              currentIndex: currentPage,
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Button.filled(
                  height: 64,
                  onPressed: () {
                    if (currentPage < onboardingContent.length - 1) {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      OnboardingLocalDatasource().saveOnboardingPasses();
                      context.pushReplacement(const LoginPage());
                    }
                  },
                  label: "Continue"),
            )
          ],
        ),
      ),
    );
  }
}
