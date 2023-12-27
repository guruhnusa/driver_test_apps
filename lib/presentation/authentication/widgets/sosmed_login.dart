import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class SosmedLogin extends StatelessWidget {
  final String name;
  final String logo;
  final VoidCallback? onPressed;

  const SosmedLogin({
    Key? key,
    required this.name,
    required this.logo,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        height: 60,
        width: 327,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: AppColors.grey),
        ),
        child: Row(
          children: [
            Image.asset(
              logo,
              height: 20,
              width: 20,
            ),
            const Spacer(),
            Text(
              "Sign in with $name",
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
