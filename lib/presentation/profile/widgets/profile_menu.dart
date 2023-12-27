import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData leading;
  final IconData trailing;
  final VoidCallback onTap;

  const ProfileMenu({
    Key? key,
    required this.title,
    required this.leading,
    required this.trailing,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leading),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Icon(trailing),
      onTap: onTap,
    );
  }
}
