import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      appBarTitle: Text("About Us"),
      body: Center(
        child: Text("About Us"),
      ),
    );
  }
}
