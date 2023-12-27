import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:flutter/material.dart';

class EncyclopediaPage extends StatefulWidget {
  const EncyclopediaPage({super.key});

  @override
  State<EncyclopediaPage> createState() => _EncyclopediaPageState();
}

class _EncyclopediaPageState extends State<EncyclopediaPage> {
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      appBarTitle: Text("Encyclopedia"),
      body: Center(
        child: Text("Encyclopedia"),
      ),
    );
  }
}
