import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:flutter/material.dart';

class TipsTrickPage extends StatefulWidget {
  const TipsTrickPage({super.key});

  @override
  State<TipsTrickPage> createState() => _TipsTrickPageState();
}

class _TipsTrickPageState extends State<TipsTrickPage> {
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      appBarTitle: Text("Tips & Trick"),
      body: Center(
        child: Text("Tips & Trick"),
      ),
    );
  }
}
