import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(color: AppColors.grey, thickness: 1),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "OR",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: Divider(color: AppColors.grey, thickness: 1),
        ),
      ],
    );
  }
}
