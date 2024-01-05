import 'package:flutter/material.dart';

class EncyclopediaCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color textColor;
  final Color iconColor;
  final Function()? onTap;

  const EncyclopediaCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.textColor,
    required this.iconColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 70,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 20),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: iconColor,
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
