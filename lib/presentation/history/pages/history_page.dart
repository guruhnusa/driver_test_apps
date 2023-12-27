import 'package:driver_test_apps/core/components/custom_scaffold.dart';
import 'package:driver_test_apps/core/constant/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/history_cards.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
        showBackButton: false,
        appBarTitle: Text("History"),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Overview",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryYellow),
              ),
              SizedBox(height: 16),
              Expanded(
                child: HistoryCards(),
              ),
            ],
          ),
        ));
  }
}
