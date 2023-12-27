import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';

class RegisterSuccessDialog extends StatelessWidget {
  const RegisterSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Lottie.asset(
            Assets.lottie.success,
            height: 70,
            width: 70,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 14.0),
          const Text(
            'Sign up successful!',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      content: const Text(
        'Your account has been created. Please wait a moment, we are preparing for you...',
      ),
      actions: [
        Button.filled(
          height: 56,
          onPressed: () {},
          label: 'Redirecting...',
          icon: const SizedBox(
            height: 20.0,
            width: 20.0,
            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}
