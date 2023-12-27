import 'package:driver_test_apps/core/constant/colors.dart';
import 'package:driver_test_apps/core/extensions/build_context_ext.dart';

import 'package:flutter/material.dart';

import '../models/quiz_model.dart';
import '../pages/quiz_start_page.dart';

class QuizCard extends StatefulWidget {
  final QuizModel data;
  const QuizCard({super.key, required this.data});

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(QuizStartPage(data: widget.data));
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 17,
              offset: const Offset(0, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 166,
              width: 140,
              decoration: BoxDecoration(
                color: AppColors.primaryPurple.withOpacity(0.7),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(widget.data.image),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.data.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    widget.data.type,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Text(
                    widget.data.description,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
