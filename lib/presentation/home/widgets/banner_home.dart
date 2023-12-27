import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constant/colors.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          height: 166,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.secondaryYellow,
          ),
        ),
        const Positioned(
          left: 20,
          bottom: 60,
          child: SizedBox(
            width: 140,
            child: Text(
              "Learn to Drive with us",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 15,
          child: Container(
            height: 185,
            width: 185,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  Assets.images.steeringWheel.path,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
