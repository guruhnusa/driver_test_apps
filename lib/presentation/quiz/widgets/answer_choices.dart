import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

enum AnswerCorrection { none, selected }

class AnswerChoices extends StatefulWidget {
  final String label;
  final void Function(String value) onChanged;
  final bool isSelected;
  final AnswerCorrection answerCorrection;

  const AnswerChoices({
    super.key,
    required this.label,
    required this.onChanged,
    this.isSelected = false,
    this.answerCorrection = AnswerCorrection.none,
  });

  @override
  State<AnswerChoices> createState() => _AnswerChoicesState();
}

class _AnswerChoicesState extends State<AnswerChoices> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onChanged(widget.label),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          color: widget.isSelected
              ? AppColors.primaryGreen.withOpacity(0.5)
              : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFF21205A),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
