import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';



class ResultValue extends StatelessWidget {
  final int value;
  final String label;
  final Color color;

  const ResultValue.correct(
    this.value, {
    super.key,
    this.label = 'Benar',
    this.color = AppColors.primaryGreen,
  });

  const ResultValue.wrong(
    this.value, {
    super.key,
    this.label = 'Salah',
    this.color = AppColors.primaryRed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            color: color,
          ),
          child: Text(
            '$value',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 12.0),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
